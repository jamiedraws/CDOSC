<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%@ Import Namespace="CDOSC.Models" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<% 
    var ext = DtmContext.ApplicationExtension;
    var cov = String.Format("/{0}/{1}/", DtmContext.OfferCode, DtmContext.Version);
    var productName = SettingsManager.ContextSettings["Label.ProductName"];
    var orderLink = String.Format("{0}Checkout{1}#order", cov, ext);
%>

<%= Html.Partial("Hero") %>

<section class="view section section--graphic bg--circle bg--image" aria-labelledby="about-title">
    <span class="view__anchor" id="about"></span>
    <picture data-src-img="/images/desktop/bkg-circle.jpg" data-attr='{ "alt" : "" }' class="bg__image contain contain--bkg-circle-desktop bg__show-desktop"></picture>
    <picture data-src-img="/images/mobile/bkg-circle.jpg" data-attr='{ "alt" : "" }' class="bg__image contain contain--bkg-circle-mobile bg__show-mobile"></picture>
    <div class="view__in section__in">
        <div class="section__block">
            <h3 class="title title--accent title--oxiclean" id="about-title">
                <span>The Power Of</span>
                <picture class="contain contain--oxi-logo" data-src-img="/images/oxiclean.svg" data-attr='{ "alt" : "Oxiclean" }'></picture>
            </h3>
            <picture class="title--img hide" data-src-img="/images/mobile/oxiclean-power-logo.png" data-attr='{ "alt" : "The Power Of Oxiclean" }'></picture>
            <div class="group group--graphics white-text">
                <figure>
                    <div class="contain contain--grease graphic">
                        <picture data-src-img="/images/graphics/grease-and-oil.png" data-attr='{ "alt" : "Graphic of oil spill" }'></picture>
                    </div>
                    <figcaption><strong>Cuts Grease &amp; Oil</strong> for tough kitchen messes</figcaption>
                </figure>
                <figure>
                    <div class="contain contain--soap-scum graphic">
                        <picture data-src-img="/images/graphics/soap-scum.png" data-attr='{ "alt" : "Graphic of hand wiping tile" }'></picture>
                    </div>
                    <figcaption><strong>Dissolves Soap Scum</strong> on counters, tubs, and tile</figcaption>
                </figure>
                <figure>
                    <div class="contain contain--dirt graphic">
                        <picture data-src-img="/images/graphics/dirt-and-grime.png" data-attr='{ "alt" : "Graphic of a pile of dirt" }'></picture>
                    </div>
                    <figcaption><strong>Destroys Dirt &amp; Grime</strong> from high-traffic counters,<br> appliances &amp; furniture</figcaption>
                </figure>
            </div>
        </div>
        <div class="section__block">
            <h3 class="title title--primary">
                Less Waste
            </h3>
            <div class="group group--graphics graphics--waste">
                <figure>
                    <picture data-src-img="/images/graphics/less-plastic.svg" data-attr='{ "alt" : "?No more plastic bottles" }' class="contain contain--square"></picture>
                    <figcaption><strong>80% Less Plastic*</strong>
                        Each time you refill - nice!
                        <small>*refill canisters vs. Scrub Free 32oz bottle</small>
                        </figcaption>
                </figure>
                <figure>
                    <picture data-src-img="/images/graphics/fewer-trucks.svg" data-attr='{ "alt" : "No more truck emissions" }' class="contain contain--square"></picture>
                    <figcaption><strong>85% Fewer Trucks*</strong>
                        Less weight &amp; less packaging means fewer trucks on the road
                        <small>*to transport equivalent refill volume without water</small> 
                    </figcaption>
                </figure>
                <figure>
                    <picture data-src-img="/images/graphics/zero-waste.svg" data-attr='{ "alt" : "No more bags of garbage" }' class="contain contain--square"></picture>
                    <figcaption><strong>Zero Waste Refills*</strong>
                        Dissolves completely with <br>nothing to throw away
                        <small>*when used as directed</small>       
                    </figcaption>
                </figure>
            </div>
        </div>
        <a href="<%= orderLink %>" id="waste-btn" class="button button--capsule button--larger">Buy Now</a>
    </div>
</section>

<section class="view section bg bg--blue" aria-label="Compare how much you get">
    <div class="view__in section__in">
        <h3 class="title title--accent title--concentrated-power" id="concentrated-power-title">
            Concentrated Power
         </h3>
        <div class="comparison">
            <figure class="comparison__refills">
                <picture data-src-img="/images/concentrated-refills.png" data-attr='{ "alt" : "OxiClean&trade; Concentrated Paks container" }' class="contain contain--concentrated-refills"></picture>
                <figcaption>
                    Concentrated <br>
                    Paks
                </figcaption>
            </figure>
            <div class="comparison__equals">=</div>
            <figure class="comparison__bottles">
                <picture data-src-img="/images/two-bottles.png" data-attr='{ "alt" : "2 spray bottles" }' class="contain contain--two-bottles"></picture>
                <figcaption>
                    2 Bottles
                </figcaption>
            </figure>
        </div>
        <div class="quotes">
            <%
                var reviews = new List<Review>
                {
                    new Review
                    {
                        Reviewer = "Missy Indiana",
                        Stars = 5,
                        Headline = "helping the environment while it cleans great",
                        ReviewCopy = "I loved the oxiclean all purpose refillable cleaner. I was very surprised how well this clean my kitchen counters and sink. The best part is helping the environment and use less waste and I don't have alot of storage at my house so saves on storage space. I will buy this again!"
                    },
                    new Review
                    {
                        Reviewer = "Tawanna D Elizabeth, NJ",
                        Stars = 5,
                        Headline = "Great degreaser",
                        ReviewCopy = "I received this as a sample for being a part of the oxiclean fan community. This is a very great degreaser. I used it for my microwave and it left no streaks. Some hot water and two packets does the trick! I can't wait to get more of this product. "
                    },
                    new Review
                    {
                        Reviewer = "Lori B Reading, PA",
                        Stars = 5,
                        Headline = "Great multi-purpose cleaner",
                        ReviewCopy = "This product is great! First of all, I love the scent. It is very light and refreshing. I love that I can reuse the bottle and save some trash from filling up landfills. It was very easy to add the little packs and add water."
                    },
                    new Review
                    {
                        Reviewer = "Megan D Illinois",
                        Stars = 5,
                        Headline = "great cleaner",
                        ReviewCopy = @"Great cleaner and like that it is refillable and reusable. It is very easy to ""make"" and works really well. I would recommend this to family and friends."
                    },
                    new Review
                    {
                        Reviewer = "Suzanne North Carolina",
                        Stars = 5,
                        Headline = "Fresh scent, easy to fill bottle",
                        ReviewCopy = "Nice fresh citrus scent. Works well to remove everyday messes from counters and appliances. Love the concentrated packets of product and empty bottle - just add water and you&rsquo;re all set! I order a lot of my cleaning products online and have had multiple issues with products leaking during shipping. This packaging solves that problem!"
                    },
                    new Review
                    {
                        Reviewer = "Sammy38 San Jose, California",
                        Stars = 5,
                        Headline = "Great all purpose cleaner refillable!",
                        ReviewCopy = "The brand i trust when it comes of cleaning products, this new all purpose cleaner refillable product from Oxiclean is a must in our household, so easy to refil works perfectly and removes germs and bacteria and at the same time your helping the Mother Earth. I think every company should think this way!"
                    },
                    new Review
                    {
                        Reviewer = "Kaitlyn",
                        Stars = 5,
                        Headline = "what a concept!",
                        ReviewCopy = "I love the convenience of the capsules that drop into a reusable spray bottle. They also smell great! Sometimes products leave a film on surfaces... these do not. I would undoubtedly purchase this product to use again."
                    },
                    new Review
                    {
                        Reviewer = "JapanKorea",
                        Stars = 4,
                        Headline = "Cool product",
                        ReviewCopy = "I got this product for free in order for an honest review. This such an innovative product. The way two paks can create a all purpose cleaner is so cool. You literally just need water and it does the job. It cleans beautifully and leaves no strans. The smell is not overpowering"
                    },
                    new Review
                    {
                        Reviewer = "Brianna Illinois",
                        Stars = 5,
                        Headline = "Innovative",
                        ReviewCopy = "I have never seen a cleaning product that is so innovative. I love the idea of cutting down on waste and refilling the bottle with pods & water. The product smells amazing and gives a streak-free shine to all my surfaces. It even cut grease and grime on my gas stove! I will definitely be purchasing more."
                    }
                };
            %>
            <div class="section__block carousel slide slide--no-scrollbar">
                <nav aria-label="Previous and next slides for real customer stories" class="carousel__nav slide__nav">
                    <button
                        id="customer-stories-slide-prev"
                        aria-label="Select the previous slide"
                        class="slide__prev"
                        type="button">
                        <svg class="icon icon--chevron">
                            <use href="#icon-chevron"></use></svg>
                    </button>
                    <button
                        id="customer-stories-slide-next"
                        aria-label="Select the next slide"
                        class="slide__next"
                        type="button">
                        <svg class="icon icon--chevron">
                            <use href="#icon-chevron"></use></svg>
                    </button>
                </nav>
                <div id="real-customer-stories-carousel" class="carousel__into slide__into">
                    <% 
                        foreach (var review in reviews)
                        {
                            %>
                            <figure class="carousel__item slide__item review">
                                <div class="review__stars stars">
                                    <div class="stars__group">
                                        <% for (int star = 0; star < review.Stars; star++) { %>
                                            <svg class="stars__icon contain contain--star"><use href="#star"></use></svg>
                                        <% } %>
                                    </div>
                                </div>
                                <blockquote class="carousel__view">
                                    <div class="review__headline"><%= review.Headline %></div>
                                    <p class="review__copy"><%= review.ReviewCopy %></p>
                                </blockquote>
                                <figcaption><%= review.Reviewer %></figcaption>
                            </figure>
                            <%
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="view section section--graphic bg--blue-circle bg--clip-path" aria-labelledby="revolution-title">
    <span class="view__anchor" id="how-it-works"></span>
    <div class="view__in section__in">
        <div class="section__block">
            <h3 class="title title--accent" id="revolution-title">
               Refillable Is Revolutionary
            </h3>
            <div class="group group--graphics group--accent white-text">
                <figure>
                    <picture data-src-img="/images/graphics/replace.png" data-attr='{ "alt" : "Adding product to spray bottle" }'></picture class="contain contain--square">
                        <figcaption>
                            <strong>Place</strong> Add 2 Paks to Bottle
                        </figcaption>
                </figure>
                <figure>
                    <picture data-src-img="/images/graphics/refill.png" data-attr='{ "alt" : "Refilling a bottle from a faucet" }'></picture class="contain contain--square">
                    <figcaption>
                        <strong>Refill</strong> Fill to Line with Warm Water
                    </figcaption>
                </figure>
                <figure>
                    <picture data-src-img="/images/graphics/reuse.png" data-attr='{ "alt" : "Spraying the bottle" }'></picture class="contain contain--square">
                    <figcaption>
                        <strong>Reuse</strong> Twist on Sprayer, Dissolve, Shake, Go!
                    </figcaption>
                </figure>
            </div>
        </div>
        <p class="section__disclaimer">
            KEEP PAKS OUT OF REACH OF CHILDREN
        </p>
    </div>
</section>

<section id="uses" class="view section section--graphic section--no-top" aria-labelledby="materials-title">
    <div class="view__in">
        <h3 class="title title--primary" id="materials-title">
            ALL PURPOSE & MULTI-SURFACE
        </h3>
        <p class="material-disclaimer--desktop">
            Safely removes dirt, grease, grime and soap scum from the following surfaces:
        </p>
        <div class="bg--blue">
            <div class="section__in">
                <div class="group group--materials">
                    <picture data-src-img="/images/product-in-use.jpg" data-attr='{ "alt" : "Cleaning the oven with OxiClean" }' class="contain contain--product-in-use"></picture>
                    <div class="group__item">
                        <p class="material-disclaimer--mobile">
                            Safe to use throughout your home.
                        </p>
                        <div class="materials-list checklist">
                            <ul>
                                <li>Countertops</li>
                                <li>Stovetops</li>
                                <li>Sinks</li>
                                <li>Appliance exteriors</li>
                                <li>Cabinets</li>
                                <li>Floors</li>
                                <li>Washable walls</li>
                                <li>Glazed tile</li>
                                <li>Showers</li>
                                <li>Glass</li>
                                <li>Laminate</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <a href="<%= orderLink %>" id="materials-btn" class="button button--capsule button--alt button--larger">Buy Now</a>
            <p class="section__warning">
                Not recommended for use on unsealed, porous surfaces, like marble
            </p>
        </div>
        
    </div>
</section>

<section class="view media-player section section--center" aria-labelledby="why-we-care">
    <span class="view__anchor" id="why-we-care"></span>
    <h3 class="title title--primary">Why We Care</h3>
    <div class="vimeo-player-button vimeo-player-button--fullscreen">
        <div id="video" class="contain contain--video vimeo-poster-player" data-src-iframe="https://player.vimeo.com/video/636954541?autoplay=0&title=0&byline=0&portrait=0">
            <iframe id="media-video" src="about:blank" title="OxiClean Video" allow="autoplay;fullscreen"></iframe>
        </div>
        <button class="vimeo-player-button__play" disabled aria-label="Play video" aria-controls="video"></button>
    </div>
    <div class="playlist-buttons">
        <button type="button" data-media-player-video-id="636954541" aria-controls="media-video" class="button button--capsule button--larger">WHY WE CARE VIDEO</button>
        <button type="button" data-media-player-video-id="646640136" aria-controls="media-video" class="button button--capsule button--larger">How To Video</button>
    </div>
</section>

</asp:Content>


