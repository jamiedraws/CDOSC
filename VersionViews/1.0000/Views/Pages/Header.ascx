<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var version = DtmContext.Version;
    var isIndex = DtmContext.PageCode == "Index";
    var isMobile = DtmContext.IsMobile;
    var isDesktop = !isMobile;
    var isFAQ = DtmContext.PageCode == "FAQ";
    var isPaymentPage = DtmContext.PageCode == "PaymentForm" || DtmContext.PageCode == "ProcessPayment";
    var isStartPage = DtmContext.Page.IsStartPageType && !isPaymentPage;
    var isOrderPage = string.Equals(DtmContext.PageCode, "OrderNow", StringComparison.InvariantCultureIgnoreCase);
    var brandName = SettingsManager.ContextSettings["Label.BrandName"];
    var productAttributeName = SettingsManager.ContextSettings["Label.ProductName"];
    var productName = productAttributeName;

    var hashIndex = "#main";
    var hashHow = "#how-it-works";
    var hashReviews = "#reviews";
    var hashFAQ = hashIndex;

    var linkIndex = isIndex ? hashIndex : String.Format("Index{0}", DtmContext.ApplicationExtension);
    var linkHow = isIndex ? hashHow : String.Format("Index{0}{1}", DtmContext.ApplicationExtension, hashHow);
    var linkReviews = isIndex ? hashReviews : String.Format("Index{0}{1}", DtmContext.ApplicationExtension, hashReviews);
    var linkFAQ = isFAQ ? hashFAQ : String.Format("FAQ{0}{1}", DtmContext.ApplicationExtension, hashFAQ);
    var linkCheckout = "#checkout";

    var logo = string.Format(@"
        <picture class=""contain contain--logo"">
            <img src=""/images/logo.png"" alt=""{0} {1}"">
        </picture>", brandName, productName);

    var navLogo = string.Format(@"
        <picture class=""contain contain--logo-mobile"">
            <img src=""/images/logo-mobile.png"" alt=""{0} {1}"">
        </picture>", brandName, productName);

    if (isStartPage)
    {
        var logoContainer = @"<a href=""{0}"" id=""{2}"" class=""{3} logos"">{1}</a>";

        logo = string.Format(logoContainer, linkIndex, logo, "header-logo", "header__logo");
        navLogo = string.Format(logoContainer, linkIndex, navLogo, "nav-logo", "nav__logo");
    } else
    {
        var logoContainer = @"<div class=""logos"">{0}</a>";

        logo = string.Format(logoContainer, logo);
        navLogo = string.Format(logoContainer, logo);
    }

    var headerTitle = String.Format(@"
        <span>
          <strong>OXICLEAN REFILLABLE</strong><br>
          <strong>CLEANING SYSTEM</strong>  
        </span>
        <small>Powerful Clean. Less Waste.</small>
    ", productAttributeName);
    var headerClasses = "header__group";
    var navParentClasses = "nav--banner";
    var navClasses = "nav__group";

    if (!isStartPage)
    {
        headerTitle = string.Empty;
        headerClasses = String.Format("{0} header__center", headerClasses);
        navParentClasses = "";
    }

    if (!DtmContext.Page.IsStartPageType || isPaymentPage)
    {
        navClasses = String.Format("{0} nav__center", navClasses);
    }
%>

<header aria-labelledby="header-title" class="view header section @print-only-hide">
  <div class="view__in header__in section__in">
    <div class="<%= headerClasses %>">
      <%= logo %>
      <h1 id="header-title" class="header__title title title--main"><%= headerTitle %></h1>
    </div>
  </div>
</header>