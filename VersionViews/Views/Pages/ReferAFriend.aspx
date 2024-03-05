<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<ClientSiteViewData>" %>

<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <% 
        var ext = DtmContext.ApplicationExtension;
        var cov = String.Format("/{0}/{1}/", DtmContext.OfferCode, DtmContext.Version);
        var productName = SettingsManager.ContextSettings["Label.ProductName"];
        var orderLink = String.Format("{0}Checkout{1}#order", cov, ext);
%>
   
    <%= Html.Partial("Hero") %>

    <%= Html.Partial("ReferAFriendForm") %>


</asp:Content>