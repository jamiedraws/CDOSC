<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<div class="c-brand--form">

		<% using (Html.BeginForm()) { %>

			<% var renderOfferDetailsAboveAcceptOffer = SettingsManager.ContextSettings["Order.RenderOfferDetailsAboveAcceptOffer", false]; %>

        <%= Html.Partial("ViewSwitchLink") %>
        <div class="vse"><%= Html.ValidationSummary("The following errors have occurred:") %></div>
        <div class="hide" data-vse></div>




		<% Html.RenderSnippet("PRODUCTSELECTION"); %>






        <%= Html.Partial("OrderFormReviewTable", Model) %>



        <%-- // Indicate Requires Field --%>
        <p data-required class="u-mar--vert fn--center"><%= LabelsManager.Labels["RequiredFieldDisclaimer"] %></p>



        <div class="c-brand--form__group">



            <!-- // Column -->
            <div class="c-brand--form__col">

                <%-- // BEGIN #paymentForm --%>
                <fieldset class="c-brand--form__fieldset view__scroll">

                    <%-- // @PAYMENT HEADLINE --%>
                    <legend class="c-brand--form__legend">
                        <span class="c-brand--form__headline">
        					<b class="uppercase"><%= LabelsManager.Labels["PaymentStep"] %></b> <%= LabelsManager.Labels["PaymentHeadline"] %>
        				</span>
                    </legend>

                    
                    <ul class="c-brand--form__list">

                <%-- // @PAYMENT ICONS --%>
                <li class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label class="c-brand--form__cc--label @mv-o-grid--none o-grid__col @xs-u-vw--40 fn--right"></label>
                    <div id="cc" class="c-brand--form__field o-grid__col @xs-u-bs--reset @xs-u-vw--100"></div>
                </li>

                <%-- // @PAYMENT TYPE --%>
                <li id="CardTypeCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label for="CardType" data-required class="c-brand--form__label @mv-o-grid--none o-grid__col @xs-u-vw--40 fn--right">Type</label>
                    <%= Html.DropDownList("CardType", new[]
                            {
                              new SelectListItem { Text = "Visa", Value = "V"},
                              new SelectListItem { Text = "Mastercard", Value = "M"},
                              new SelectListItem { Text = "Discover", Value = "D"},
                              new SelectListItem { Text = "American Express", Value= "AX"}
						  }, new { @class = "c-brand--form__select o-box o-shadow u-vw--100 fx--animate" })
                    %>
                </li>

                <%-- // @PAYMENT NUMBER --%>
                <li id="CardNumberCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="CardNumberLabel" for="CardNumber" data-required class="c-brand--form__label @mv-o-grid--none o-grid__col @xs-u-vw--40 fn--right"><%= LabelsManager.Labels["CardNumber"] %></label>
                    <input id="CardNumber" name="CardNumber" type="tel" value="<%= ViewData["CardNumber"] %>" placeholder="<%= LabelsManager.Labels["CardNumberPlaceholder"] %>" aria-labelledby="CardNumberLabel" aria-required="true" class="c-brand--form__input o-grid__col o-box o-shadow @xs-u-vw--100 fx--animate">
                </li>

                <%-- // @PAYMENT EXP. DATE --%>
                <li id="CardExpirationCt" class="o-grid--vert--center u-vw--100 c-brand--form__item">
                    <label for="CardExpirationMonth" data-required class="@mv-o-grid--none o-grid__col @xs-u-vw--40 fn--right c-brand--form__label"><%= LabelsManager.Labels["ExpirationDate"] %></label>
                    <div id="expirationDateDiv" class="c-brand--form__field o-grid @xs-u-vw--100 u-bs--reset">
                        <div class="o-grid__col u-vw--50 u-pad--right">
                            <%= Html.CardExpirationMonth("CardExpirationMonth", new { @class = "c-brand--form__select o-box o-shadow u-vw--100 fx--animate" }) %>
                        </div>
                        <div class="o-grid__col u-vw--50 u-pad--left">
                            <%= Html.NumericDropDown("CardExpirationYear", DateTime.Now.Year, DateTime.Now.Year + 10, ViewData["CardExpirationYear"], new { @class = "c-brand--form__select o-box o-shadow u-vw--100 fx--animate" }) %>
                        </div>
                    </div>
                </li>

                <%-- // @PAYMENT CVV2 --%>
                <li id="CardCvv2Ct" class="c-brand--form__item o-grid--vert--center u-vw--100">
                    <label id="CardCvv2Label" for="CardCvv2" data-required class="c-brand--form__label @mv-o-grid--none o-grid__col @xs-u-vw--40 fn--right"><%= LabelsManager.Labels["CVV2"] %></label>
                    <div class="c-brand--form__field o-grid @xs-u-vw--100 u-bs--reset">
                        <div class="o-grid__col u-vw--50 u-bs--reset u-pad--right">
                            <input id="CardCvv2" name="CardCvv2" type="tel" value="<%= ViewData["CardCvv2"] %>" maxlength="5" placeholder="<%= LabelsManager.Labels["CVV2Placeholder"] %>" aria-labelledby="CardCvv2Label" aria-required="true" class="c-brand--form__input o-grid__col o-box o-shadow @xs-u-vw--100 fx--animate">
                        </div>
                        <div class="o-grid__col u-vw--50 u-bs--reset u-pad--left">
                            <a href="<%= LabelsManager.Labels["CVV2DisclaimerLink"] %>" title="<%= LabelsManager.Labels["CVV2DisclaimerLinkTitle"] %>" id="cvv2" class="c-brand--form__hint o-grid__col @xs-u-vw--100 u-pad u-push--left has-fancybox fancybox.ajax"><%= LabelsManager.Labels["CVV2Disclaimer"] %></a>
                        </div>
                    </div>
                </li>

            </ul>
                </fieldset>
                <%-- // END #paymentForm --%>

            </div>



            <!-- // Column -->
            <div class="c-brand--form__col">



                <%-- // BEGIN #billingInformation --%>
                <fieldset id="billingInformation" class="c-brand--form__fieldset">

                    <%-- // @BILLING HEADLINE --%>
                    <legend class="c-brand--form__legend">
                        <span class="c-brand--form__headline">
        					<b class="uppercase"><%= LabelsManager.Labels["BillingStep"] %></b> <%= LabelsManager.Labels["BillingHeadline"] %>
        				</span>
                    </legend>

                    <ul class="c-brand--form__list">

                        <%-- // @BILLING FULL NAME --%>
                        <li id="BillingFullNameCt" class="c-brand--form__item">
                            <label id="BillingFullNameLabel" for="BillingFullName" data-required class="c-brand--form__label"><%= LabelsManager.Labels["FullName"] %></label>
                            <input id="BillingFullName" maxlength="50" name="BillingFullName" type="text" value="<%= ViewData["BillingFullName"] %>" placeholder="<%= LabelsManager.Labels["FullNamePlaceholder"] %>" aria-labelledby="BillingFullNameLabel" aria-required="true" class="c-brand--form__input o-grid__col o-box o-shadow @xs-u-vw--100 fx--animate">
                        </li>

                        <%-- // @BILLING STREET --%>
                        <li id="BillingStreetCt" class="c-brand--form__item">
                            <label id="BillingStreetLabel" for="BillingStreet" data-required class="c-brand--form__label"><%= LabelsManager.Labels["Address"] %></label>
                            <div class=" @xs-u-bs--reset fld">
                                <input id="BillingStreet" name="BillingStreet" type="text" value="<%= ViewData["BillingStreet"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["AddressPlaceholder"] %>" aria-labelledby="BillingStreetLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                            </div>
                        </li>

                        <%-- // @BILLING STREET 2 --%>
                        <li id="BillingStreet2Ct" class="c-brand--form__item">
                            <label id="BillingStreet2Label" for="BillingStreet2" class="c-brand--form__label"><%= LabelsManager.Labels["Address2"] %></label>
                            <input id="BillingStreet2" name="BillingStreet2" type="text" value="<%= ViewData["BillingStreet2"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["Address2Placeholder"] %>" aria-labelledby="BillingStreet2Label" aria-required="false" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                        </li>

                        <%-- // @BILLING CITY --%>
                        <li id="BillingCityCt" class="c-brand--form__item">
                            <label id="BillingCityLabel" for="BillingCity" data-required class="c-brand--form__label"><%= LabelsManager.Labels["City"] %></label>
                            <input id="BillingCity" name="BillingCity" type="text" value="<%= ViewData["BillingCity"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["CityPlaceholder"] %>" aria-labelledby="BillingCityLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                        </li>

                        <%-- // @BILLING COUNTRY --%>
                        <li id="BillingCountryCt" class="c-brand--form__item">
                            <label id="BillingCountryLabel" for="BillingCountry" data-required class="c-brand--form__label"><%= LabelsManager.Labels["Country"] %></label>
                            <%= Html.DropDownListFor(m => m.BillingCountry, new SelectList(Model.Countries, "CountryCode", "CountryName"), LabelsManager.Labels["CountryPlaceholder"], new { @class = "c-brand--form__select o-box o-shadow @xs-u-vw--100 fx--animate" }) %>
                        </li>

                        <%-- // @BILLING STATE --%>
                        <li id="BillingStateCt" class="c-brand--form__item">
                            <label id="BillingStateLabel" for="BillingState" data-required class="c-brand--form__label"><%= LabelsManager.Labels["State"] %></label>
                            <%= Html.DropDownListFor(m => m.BillingState, new SelectList(Model.States, "StateCode", "StateName"), LabelsManager.Labels["StatePlaceholder"], new { @class = "c-brand--form__select o-box o-shadow @xs-u-vw--100 fx--animate" }) %>
                        </li>

                        <%-- // @BILLING ZIP --%>
                        <li id="BillingZipCt" class="c-brand--form__item">
                            <label id="BillingZipLabel" for="BillingZip" data-required class="c-brand--form__label"><%= LabelsManager.Labels["Zip"] %></label>
                            <input id="BillingZip" name="BillingZip" type="tel" value="<%= ViewData["BillingZip"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["ZipPlaceholder"] %>" aria-labelledby="BillingZipLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                        </li>

                        <%-- // @PHONE --%>
                        <li id="PhoneCt" class="c-brand--form__item">
                            <label id="PhoneLabel" for="Phone" data-required class="c-brand--form__label"><%= LabelsManager.Labels["Phone"] %></label>
                            <input id="Phone" name="Phone" type="tel" value="<%= ViewData["Phone"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["PhonePlaceholder"] %>" aria-labelledby="PhoneLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                        </li>

                        <%-- // @EMAIL --%>
                        <li id="EmailCt" class="c-brand--form__item">
                            <label id="EmailLabel" for="Email" data-required class="c-brand--form__label"><%= LabelsManager.Labels["Email"] %></label>
                            <input id="Email" name="Email" type="email" value="<%= ViewData["Email"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["EmailPlaceholder"] %>" aria-labelledby="EmailLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                        </li>

                        <% if ( SettingsManager.ContextSettings["OrderFormReview.ShowPrivacyPolicy", false] ) { %>
        				<%-- // @PRIVACY POLICY --%>
        				<li id="PrivacyCt" class="c-brand--form__item">
        					<a href="<%= SettingsManager.ContextSettings["OrderFormReview.PrivacyPolicyLink"] %><%= Model.Extension %>" title="<%= SettingsManager.ContextSettings["Label.ProductName"] %> | <%= LabelsManager.Labels["PrivacyPolicyText"] %>">
        						<%= LabelsManager.Labels["PrivacyPolicyText"] %>
        					</a>
        				</li>
                        <% } %>

                    </ul>

                </fieldset>
                <%-- // END #billingInformation --%>




                <%-- // BEGIN #ShippingIsSame --%>
                <label id="ShippingIsSame" for="ShippingIsDifferentThanBilling" class="o-grid--vert--center u-mar--bottom">
                    <span class="o-grid__col u-pad"><%= Html.CheckBoxFor(m => m.ShippingIsDifferentThanBilling) %></span>
                    <p class="o-grid__col u-pad"><%= LabelsManager.Labels["IsShippingDifferentFromBillingDisclaimer"] %></p>
                </label>
                <%-- // END #ShippingIsSame --%>




                <%-- // BEGIN #shippingInformation --%>
                <fieldset id="shippingInformation" class="c-brand--form__fieldset">

                    <%-- // @SHIPPING HEADLINE --%>
                    <legend class="c-brand--form__legend u-vw--100">
                        <span class="c-brand--form__headline">
        					<b class="uppercase"><%= LabelsManager.Labels["ShippingStep"] %></b> <%= LabelsManager.Labels["ShippingHeadline"] %>
        				</span>
                    </legend>

                    <ul class="c-brand--form__list">

                        <%-- // @SHIPPING FULL NAME --%>
                        <li id="ShippingFullNameCt" class="c-brand--form__item">
                            <label id="ShippingFullNameLabel" for="ShippingFullName" data-required class="c-brand--form__label"><%= LabelsManager.Labels["FullName"] %></label>
                            <input id="ShippingFullName" name="ShippingFullName" type="text" value="<%= ViewData["ShippingFullName"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["FullNamePlaceholder"] %>" aria-labelledby="ShippingFullNameLabel" aria-required="true" class="c-brand--form__input o-grid__col o-box o-shadow @xs-u-vw--100 fx--animate">
                        </li>

                        <%-- // @SHIPPING STREET --%>
                        <li id="ShippingStreetCt" class="c-brand--form__item">
                            <label id="ShippingStreetLabel" for="ShippingStreet" data-required class="c-brand--form__label"><%= LabelsManager.Labels["Address"] %></label>
                            <input id="ShippingStreet" name="ShippingStreet" type="text" value="<%= ViewData["ShippingStreet"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["AddressPlaceholder"] %>" aria-labelledby="ShippingStreetLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                        </li>

                        <%-- // @SHIPPING STREET 2 --%>
                        <li id="ShippingStreet2Ct" class="c-brand--form__item">
                            <label id="ShippingStreet2Label" for="ShippingStreet2" class="c-brand--form__label"><%= LabelsManager.Labels["Address2"] %></label>
                            <input id="ShippingStreet2" name="ShippingStreet2" type="text" value="<%= ViewData["ShippingStreet2"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["Address2Placeholder"] %>" aria-labelledby="ShippingStreet2Label" aria-required="false" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                        </li>

                        <%-- // @SHIPPING CITY --%>
                        <li id="ShippingCityCt" class="c-brand--form__item">
                            <label id="ShippingCityLabel" for="ShippingCity" data-required class="c-brand--form__label"><%= LabelsManager.Labels["City"] %></label>
                            <input id="ShippingCity" name="ShippingCity" type="text" value="<%= ViewData["ShippingCity"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["CityPlaceholder"] %>" aria-labelledby="ShippingCityLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                        </li>

                        <%-- // @SHIPPING COUNTRY --%>
                        <li id="ShippingCountryCt" class="c-brand--form__item">
                            <label for="ShippingCountry" data-required class="c-brand--form__label"><%= LabelsManager.Labels["Country"] %></label>
                            <%= Html.DropDownListFor(m => m.ShippingCountry, new SelectList(Model.Countries, "CountryCode", "CountryName"), LabelsManager.Labels["CountryPlaceholder"], new { @class = "c-brand--form__select o-grid--col o-box o-shadow @xs-u-vw--100 fx--animate" })%>
                        </li>

                        <%-- // @SHIPPING STATE --%>
                        <li id="ShippingStateCt" class="c-brand--form__item">
                            <label for="ShippingState" data-required class="c-brand--form__label"><%= LabelsManager.Labels["State"] %></label>
                            <%= Html.DropDownListFor(m => m.ShippingState, new SelectList(Model.States, "StateCode", "StateName"), LabelsManager.Labels["StatePlaceholder"], new { @class = "c-brand--form__select o-grid--col o-box o-shadow @xs-u-vw--100 fx--animate" })%>
                        </li>

                        <%-- // @SHIPPING ZIP --%>
                        <li id="ShippingZipCt" class="c-brand--form__item">
                            <label id="ShippingZipLabel" for="ShippingZip" data-required class="c-brand--form__label"><%= LabelsManager.Labels["Zip"] %></label>
                            <input id="ShippingZip" name="ShippingZip" type="tel" value="<%= ViewData["ShippingZip"] %>" maxlength="10" placeholder="<%= LabelsManager.Labels["ZipPlaceholder"] %>" aria-labelledby="ShippingZipLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                        </li>

                    </ul>

                </fieldset>
								<%-- // END #shippingInformation --%>

								<%if (renderOfferDetailsAboveAcceptOffer)
				        { %>
				          <div class="u-pad--bottom @x2-pad">

				              <div class="snippet--od l-disclaimer o-box u-vw--100 u-mar--center">

				                  <% Html.RenderSnippet("OFFERDETAILS"); %>

				              </div>

				          </div>
				    <%} %>

            <style>
                label[for*=EmailOptIn] {
                    background: #e4e4e4;
                    border: 1px solid black;
                    font-weight: 400;
                }

                label[for*=EmailOptIn] *,
                label[for*=Terms] * {
                    font-weight: inherit;
                }

                label[for*=EmailOptIn] strong,
                label[for*=Terms] stong {
                    font-weight: bold;
                }

                label[for*=EmailOptIn]:hover {
                    background: #ccc;
                }

                  label[for*=Terms] {
                    background: #e4e4e4;
                    border: 1px solid black;
                    font-weight: 400;
                }

                label[for*=Terms]:hover {
                    background: #ccc;
                }
            </style>
            <label id="EmailOptInLabel" for="EmailOptInCbx" class="o-grid terms-checkbox">
                <div class="o-grid__col u-pad eflex-checkmark">
                    <input id="EmailOptInCbx" name="EmailOptInCbx" type="checkbox" data-eflex="draw" data-eflex-icon="checkmark" value="True" style="display: none;">
                    <svg tabindex="0" class="eflex-checkmark__svg " viewBox="0 0 52 52" role="checkbox">
                        <circle class="eflex-checkmark__circle" cx="26" cy="26" r="25" fill="none"></circle>
                        <path class="eflex-checkmark__check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8"></path>
                    </svg>
                </div>
                <p class="o-grid__col u-pad">
                    <strong>Yes, I'd like to receive promotional communications from Arm & Hammer&trade;.</strong> Please review Church & Dwight's <a id="emailoptin-privacy-policy" href="https://churchdwight.com/privacy-policy.aspx" target="_blank">Privacy Policy</a> to understand how Church & Dwight collects and uses personal information.</p>
            </label>
            <input type="hidden" name="EmailOptIn" id="EmailOptIn" value="False" /><br />
            <label id="TermsLabel" for="Terms" class="o-grid terms-checkbox">
                <div class="o-grid__col u-pad eflex-checkmark">
                    <input id="Terms" name="Terms" type="checkbox" data-eflex="draw" data-eflex-icon="checkmark" value="True" style="display: none;">
                    <svg tabindex="0" class="eflex-checkmark__svg " viewBox="0 0 52 52" role="checkbox">
                        <circle class="eflex-checkmark__circle" cx="26" cy="26" r="25" fill="none"></circle>
                        <path class="eflex-checkmark__check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8"></path>
                    </svg>
                </div>
                <p class="o-grid__col u-pad" data-required><span class="red-text">Required field</span><br> By checking this box, you are electronically signing your order, agreeing to the terms and to our general <a id="dyn-tos-pp-link2" href="Terms.dtm" target="_blank">Terms and Conditions</a>, including our no-commitment auto-replenishment program, and authorizing us to charge this payment to the credit card you have provided.</p>
            </label>

                <%-- // BEGIN #calltoAction --%>
                <fieldset id="calltoAction" class="c-brand--form__fieldset c-brand--form__fieldset--borderless">

                    <ul class="c-brand--form__list @mv-u-pad--vert @dv-u-pad--horz">

                        <%-- // @PROCESS ORDER BUTTON --%>
                        <li id="ctaButtonScrollTarget" class="c-brand--form__item o-grid--vert--center u-vw--100 u-mar--top">
                            <input id="AcceptOfferButton" name="acceptOffer" type="submit" value="Process Order" class="btn u-mar--center">
                        </li>

                        <%-- // @PROCESS ORDER TEXT --%>
                        <li class="c-brand--form__item c-brand--form__submission o-grid--vert--center u-vw--100 fn--center" tabindex="0">
        					<p><%= LabelsManager.Labels["SubmissionDisclaimer"] %></p>
                            <% Html.RenderSiteControl("InsureShipCheckbox"); %>
                        </li>

                        <%-- // @SSL BADGE --%>
                        <li class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <img src="/shared/images/PositiveSSL_tl_trans.png?appV=<%= DtmContext.ApplicationVersion %>" alt="SSL" class="u-mar--center u-mar--horz" />
                        </li>

                    </ul>

                </fieldset>
                <%-- // END #calltoAction --%>

            </div>



        </div>



    <% } %>

    <div class="u-mar--bottom @x2-mar">
        <div class="l-disclaimer o-box u-mar--center">
            <% Html.RenderSnippet("OFFERDETAILS"); %>
        </div>
    </div>

</div>
