<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

	<footer class="view footer section @print-only-hide bg bg--color-footer">
        <div class="view__in section__in">
            <%
                if (DtmContext.Page.IsStartPageType)
                {
                    Html.RenderPartial("SitemapList");
                    Html.RenderPartial("Scripts");
                    Html.RenderSnippet("ORDERFORMSCRIPT");
                }

                Html.RenderSnippet("COMMON-FOOTER");
            %>
	        <%= Model.FrameworkVersion %>

	        <div class="l-controls">
		        <% Html.RenderSiteControls(SiteControlLocation.ContentTop); %>
		        <% Html.RenderSiteControls(SiteControlLocation.ContentBottom); %>
		        <% Html.RenderSiteControls(SiteControlLocation.PageBottom); %>
	        </div>
        </div>
	</footer>