<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var productName = SettingsManager.ContextSettings["Label.ProductName"];
    var ext = DtmContext.ApplicationExtension;

    var renderFooter = false;
    var classes = "";
    
    var renderFooterValue = ViewData["renderFooter"] as string ?? "True";
    if (renderFooterValue == "True") {
        classes = "l-footer";
    }
    Boolean.TryParse(renderFooterValue, out renderFooter);
    var labelCategory = ViewData["labelCategory"] as string ?? "Footer";
    var id = labelCategory.Replace(" ", "-").ToLower();

    var isIndex = DtmContext.PageCode == "Index";

    var cov = String.Format("/{0}/{1}/", DtmContext.OfferCode, DtmContext.Version);

    var linkShop = String.Format("{0}Checkout{1}#order", cov, ext);
    if (DtmContext.PageCode == "Checkout") {
        linkShop = "#order";
    }
%>

<% if (DtmContext.Page.IsStartPageType) { %>
<nav class="<%= classes %>" aria-label="<%= String.Format("{0} {1}", labelCategory, "Offer information") %>">

    <ul>
  
        <!-- // Home -->
        <li>
            <a href="Index<%= ext %>" title="Home | <%= productName %>">Home</a>
        </li>

        <!-- // Contact Us -->
        <li>
            <a href="https://www.oxiclean.com/en/contact-us" target="_blank" title="Contact Us | <%= productName %>">Contact Us</a>
        </li>

        <!-- // Shipping Policy -->
        <li>
            <a href="Return-Policy<%= ext %>" title="Shipping Policy | <%= productName %>">Shipping and Returns</a>
        </li>

        <!-- // Privacy Policy -->
        <li>
            <a href="https://churchdwight.com/privacy-policy.aspx" target="_blank" title="Privacy Policy | <%= productName %>">Privacy Policy</a>
        </li>

        <!-- // Terms of Service -->
        <li>
            <a href="Terms<%= ext %>" title="Terms of Service | <%= productName %>">Terms of Service</a>
        </li>

        <!-- // FAQs -->
        <li>
            <a href="FAQ<%= ext %>" title="FAQs | <%= productName %>">FAQs</a>
        </li>

        <% if (renderFooter) { %>
        <!-- // Sitemap -->
        <li>
            <a href="Sitemap<%= ext %>" title="Site Map | <%= productName %>">Site Map</a>
        </li>

        <!-- // Order Now -->
        <li>
            <a href="<%= linkShop %>" title="Order <%= productName %> Now" class="c-list__link">Order Now</a>
        </li>
        <% } %>

    </ul>

</nav>
<% } %>

<% if (renderFooter) { %>
<address class="u-pad--vert">&copy;<%= DateTime.Now.ToString("yyyy") %> <%= productName %>. All Rights Reserved.</address>

<p><% Html.RenderSnippet("COMMON-FOOTER"); %></p>
<% } %>