<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%
	var productName = SettingsManager.ContextSettings["Label.ProductName"];
	var EnableOrderForm = SettingsManager.ContextSettings["Order.EnableOrderform", true];
    var EnableBackOrderMessage = SettingsManager.ContextSettings["Order.EnableBackOrderMessage", true];
	var renderOfferDetailsAboveAcceptOffer = SettingsManager.ContextSettings["Order.RenderOfferDetailsAboveAcceptOffer", false];
	var ShowMobileOrderForm = SettingsManager.ContextSettings["FrameworkJS/CSS.DtmStyle.ShowOrderFormOnMobile", false];
%>

	<section aria-label="Order form" id="content_bottom_custom" class="view c-brand order section">
        <div class="view__anchor" id="order"></div>

		<div class="view__in section__in">

            <div class="order__group">

			<% if ( EnableOrderForm ) { %>

				<%-- // Displays the order form --%>
				<% Html.RenderPartial("OrderForm", Model); %>

				<%-- // Displays the form product --%>
				<div class="order__offer-image">

					<picture class="contain contain--order-image" data-src-img="/images/desktop/form-product.png" data-attr='{ "alt" : "" }'></picture>

				</div>

			<% } else if (!EnableOrderForm && EnableBackOrderMessage ){ %>

				<%-- // Displays the out of stock text --%>
				<% Html.RenderPartial("OutOfStock", Model); %>

			<% } %>

            </div>

				<%-- // Displays the offer details on desktop --%>
				<% if ( EnableOrderForm && !Model.IsMobile  && !renderOfferDetailsAboveAcceptOffer) { %>

					<div class="view__in section__in no-shadow">

						<div class="snippet--od l-disclaimer o-box u-mar--center">

							<% Html.RenderSnippet("OFFERDETAILS"); %>

						</div>

					</div>

				<% } %>

		</div>

	</section>


	<%-- // Displays the offer details on mobile --%>
	<% if ( EnableOrderForm && Model.IsMobile && !renderOfferDetailsAboveAcceptOffer) { %>

    <section aria-label="Offer details" class="view section offer-details">

        <div class="view__in section__in no-shadow">
		    <div class="c-brand o-box">

			    <% Html.RenderSnippet("OFFERDETAILS"); %>

		    </div>
        </div>

    </section>

	<% } %>

