<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<footer aria-label="Sitemap and copyright information" class="view footer c-brand section @print-only-hide bg bg--color-footer">
    <div class="view__in footer__in section__in no-shadow">
		<%= Html.Partial("SitemapList") %>
		<div class="footer__social social">
			<a href="https://www.facebook.com/OxiClean/" id="footer-facebook" title="Visit us On Facebook @OxiClean" target="_blank">
				<svg class="facebook"><use href="#facebook"></use></svg>
			</a>
			<a href="https://www.instagram.com/oxicleanofficial/?hl=en" id="footer-instagram" title="Visit us On Instagram @oxicleanofficial" target="_blank">
				<svg class="instagram"><use href="#instagram"></use></svg>
			</a>
			<a href="https://www.youtube.com/channel/UCYNe5-HW4SQRILANqH1M5Iw" id="footer-youtube" title="Visit us On Youtube" target="_blank">
				<svg class="youtube"><use href="#youtube"></use></svg>
			</a>
		</div>
    </div>

	<div class="hide l-controls" aria-hidden="true" role="none">
	    <% if ( DtmContext.Page.IsStartPageType ) { %>

			<% Html.RenderPartial("Scripts"); %>
			<% Html.RenderSnippet("ORDERFORMSCRIPT"); %>
            <script>
                const allowAutomateSteps = false;

                //SignUp  Function
                function saveEmailOptIn(e) {
                    var email = jQuery('#emailSubscribe').val();
                    if (email.length > 0) {
                        if (isEmpty("emailSubscribe")) {
                            jQuery('#subscribemessage').addClass('error extend pad').html("Invalid Email Address");
                            return false;
                        }
                        else {
                            var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
                            var address = document.getElementById("emailSubscribe").value;

                            if (reg.test(address) == false) {
                                console.log("fail");
                                jQuery('#subscribemessage').addClass('error extend pad').html("Invalid Email Address");
                                return false;
                            }
                        }
                    }

                    jQuery('#subscribemessage').addClass('extend pad').html("Processing...");
                    jQuery.ajax({
                        type: 'GET',
                        url: '/Cart/Subscribe/<%=DtmContext.PageCode%>?email=' + email,
                                dataType: 'json',
                                async: false,
                                success: function (data) {
                                    var success = new RegExp("Success", "g"), error = new RegExp("Invalid", "g");

                                    if (data.errorMessage.match(success)) {
                                        console.log('success');
                                        jQuery('#subscribemessage').addClass('success');
                                    }
                                    else if (data.errorMessage.match(error)) {
                                        console.log('failed');
                                        jQuery('#subscribemessage').addClass('error');
                                    }

                                    jQuery('#subscribemessage').html(data.errorMessage);
                                    jQuery('#emailSubscribe').val('');
                                    setTimeout(function () {
                                        jQuery('#subscribemessage').slideUp('fast', function () {
                                            jQuery(this).removeClass('error success extend pad').html('');
                                        });
                                    }, 8000);
                                },
                                error: function () {
                                    jQuery('#subscribemessage').addClass('error').html('Unable to process request at this time, please try again.');
                                    setTimeout(function () {
                                        jQuery('#subscribemessage').slideUp('fast', function () {
                                            jQuery(this).removeClass('error success extend pad').html('');
                                        });
                                    }, 8000);
                                }
                            });
                        return true;
                    }
            </script>

	    <% } %>

        <%= Model.FrameworkVersion %>
		<% Html.RenderSiteControls(SiteControlLocation.ContentTop); %>
		<% Html.RenderSiteControls(SiteControlLocation.ContentBottom); %>
		<% Html.RenderSiteControls(SiteControlLocation.PageBottom); %>

        <script>
            
        </script>

	</div>
</footer>

<div id="sold-out" class="sold-out" style="display: none;">
    <img src="/images/sold-out.jpg" alt="Sold Out" width="640" height="288">

    <h1>Hello!</h1>

    <p>Thank you for your interest in the<strong> OxiClean Refillable Cleaner&trade;</strong> System. Due to overwhelming interest in the product line, we have sold out. However, there is good news!</p>
    
    <p>If you enter your email below you can be the first to know when new inventory is available.</p>

    <div class="sold-out__group">
        <input type="email" name="emailSubscribe" id="emailSubscribe" placeholder="Email Address" >
        <input type="submit" value="Submit" onclick="return saveEmailOptIn(this);">
    </div>
    <div id="subscribemessage" class="subscribe-msg"></div>
    <hr>
</div>