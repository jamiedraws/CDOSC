<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>    

<%
var ext = DtmContext.ApplicationExtension;
var cov = String.Format("/{0}/{1}/", DtmContext.OfferCode, DtmContext.Version);
var productName = SettingsManager.ContextSettings["Label.ProductName"];
var orderLink = String.Format("{0}Checkout{1}#order", cov, ext);
%>

<main id="main" class="hero" aria-labelledby="oxi-title">
    <div class="hero__group">
        <div class="hero__text">
            <h1 id="oxi-title" class="text-wrap hero__title">
                <span class="hero__title-first-line">OxiClean</span>
                <span>Refillable Cleaner&trade;</span>
            </h1>
            <h2 class="hero__tagline">
                Powerful Clean. Less Waste.&trade;
            </h2>
            <div class="hero__offer">
                <div class="offer">
                    <span class="offer__price">$9.99</span>
                    <span class="offer__shipping">+FREE SHIPPING</span>
                </div>
                <a href="<%= orderLink %>" id="hero-btn" class="button button--order button--capsule">Buy Now</a>
            </div>
        </div>
        <div class="hero__includes">
            <h3>Includes:</h3>
            <ul class="checklist">
                <li>Reusable spray bottle</li>
                <li>Citrus Fresh refill paks (2 fills)</li>
                <li>Powerful all-purpose formula</li>
            </ul>
        </div>
        <div class="hero__image">
            <div class="hero__callout">
                <span>Uses</span> 
                <strong>80%</strong> 
                <span>Less Plastic<sup>*</sup></span>
                <div class="hero__tagline text-wrap">
                    <span>Powerful Clean. </span>
                    <span>Less Waste.&trade;</span>
                </div>
            </div>
            <img class="hero__image-desktop" src="/images/desktop/hero-bg-beautyshot.jpg" alt="Spraying OxiClean over a kitchen counter" class="contain contain--hero-desktop">
            <img class="hero__image-mobile" src="/images/mobile/hero.jpg" alt="Spraying OxiClean over a kitchen counter"  class="contain contain--hero-mobile">
            <small class="hero__disclaimer">
                *Refill canister vs. Scrub Free 32oz bottle
            </small>
        </div>
    </div>
</main>