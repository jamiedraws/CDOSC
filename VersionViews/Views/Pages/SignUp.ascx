<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<div class="signup">
    <label for="" class="signup__label">Sign Up &amp; Save</label>
    <div class="signup__input">
		<input type="email" name="emailSubscribe" type="email" id="emailSubscribe" placeholder="Email Address" required />
    </div>
    <div class="signup__button">
        <input type="submit" value="Join Today" class="button button--capsule" onclick="return saveEmailOptIn(this);">
    </div>
</div>

<div id="subscribemessage" class="subscribe-msg"></div>