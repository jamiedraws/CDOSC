<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<ClientSiteViewData>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<main aria-labelledby="main-title" class="view">
    <div id="main" class="view__anchor"></div>
    <div class="view__in">
      <div class="copy copy--article">
      
      <% 
            var title = Model.UpsellTitle ?? string.Empty;
            var text = Model.UpsellText ?? string.Empty;
            var hasTitle = !String.IsNullOrEmpty(title);
            var hasText = !String.IsNullOrEmpty(text);
            var isMobile = DtmContext.IsMobile;

            if (hasTitle)
            {
                %>
                <h1 id="main-title"><%= title %></h1>
                <%
            } else
            {
                %>
                <% Html.RenderSnippet("SUBPAGE-TITLE-" + DtmContext.PageCode); %>
                <%
            }

            if (hasText)
            {
                %>
                <%= text %>
                <%
            } else
            {
                Html.RenderSubPageContent(DtmContext.PageCode);
            }
        %>

    </div>
  </div>
</main>

</asp:Content>