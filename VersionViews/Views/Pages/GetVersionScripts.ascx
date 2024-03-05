<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>

<%
    var pagesRequireToast = new string[] { "ReferAFriend", "Confirmation" };
  
    if (pagesRequireToast.Contains(DtmContext.PageCode)) {
%>
<span id="form-response" class="toast toast--alert toast--hidden toast--polite">
    <span class="toast__stage toast" aria-live="polite" aria-labelledby="form-response-title" aria-modal="true">
        <span class="toast__text toast__group toast">
            <p id="form-response-title"></p>
            <button id="form-response-dismiss" class="toast__close"></button>
        </span>
    </span>
</span>
<% } %>