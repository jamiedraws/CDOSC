<%@ Page Language="C#" MasterPageFile="~/VersionViews/1.0000/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<%
    var brandName = SettingsManager.ContextSettings["Label.BrandName"];
    var productName = SettingsManager.ContextSettings["Label.ProductName"];
%>

<div aria-label="<%= productName %>" class="view view--position-context hero section">
    <div id="main" class="view__anchor"></div>

    <div class="view__in section__in hero__in">

        <div class="hero__group">

            <div class="hero__details border">

                <div class="hero__price">
                    <%= Html.Partial("Offer", new ViewDataDictionary {
                        { "dollar", "9" },
                        { "cent", "99" },
                        { "standfirst", "As Low As" },
                        { "standlast", "" },
                        { "label", "As Low As $9.99" }
                    }) %>
                    <a href="/<%=DtmContext.OfferCode %>/<%=DtmContext.Version %>/OrderNow<%= DtmContext.ApplicationExtension %>" id="hero-order-btn" class="btn btn--order hero__btn">Order Now</a>
                </div>

                <div class="hero__copy">
                    <ul class="list list--checkmark-icon">
                        <li>Uses 80% Less Plastic</li>
                        <li>OxiClean&trade; Power and Versatility</li>
                        <li>Concentrated Paks = 2 Bottles</li>
                    </ul>
                </div>

            </div>
            
            <div class="hero__product">
                <picture class="contain contain--main">
                    <img src="/images/oxiclean-bottle.jpg" alt="<%= productName %>">
                </picture>
            </div>

        </div>
    </div>
</div>
            <% Html.RenderPartial("OrderForm"); %>


</asp:Content>