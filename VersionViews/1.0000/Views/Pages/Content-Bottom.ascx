<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%
    var EnableOrderForm = SettingsManager.ContextSettings["Order.EnableOrderform", true];
    var ShowMobileOrderForm = SettingsManager.ContextSettings["FrameworkJS/CSS.DtmStyle.ShowOrderFormOnMobile", false];
    var renderOfferDetailsAboveAcceptOffer = SettingsManager.ContextSettings["Order.RenderOfferDetailsAboveAcceptOffer", false];
    if (string.Equals(DtmContext.PageCode, "OrderNow", StringComparison.InvariantCultureIgnoreCase) || DtmContext.Version == 3)
    {
%>

<main aria-label="Checkout" class="view defer defer--from-top">
    <div class="defer__progress">

        <div class="view order section">

            <div id="order" class="view__anchor"></div>

            <div class="view__in section__in top-bottom-padding @x2-pad center-text">
                <% Html.RenderSnippet("FORMTOP"); %>
            </div>

        </div>

        <div class="view c-brand section block white-background">

            <div class="view__in section__in u-mar--center">

                <% if (EnableOrderForm)
                    {
                %>

                <%-- // Displays the order form --%>
                <% Html.RenderPartial("OrderForm", Model); %>

                <%
                    }
                    else
                    {
                            %>

                <%-- // Displays the out of stock text --%>
                <% Html.RenderPartial("OutOfStock", Model); %>

                <% } %>

            </div>
        </div>

    </div>
</main>

<% } %>
