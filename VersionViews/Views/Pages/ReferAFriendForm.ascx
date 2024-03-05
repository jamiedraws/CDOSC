<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<% 
    string orderId = DtmContext.OrderId.ToString();
    if(Request.QueryString.AllKeys.Contains("oid"))
    {
        orderId = Request.QueryString["oid"];
    }

%>
<form id="leadForm" class="form form--lead">
    <fieldset>
        <legend class="form__title">Tell your friends about us!</legend>
        <div class="form__desc form__span-content">Send this amazing offer to your friends and family.</div>
        <div class="form__fieldset">
            <div class="form message">
                <div class="form__field-label">
                    <input type="email" name="LeadEmails" id="LeadEmails" placeholder="Email" required class="form__field dtm__restyle">
                    <label class="message__group" for="LeadEmails" role="alert">
                        <span class="message__label">
                            <span class="form__error">* </span>Email
                            <br />
                         <%--<small>Separate multiple emails with a semicolon (;)</small>--%>
                        </span>
                        <span class="message__invalid">
                            Please enter a valid email address.
                        </span>
                    </label>
                </div>
            </div>
        </div>
        <div class="form__fieldset form__span-content">
            <button id="referSubmit" type="button" class="btn btn--order button button--capsule form__button">
                <span>Refer My Friend</span>
            </button>
        </div>
        <input type="hidden" name="LeadOrderId" id="LeadOrderId" value="<%=orderId %>" />
        <input type="hidden" name="Mid" id="Mid" value="<%= DtmContext.PageCode.Equals("Confirmation", StringComparison.InvariantCultureIgnoreCase) ? "12008902" : "12008904" %>" />
    </fieldset>
</form>
<script type="text/javascript" src="/js/refer-friend.js" defer></script>