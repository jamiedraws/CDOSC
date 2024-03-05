<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%-- Html.Partial("CSS.Module.ARP") --%>
<%= Html.Partial("GetPaymentIconStyles") %>

<link rel="prefetch" href="/images/desktop/hero-bg-beautyshot.jpg">
<link rel="prefetch" href="/images/mobile/hero.jpg">

<!-- might need to replace source sans pro with source sans variable -->
<link rel="stylesheet" href="https://use.typekit.net/cuk4kax.css">
<link rel="stylesheet" href="/css/style-11222021JWG-V1.css" />
<%-- style block head for any overrides --%>
<% Html.RenderSnippet("STYLE-BLOCK-HEAD"); %>

<% var hasSlide = true; %>

<% if (DtmContext.Page.IsStartPageType)
    { %>
    <script defer src="/js/app.js"></script>
    <!--<script defer src="/js/observer.js"></script>-->
    <script defer src="/js/2.0000/application-11222021JWG-V1.es5.js"></script>
    <script defer src="/js/lazy.js"></script>
    <script defer src="/js/page.js"></script>
<% }
    else if (DtmContext.PageCode == "Confirmation")
    {%>
    <script defer src="/js/app.js"></script>
    <script defer src="/js/page.js"></script>
    <%}%>

<% if (DtmContext.PageCode == "Index" && hasSlide) { %>
    <script defer src="/js/slide/slide.js"></script>
    <script defer src="/js/slide/components/slide.thumbnails.js"></script>
    <script defer src="/js/slide/components/slide.a11y.js"></script>
    <script defer src="/js/carousel.js"></script>
<% } %>