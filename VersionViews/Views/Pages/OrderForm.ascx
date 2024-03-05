<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<div class="c-brand--form order__form" id="form">

    <% var renderOfferDetailsAboveAcceptOffer = SettingsManager.ContextSettings["Order.RenderOfferDetailsAboveAcceptOffer", false]; %>

    <% using (Html.BeginForm())
        { %>

    <%= Html.Partial("ViewSwitchLink") %>
    <div class="vse"><%= Html.ValidationSummary("The following errors have occurred:") %></div>
    <div class="hide" data-vse></div>

    <% Html.RenderSnippet("PRODUCTSELECTION"); %>


    <%= Html.Partial("OrderFormReviewTable", Model) %>

    <%-- // Indicate Requires Field --%>
    <p data-required class="indicate u-mar--bottom fn--center"><%= LabelsManager.Labels["RequiredFieldDisclaimer"] %></p>

    <%-- // BEGIN #paymentForm --%>
    <fieldset class="steps c-brand--form__fieldset" id="paymentForm">

        <%-- // @PAYMENT HEADLINE --%>
        <legend class="c-brand--form__legend">
            <span class="c-brand--form__headline">
                <%= LabelsManager.Labels["PaymentStep"] %> <%= LabelsManager.Labels["PaymentHeadline"] %>
            </span>
        </legend>

        <ul class="c-brand--form__list @mv-u-pad--vert">

            <%-- // @PAYMENT ICONS --%>
            <li class="c-brand--form__item">
                <span class="c-brand--form__cc--label c-brand--form__label"></span>
                <span id="cc" class="c-brand--form__field"></span>
            </li>

            <%-- // @PAYMENT TYPE --%>
            <li id="CardTypeCt" class="c-brand--form__item">
                <label for="CardType" data-required class="c-brand--form__label">Type</label>
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
            <li id="CardNumberCt" class="c-brand--form__item">
                <label id="CardNumberLabel" for="CardNumber" data-required class="c-brand--form__label"><%= LabelsManager.Labels["CardNumber"] %></label>
                <input id="CardNumber" name="CardNumber" type="tel" value="<%= ViewData["CardNumber"] %>" placeholder="<%= LabelsManager.Labels["CardNumberPlaceholder"] %>" aria-labelledby="CardNumberLabel" aria-required="true" class="c-brand--form__input o-grid__col o-box o-shadow @xs-u-vw--100 fx--animate">
            </li>

            <%-- // @PAYMENT EXP. DATE --%>
            <li id="CardExpirationCt" class="c-brand--form__item">
                <label for="CardExpirationYear" id="CardExpirationLabel" class="c-brand--form__label">
                    <span data-required class="c-brand--form__label"><%= LabelsManager.Labels["ExpirationDate"] %>:</span>
                </label>
                <span id="expirationDateDiv" class="c-brand--form__field">
                    <span class="o-grid @xs-u-vw--100">
                        <span class="o-grid__col u-vw--50 u-pad--right">
                            <%= Html.CardExpirationMonth("CardExpirationMonth", new { @class = "c-brand--form__select o-box o-shadow u-vw--100 fx--animate", aria_labelledby = "CardExpirationLabel" }) %>
                        </span>
                        <span class="o-grid__col u-vw--50 u-pad--left">
                            <%= Html.NumericDropDown("CardExpirationYear", DateTime.Now.Year, DateTime.Now.Year + 10, ViewData["CardExpirationYear"], new { @class = "c-brand--form__select o-box o-shadow u-vw--100 fx--animate" }) %>
                        </span>
                    </span>
                </span>
            </li>

            <%-- // @PAYMENT CVV2 --%>
            <li id="CardCvv2Ct" class="c-brand--form__item">
                <label id="CardCvv2Label" for="CardCvv2" data-required class="c-brand--form__label"><%= LabelsManager.Labels["CVV2"] %></label>
                <div class="c-brand--form__field">
                    <div class="o-grid @xs-u-vw--100">
                        <div class="o-grid__col u-vw--50 u-bs--reset u-pad--right">
                            <input id="CardCvv2" name="CardCvv2" type="tel" value="<%= ViewData["CardCvv2"] %>" maxlength="5" placeholder="<%= LabelsManager.Labels["CVV2Placeholder"] %>" aria-labelledby="CardCvv2Label" aria-required="true" class="c-brand--form__input o-grid__col o-box o-shadow @xs-u-vw--100 fx--animate">
                        </div>
                        <div class="o-grid__col u-vw--50 u-bs--reset u-pad--left">
                            <a href="<%= LabelsManager.Labels["CVV2DisclaimerLink"] %>" title="<%= LabelsManager.Labels["CVV2DisclaimerLinkTitle"] %>" id="cvv2" class="c-brand--form__hint o-grid__col @xs-u-vw--100 u-pad u-push--left has-fancybox fancybox.ajax link"><%= LabelsManager.Labels["CVV2Disclaimer"] %> <span class="link__advisal"><span class="link__container">Opens in a modal</span></span></a>
                        </div>
                    </div>
                </div>
            </li>

        </ul>
    </fieldset>
    <%-- // END #paymentForm --%>

    <%-- // BEGIN #billingInformation --%>
    <fieldset class="steps c-brand--form__fieldset" id="billingInformation">

        <%-- // @BILLING HEADLINE --%>
        <legend class="c-brand--form__legend">
            <span class="c-brand--form__headline">
                <%= LabelsManager.Labels["BillingStep"] %> <%= LabelsManager.Labels["BillingHeadline"] %>
            </span>
        </legend>

        <ul class="c-brand--form__list @mv-u-pad--vert">

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

            <% if (SettingsManager.ContextSettings["Form.EnableCellPhone", false])
                { %>
            <%-- // @CELLPHONE --%>
            <li id="CellPhoneCt" class="c-brand--form__item">
                <label id="CellPhoneLabel" for="CellPhone" class="c-brand--form__label"><%= LabelsManager.Labels["CellPhone"] %></label>
                <input id="CellPhone" name="CellPhone" type="tel" value="<%= ViewData["CellPhone"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["CellPhonePlaceholder"] %>" aria-labelledby="EmailLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
            </li>
            <div id="MobileOptInContainer">
            </div>
            <%} %>

            <% if (SettingsManager.ContextSettings["OrderFormReview.ShowPrivacyPolicy", false])
                { %>
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
    <label id="ShippingIsSame" for="ShippingIsDifferentThanBilling" class="o-grid--vert--center center-margin u-pad--bottom">
        <span class="o-grid__col u-pad"><%= Html.CheckBoxFor(m => m.ShippingIsDifferentThanBilling) %></span>
        <span class="o-grid__col u-pad"><%= LabelsManager.Labels["IsShippingDifferentFromBillingDisclaimer"] %></span>
    </label>
    <%-- // END #ShippingIsSame --%>


    <%-- // BEGIN #shippingInformation --%>
    <fieldset class="steps c-brand--form__fieldset @mv-u-pad--top @dv-u-pad--reset" id="shippingInformation">

        <%-- // @SHIPPING HEADLINE --%>
        <legend class="c-brand--form__legend">
            <span class="c-brand--form__headline"><%= LabelsManager.Labels["ShippingStep"] %> <%= LabelsManager.Labels["ShippingHeadline"] %>
            </span>
        </legend>

        <ul class="c-brand--form__list @mv-u-pad--vert">

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
    <div class="form-submit-wrapper">
        <label id="EmailOptInLabel" for="EmailOptInCbx" class="o-grid terms-checkbox">
            <div class="o-grid__col u-pad eflex-checkmark">
                <input id="EmailOptInCbx" name="EmailOptInCbx" type="checkbox" data-eflex="draw" data-eflex-icon="checkmark" value="True" style="display: none;">
                <svg tabindex="0" class="eflex-checkmark__svg " viewBox="0 0 52 52" role="checkbox">
                    <circle class="eflex-checkmark__circle" cx="26" cy="26" r="25" fill="none"></circle>
                    <path class="eflex-checkmark__check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8"></path>
                </svg>
            </div>
            <p class="o-grid__col u-pad">
                <strong>Yes, I'd like to receive promotional communications from OxiClean&trade;.</strong> Please review Church & Dwight's <a id="emailoptin-privacy-policy" href="https://churchdwight.com/privacy-policy.aspx" target="_blank">Privacy Policy</a> to understand how Church & Dwight collects and uses personal information.
            </p>
        </label>
        <input type="hidden" name="EmailOptIn" id="EmailOptIn" value="False"><br />
        <label id="TermsLabel" for="Terms" class="o-grid terms-checkbox">
            <div class="o-grid__col u-pad eflex-checkmark">
                <input id="Terms" name="Terms" type="checkbox" data-eflex="draw" data-eflex-icon="checkmark" value="True" style="display: none;">
                <svg tabindex="0" class="eflex-checkmark__svg " viewBox="0 0 52 52" role="checkbox">
                    <circle class="eflex-checkmark__circle" cx="26" cy="26" r="25" fill="none"></circle>
                    <path class="eflex-checkmark__check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8"></path>
                </svg>
            </div>
            <p class="o-grid__col u-pad" data-required><span class="red-text">Required field</span><br>
                By checking this box, you are electronically signing your order, agreeing to the terms and to our general <a id="dyn-tos-pp-link2" href="Terms.dtm" target="_blank">Terms and Conditions</a>, and authorizing us to charge this payment to the credit card you have provided.</p>
        </label>
        <script>
            (function () {
                let emailOptIn = document.getElementById("EmailOptIn");
                document.getElementById("EmailOptInCbx").addEventListener("click", function () {
                    if (this.checked) {
                        emailOptIn.value = "True";
                    } else {
                        emailOptIn.value = "False";
                    }
                });
            })();
        </script>
        <%-- // BEGIN #calltoAction --%>
        <div class="FormSubmit c-brand--form__fieldset c-brand--form__fieldset--borderless" id="calltoAction">

            <div class="c-brand--form__list @mv-u-pad--vert @dv-u-pad--horz">

                <%-- // @PROCESS ORDER BUTTON --%>
                <div class="center-text u-mar--top">
                    <button aria-describedby="processOrderText" id="AcceptOfferButton" name="acceptOffer" type="submit" class="button button--capsule button--flat button--order">
                        <span>Process Order</span>
                    </button>
                </div>

                <%-- // @PROCESS ORDER TEXT --%>
                <div class="c-brand--form__item c-brand--form__submission o-grid--vert--center u-vw--100 fn--center">
                    <p id="processOrderText"><%= LabelsManager.Labels["SubmissionDisclaimer"] %></p>
                </div>

                <%-- // @SSL BADGE --%>
                <d class="c-brand--form__item">
                        <picture class="contain contain--square contain--ssl-badge" data-src-img="/shared/images/PositiveSSL_tl_trans.png" data-attr='{ "alt" : "Secure Socket SSL Encryption" }'>
                        </picture>
                    </d>

            </div>

        </div>
        <%-- // END #calltoAction --%>
    </div>

    <% } %>
</div>


