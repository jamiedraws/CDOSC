<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var title = string.Format(@"
    <{0} class=""main-offer__title"">
        <span>Double </span>
        <strong>Offer!</strong>
    </{0}>
    ", DtmContext.PageCode == "Index" ? "h1" : "div");
    var productName = SettingsManager.ContextSettings["Label.ProductName"];
%>
<div class="main-offer">
    <b class="banner banner--ribbon">
        Special Limited Time Offer!
    </b>
    <div class="main-offer__group">
        <%= title %>
        <div class="sr main-offer__price">
            <div class="sr__text">
                Now Only 2 Payments Of $29.99 - Get the Second Set Half Off
            </div>
            <div
                class="offer"
                aria-hidden="true"
                role="presentation"
            >
                <span class="offer__standfirst">2 Payments Of</span>
                <span class="offer__group">
                    <span class="offer__currency">$</span>
                    <span class="offer__amt">29</span>
                    <span class="offer__follow">
                        <span class="offer__cent">99</span>
                        <!-- <span class="offer__disclaimer">
                            Get the 2nd Set &frac12; Off
                        </span> -->
                    </span>
                </span>
                <span class="offer__standlast">Get the 2nd Set &frac12; Off</span>
            </div>
            
        </div>
        <picture class="main-offer__shipping contain contain--shipping">
            <img
                src="/images/free-shipping.png"
                alt="Free Shipping"
            />
        </picture>
    </div>
    <div class="main-offer__payment">
        <a href="#order" class="button button--capsule button--flat button--order">
            <span>Order Now</span>
        </a>
        <%= Html.Partial("GetPaymentIcons") %>
        <picture class="main-offer__mbg contain contain--square">
            <img
                src="/images/mbg.png"
                alt="Money Back Guarantee"
            />
        </picture>
    </div>
                    
     <div class="main-offer__slide slide slide--fade slide--no-scrollbar">
        <div id="product-carousel" class="slide__into" data-slide-config='{ "auto" : true }'>
            <div class="slide__item slide__item--current">
                <picture
                    data-src-img="/images/slide-1.jpg"
                    data-attr='{ "alt" : "Contains 12 reusable pads (including 4 polishing pads, 4 microfiber pads, and 4 scouring pads" }'
                    class="contain contain--slide"
                ></picture>
            </div>
            <div class="slide__item">
                <picture
                    data-src-img="/images/slide-2.jpg"
                    data-attr='{ "alt" : "Scrubs, grabs and traps dirt and grime - USA based company - Over 100 million satisfied customers - Not available on Amazon" }'
                    class="contain contain--slide"
                ></picture>
            </div>
        </div>
    </div>

</div>