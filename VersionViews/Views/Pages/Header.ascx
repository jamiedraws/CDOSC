<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<% 
    var productName = SettingsManager.ContextSettings["Label.ProductName"];
    var isStartPage = DtmContext.Page.IsStartPageType;
    var isIndex = DtmContext.PageCode == "Index";

    var skipLink = "#main";
    var showSkipLink = false;
    var showFingerPrint = true;

    if (DtmContext.Page.PageType.Equals("upsell", StringComparison.InvariantCultureIgnoreCase))
    {
        skipLink = "#upsellTxt";
    } else if (!DtmContext.Page.IsStartPageType)
    {
        skipLink = "#content_top";
    }

    // content
    var title = "<span>Powerful Spinning Mop Cleans YOUR</span> <span>Home with 2 Spinning Mop Heads!</span>";

    var showPromoBanner = true;
    var bannerClasses = "banner banner--sticky";
    if (DtmContext.PageCode == "FAQ") {
        bannerClasses = "banner";
    }

    var ext = DtmContext.ApplicationExtension;
    var cov = String.Format("/{0}/{1}/", DtmContext.OfferCode, DtmContext.Version);

    var linkShop = String.Format("{0}Checkout{1}#order", cov, ext);

%>

    <% if (showPromoBanner && DtmContext.Page.IsStartPageType ) { %>
    <div class="<%= bannerClasses %>">
        <strong class="banner__callout">SAVE 20%</strong> On Your Order Today with Promo Code: <span class="banner__callout">SAVE20</span>
    </div>
    <% } %>
	<header id="nav" class="view header header--banner section @print-only-hide">
        <% if (showSkipLink) { %>
        <span class="skip-link">
            <a href="<%= skipLink %>" class="skip-link__button" id="skip-link"><span>Skip To Main Content?</span></a>
        </span>
        <% } %>

        <% if (isIndex && showFingerPrint) { %>
        <nav class="fp-nav" aria-label="Quick shortcut to order online or watch the product video">
            <a href="<%= linkShop %>" class="fp-nav__a fp-nav__a--order">
                <span>Buy <br />Now</span>
            </a>
            <a href="#why-we-care" class="fp-nav__a fp-nav__a--short">
                <span>Videos</span>
            </a>
        </nav>
        <% } %>

		<div class="view__in header__in">

            <div class="header__group">
                <%
                    var logoAttributes = @"class=""header__logo contain contain--logo""";
                    if (!isIndex) {
                        logoAttributes = string.Format(@"href=""index{0}"" {1}", DtmContext.ApplicationExtension, logoAttributes);
                    }

                    var logo = string.Format(@"
	                <{0} {1}><img src=""/images/oxi-logo.png"" alt=""{2}""></{0}>
                    ", isIndex ? "span" : "a", logoAttributes, productName); 
                %>
	            <%= logo %>

                <%--<div class="header__title">
                    <%= title %>
                </div>--%>

                <% if (isStartPage) { %>
                <%--<div class="header__button">
	                <a href="#order" aria-label="Order <%= productName %> online" class="button button--flat button--order button--capsule button--capsule--circular">
                        <span>Order Now</span>
	                </a>
                </div>--%>
                <% } %>

                <%= Html.Partial("Nav") %>
            </div>

		</div>

	</header>

