// components
import VimeoPlayerButton from "Shared/ts/components/vimeo-player-button";
import Nav from "Shared/ts/components/nav";
import Carousel from "Shared/ts/components/carousel";
import MediaPlayer from "Shared/ts/components/media-player";

// adapters
import SlideCarouselAdapter from "Shared/ts/api/carousel/slide/adapters/slide-carousel";
import VimeoMediaPlayerAdapter from "Shared/ts/api/media-player/vimeo-media-player";

// observers
import { observer } from "shared/ts/observers/intersection";

// utils
import LoadItem from "Shared/ts/utils/load-item";
import Player from "@vimeo/player";
import VimeoManager from "Shared/ts/utils/vimeo-manager";
import { elementExists } from "shared/ts/utils/html";
import CaptureElement from "Shared/ts/utils/capture-element";

new Nav("nav");

const vimeoManager = new VimeoManager();

const vimeoPosterImageRepository: Map<number, string> = new Map<
    number,
    string
>();

const vimeoPlayerButton = new VimeoPlayerButton({
    imageSpecs: {
        width: "1920",
        height: "1080",
        quality: "70"
    }
});

const createMediaPlayerByPlaceholder = (placeholder: Element): void => {
    const parent = placeholder.closest(`.media-player`);

    new MediaPlayer(new VimeoMediaPlayerAdapter(parent));
};

const updateImageBySource = (image: Element, source: string): void => {
    if (elementExists(image)) {
        image.setAttribute("src", source);
    }
};

const updateVimeoPosterImageById = (image: Element, id: number): void => {
    const poster = vimeoPosterImageRepository.get(id);

    if (!poster) {
        vimeoManager
            .generatePosterImage(id.toString(), vimeoPlayerButton.imageSpecs)
            .then((source) => {
                vimeoPosterImageRepository.set(id, source);
                updateImageBySource(image, source);
            });
    }

    if (poster) {
        updateImageBySource(image, poster);
    }
};

const updateVimeoPosterImageByPlayer = (
    poster: Element,
    player: Player
): void => {
    player.on("loaded", (data) => updateVimeoPosterImageById(poster, data.id));
};

vimeoPlayerButton.initializeOnCapture((response) => {
    const capturePlaceholder = new CaptureElement(response.placeholder);

    capturePlaceholder.subscribe("childList", (record) => {
        const image = Array.from(record.addedNodes).find(
            (node) => node.nodeName.toUpperCase() === "IMG"
        ) as Element;

        if (image) {
            capturePlaceholder.disconnect();
            updateVimeoPosterImageByPlayer(image, response.player);
        }
    });

    createMediaPlayerByPlaceholder(response.placeholder);
});

observer("[data-src-img]", {
    inRange: (record) => new LoadItem(record)
});

observer("[data-src-iframe]", {
    inRange: (record) => {
        new LoadItem(record, { tag: "iframe", src: "data-src-iframe" });
    }
});

observer(".slide", {
    inRange: (record) => {
        const carousel = new Carousel(new SlideCarouselAdapter(record));

        carousel.enablePrevNextControls();
    }
});
