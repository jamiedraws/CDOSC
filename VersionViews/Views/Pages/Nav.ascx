<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var brandName = SettingsManager.ContextSettings["Label.BrandName"];
    var productName = SettingsManager.ContextSettings["Label.ProductName"];
    var isIndex = DtmContext.PageCode == "Index";

    var hashHome = "#main";
    var hashHow = "#how-it-works";
    var hashAbout = "#about";
    var hashUses = "#uses";
    var hashVideo = "#why-we-care";

    var ext = DtmContext.ApplicationExtension;
    var cov = String.Format("/{0}/{1}/", DtmContext.OfferCode, DtmContext.Version);

    var linkHome = isIndex ? hashHome : String.Format("{0}Index{1}", cov, ext);
    var linkHow = !isIndex ? String.Format("{0}{1}", linkHome, hashHow) : hashHow;
    var linkAbout = !isIndex ? String.Format("{0}{1}", linkHome, hashAbout) : hashAbout;
    var linkUses = !isIndex ? String.Format("{0}{1}", linkHome, hashUses) : hashUses;
    var linkVideo = !isIndex ? String.Format("{0}{1}", linkHome, hashVideo) : hashVideo;
    var linkFAQS = String.Format("{0}FAQ{1}", cov, ext);
    var linkShop = String.Format("{0}Checkout{1}#order", cov, ext);
    if (DtmContext.PageCode == "Checkout") {
        linkShop = "#order";
    }
    var logoClasses = "nav__logo";

    var logo = String.Format(@"
        <a href=""{0}"" id=""header-logo"" class=""{2}"" aria-label=""{1}"">
            <div class=""nav__logo logo"">
                <picture class=""contain contain--logo"">
                    <img src=""/images/oxi-logo.png"" alt=""OxiClean&trade; All Purpose Cleaning System"">
                </picture>
            </div>
        </a>
        ",
    linkHome, productName, logoClasses);
%>

<% if (DtmContext.Page.IsStartPageType) { %>
<button type="button" class="nav__label" id="nav__toggle" aria-label="Toggle Menu">
    <span></span>
</button>
<div class="nav__underlay nav__underlay--for-drawer" role="presentation" aria-label="Hide Menu"></div>

<nav aria-label="Website page links" class="nav__pane">
    <div class="nav__group">
        <div class="nav__list nav__tier-first">
            <% logo = logo.Replace("nav-logo", "nav-list-logo"); %>
            <%= logo %>

            <a class="nav__link" href="<%= linkHome %>" id="nav-home" aria-label="Home">
                <span>Home</span>
            </a>
            <a class="nav__link" href="<%= linkHow %>" id="nav-how" aria-label="How <%= brandName %> Works">
                <span>How It Works</span>
            </a>
            <a class="nav__link" href="<%= linkAbout %>" id="nav-about" aria-label="About <%= brandName %>">
                <span>About</span>
            </a>
            <a class="nav__link" href="<%= linkUses %>" id="nav-uses" aria-label="Uses for <%= brandName %>">
                <span>Uses</span>
            </a>
            <a class="nav__link" href="<%= linkVideo %>" id="nav-video" aria-label="Video for <%= brandName %>">
                <span>Videos</span>
            </a>
            <a class="nav__link" href="<%= linkFAQS %>" id="nav-faqs" aria-label="Frequently Asked Questions">
                <span>FAQS</span>
            </a>
            <a class="nav__link nav__link--icon" href="<%= linkShop %>" id="nav-shop" aria-label="Shop <%= brandName %> Products">
                <span>Shop</span> <svg class="icon icon--cart"><use href="#icon-cart"></use></svg>
            </a>
        </div>
    </div>
</nav>
<% } %>
