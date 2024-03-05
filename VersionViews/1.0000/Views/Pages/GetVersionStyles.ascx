<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>

<%
    Html.RenderPartial("ResourceManager", new ViewDataDictionary { { "preload", true } });
    Html.RenderPartial("ResourceManager");
    Html.RenderPartial("ResourceManager", new ViewDataDictionary { { "defer", true } });
%>

<style>
.dtm--subpage main {
    max-width: 980px;
    margin: 1em auto;
    padding: 1em;
    font-size: 1.8rem;
}
.dtm .dtm__in .subpage-text-nav {
    margin: 1em 0;
    display: block;
}
</style>

<noscript>
    <style>
        .defer::after {
            display: none;
        }

        .defer__progress {
            visibility: visible;
            opacity: 1;
        }
    </style>
</noscript>