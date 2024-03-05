<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var productName = SettingsManager.ContextSettings["Label.ProductName"];
    var ext = DtmContext.ApplicationExtension;

    var renderFooter = false;
    var renderFooterValue = ViewData["renderFooter"] as string ?? "False";
    Boolean.TryParse(renderFooterValue, out renderFooter);
    var labelCategory = ViewData["labelCategory"] as string ?? "Footer";
    var id = labelCategory.Replace(" ", "-").ToLower();

    var isIndex = DtmContext.PageCode == "Index";
    var isFAQ = DtmContext.PageCode == "FAQ";
    var isReviews = DtmContext.PageCode == "Testimonials" || DtmContext.PageCode == "Reviews";
    var isCustomerService = DtmContext.PageCode == "CustomerService";
    var isShippingPolicy = DtmContext.PageCode == "ShippingPolicy";
    var isReturnPolicy = DtmContext.PageCode == "ReturnPolicy";
    var isPrivacyPolicy = DtmContext.PageCode == "PrivacyPolicy";
    var isSecurityPolicy = DtmContext.PageCode == "SecurityPolicy";
    var isSitemap = DtmContext.PageCode == "Sitemap";

    var hashMain = "#main";
    var hashReviews = "#reviews";

    var linkIndex = isIndex ? hashMain : String.Format("Index{0}{1}", DtmContext.ApplicationExtension, hashMain);
    var linkReviews = isReviews ? hashReviews : String.Format("Reviews{0}{1}", DtmContext.ApplicationExtension, hashMain);
    var linkFAQ = isFAQ ? hashMain : String.Format("FAQ{0}{1}", DtmContext.ApplicationExtension, hashMain);
    var linkCustomerService = "https://www.armandhammer.com/en/contact-us";
    var linkShippingPolicy = isShippingPolicy ? hashMain : String.Format("Shipping-Policy{0}{1}", DtmContext.ApplicationExtension, hashMain);
    var linkReturnPolicy = isReturnPolicy ? hashMain : String.Format("Return-Policy{0}{1}", DtmContext.ApplicationExtension, hashMain);
    var linkSecurityPolicy = isSecurityPolicy ? hashMain : String.Format("Security-Policy{0}{1}", DtmContext.ApplicationExtension, hashMain);
    var linkPrivacyPolicy = "https://churchdwight.com/privacy-policy.aspx";
    var linkSitemap = isSitemap ? hashMain : String.Format("Sitemap{0}{1}", DtmContext.ApplicationExtension, hashMain);
    var linkTerms = isSitemap ? hashMain : String.Format("Terms{0}{1}", DtmContext.ApplicationExtension, hashMain);
%>

<nav aria-label="<%= String.Format("{0} {1}", labelCategory, "Offer information") %>">
    <ul class="list">
        <li>
            <a id="<%= id %>-home" href="<%= linkIndex %>" aria-label="Home">Home</a>
        </li>
        <li>
            <a id="<%= id %>-customer-service" href="<%= linkCustomerService %>" target="_blank">Contact Us</a>
        </li>
        <li>
            <a id="<%= id %>-shipping-return-policy" href="<%= linkReturnPolicy %>">Shipping and Return Policy</a>
        </li>
        <li>
            <a id="<%= id %>-privacy-policy" href="<%= linkPrivacyPolicy %>" target="_blank">Privacy Policy</a>
        </li>
        <% if (renderFooter)
         { %>
        <li>
            <a id="<%= id %>-sitemap" href="<%= linkSitemap %>" aria-label="View all pages" title="View all pages">Sitemap</a>
        </li>
        <li>
            <a id="<%= id %>-order" href="OrderNow<%= Model.Extension %>" aria-label="Order the <%= productName %>">Order Now</a>
        </li>
        <% } %>
    </ul>
</nav>