<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var v = 37;
    var url = "{0}?v={1}";

    var preload = ViewData["preload"] as bool? ?? false;
    var defer = ViewData["defer"] as bool? ?? false;

    var isProcessPayment = DtmContext.PageCode == "ProcessPayment";
    var isIndex = DtmContext.PageCode == "Index";
    var isLandingPage = DtmContext.Page.IsStartPageType;
    var isReviewPage = DtmContext.PageCode == "ReviewPage";
    var isUpsell = DtmContext.Page.PageType.Equals("Upsell", StringComparison.InvariantCultureIgnoreCase) || isReviewPage;
    var isConfirmation = DtmContext.Page.PageType == "Confirmation";
    var isCheckout = DtmContext.PageCode == "OrderNow";
    var isFAQ = DtmContext.PageCode == "FAQ";
    var isSubPage = isLandingPage && !isIndex && !isFAQ;
    var isReferAFriend = DtmContext.PageCode == "ReferAFriend";
    var isReviews = DtmContext.PageCode == "Reviews";

    // inform browser to preload all critical resources ahead of schedule
    if (preload)
    {
        // preload critical fonts
        var fonts = new List<string>
        {
            "/shared/webfonts/gotham/bold/Gotham-Bold.woff2",
            "/shared/webfonts/gotham/medium/Gotham-Medium.woff2",
            "/shared/webfonts/gotham/black/Gotham-Black.woff2",
            "/shared/webfonts/gotham/book/Gotham-Book.woff2"
        };

        foreach (var font in fonts)
        {
            %>
            <link rel="preload" href="<%= font %>" as="font" type="font/woff2" crossorigin="">
            <%
        }

        var images = new List<string> {

        };

        foreach (var image in images) {
            var resource = String.Format(url, image, v);
            %>
            <link rel="preload" href="<%= resource %>" as="image">
            <%
        }

        // preload critical images
        if (isIndex)
        {
            %>
                <link rel="preload" href="/images/logo.png" as="image">
                <link rel="preload" href="/images/oxiclean-bottle.jpg">
            <%
        }

        // preload critical stylesheets
        var styles = new List<string>
        {
            "/css/1.0000/default/shell.css"
        };

        if (isIndex)
        {
            styles.Add("/css/1.0000/default/index.crp.css");
        }

        if (isSubPage) {
            styles.Add("/css/1.0000/default/landing-page.css");
        }

        if (isFAQ) {
            styles.Add("/css/1.0000/default/faq.css");
        }

        if (isReviews) {
            styles.Add("/css/1.0000/default/reviews.css");
        }

        if (isCheckout) {
            styles.Add("/css/1.0000/default/checkout.css");
        }

        if (isReferAFriend) {
            styles.Add("/css/1.0000/default/referafriend.css");
        }

        if (isUpsell) {
            styles.Add("/css/1.0000/default/upsell.css");
        }

        if (isConfirmation) {
            styles.Add("/css/1.0000/default/confirmation.css");
        }

        if (isProcessPayment) {
            styles.Add("/css/1.0000/default/processpayment.css");
        }


        foreach (var style in styles)
        {
            var resource = String.Format(url, style, v);
            %>
            <link rel="preload" href="<%= resource %>" as="style">
            <%
        }

        // preload critical scripts
        var scripts = new List<string>
        {

        };

        foreach (var script in scripts)
        {
            var resource = String.Format(url, script, v);
            %>
            <link rel="preload" href="<%= resource %>" as="script">
            <%
        }
    }

    // inform browser to request resources on document parse. dispatch as critical resources
    if (!preload && !defer)
    {
        // request critical stylesheets
        var styles = new List<string>
        {
            "/css/1.0000/default/shell.css",
            "/css/1.0000/default/checkout.css"
            
        };

        if (isIndex) {
            styles.Add("/css/1.0000/default/index.crp.css");
        }

        if (isSubPage) {
            styles.Add("/css/1.0000/default/landing-page.css");
        }

        if (isFAQ) {
            styles.Add("/css/1.0000/default/faq.css");
        }

        if (isReviews) {
            styles.Add("/css/1.0000/default/reviews.css");
        }

        if (isCheckout) {
            styles.Add("/css/1.0000/default/checkout.css");
        }

        if (isReferAFriend) {
            styles.Add("/css/1.0000/default/referafriend.css");
        }

        if (isUpsell) {
            styles.Add("/css/1.0000/default/upsell.css");
        }

        if (isConfirmation) {
            styles.Add("/css/1.0000/default/confirmation.css");
        }

        if (isProcessPayment) {
            styles.Add("/css/1.0000/default/processpayment.css");
        }

        foreach (var style in styles)
        {
            var resource = String.Format(url, style, v);
            %>
            <link rel="stylesheet" href="<%= resource %>">
            <%
        }


        // request critical scripts. inform browser to defer script execution to document parse completion
        var scripts = new List<string>
        {

        };

        foreach (var script in scripts)
        {
            var resource = String.Format(url, script, v);
            %>
            <script src="<%= resource %>"></script>
            <%
        }
    }

    // inform browser to request resources on document parse. dispatch as deferred resources
    if (!preload && defer)
    {
        // request deferred stylesheets
        var styles = new List<string> {

        };

        if (isIndex) {
            styles.Add("/css/1.0000/default/index.css");
        }

        foreach (var style in styles)
        {
            var resource = String.Format(url, style, v);
            %>
            <link rel="stylesheet" href="<%= resource %>" media="print" onload="this.media='all'; this.onload=null;">
            <noscript>
                <link rel="stylesheet" href="<%= resource %>">
            </noscript>
            <%
        }


        // request deferred scripts. inform browser to defer script execution to document parse completion
        var scripts = new List<string>
        {
            "/js/app.js",
            "/js/observer.js",
            "/js/lazy.js",
            "/js/page.js",
            "/js/nav.js"
        };

        if (isIndex) {
            scripts.Add("/js/slide/slide.js");
            scripts.Add("/js/slide/components/slide.a11y.js");
            scripts.Add("/js/slide/components/slide.thumbnails.js");
            scripts.Add("/js/carousel.js");
 
        }

        if (isCheckout) {
            scripts.Add("/js/checkout.js");
        }

        foreach (var script in scripts)
        {
            var resource = String.Format(url, script, v);
            %>
            <script defer src="<%= resource %>"></script>
            <%
        }
    }
%>