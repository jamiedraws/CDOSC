<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var hasSocial = false;
    if (DtmContext.Page.IsStartPageType) {
        hasSocial = true;
    }
%>

<span class="svg-symbols">
    <svg>
        <symbol id="icon-chevron" x="0px" y="0px"viewBox="0 0 511.949 511.949" style="enable-background:new 0 0 511.949 511.949;">
		    <path d="M386.235,248.308L140.902,2.975c-4.267-4.053-10.987-3.947-15.04,0.213c-3.947,4.16-3.947,10.667,0,14.827l237.76,237.76
			l-237.76,237.867c-4.267,4.053-4.373,10.88-0.213,15.04c4.053,4.267,10.88,4.373,15.04,0.213c0.107-0.107,0.213-0.213,0.213-0.213
			l245.333-245.333C390.395,259.188,390.395,252.468,386.235,248.308z"/>
        </symbol>
        <symbol id="icon-plus" x="0px" y="0px" viewBox="0 0 11 11" style="enable-background:new 0 0 11 11;">
            <path d="M10.1,5.5H5.5v4.6 M5.5,5.5H0.9 M5.5,0.9v4.6"/>
        </symbol>
        <symbol id="icon-minus" x="0px" y="0px" viewBox="0 0 11 11" style="enable-background:new 0 0 11 11;">
            <path d="M10.1,5.5H5.4 M5.4,5.5H0.7 M5.4,5.5"/>
        </symbol>
        <symbol id="icon-cart" x="0px" y="0px" viewBox="0 0 32 32" style="enable-background:new 0 0 32 32;">
            <path class="st0" d="M29.6,22.5H12.9c-0.2,0-0.6-0.1-0.7-0.2c0-0.1,0.2-0.5,0.8-1.3l1.1-1.3l15.1-1.6c0.5-0.1,0.9-0.4,1-0.9
                l1.3-10.5c0-0.3-0.1-0.6-0.2-0.8c-0.2-0.2-0.5-0.4-0.8-0.4L9,4.9L7.5,1.3C7.4,1,7,0.7,6.6,0.7L1.4,0.1c-0.6-0.1-1.1,0.4-1.2,1
                s0.4,1.1,1,1.2l4.6,0.5l6.6,15.8l-1,1.1c0,0,0,0,0,0c-0.5,0.5-1.9,2.1-1.2,3.6c0.6,1.4,2.5,1.4,2.7,1.4h16.6c0.6,0,1.1-0.5,1.1-1.1
                C30.6,23,30.1,22.5,29.6,22.5z M9.9,7.1l19.3,0.6l-1.1,8.5l-13.9,1.4L9.9,7.1z"/>
            <path class="st0" d="M27.2,25.4c-1.8,0-3.2,1.5-3.2,3.2c0,1.8,1.5,3.2,3.2,3.2s3.2-1.5,3.2-3.2C30.5,26.8,29,25.4,27.2,25.4z
                M27.2,29.7c-0.6,0-1.1-0.5-1.1-1.1c0-0.6,0.5-1.1,1.1-1.1s1.1,0.5,1.1,1.1C28.3,29.2,27.8,29.7,27.2,29.7z"/>
            <path class="st0" d="M13.3,25.4c-1.8,0-3.2,1.5-3.2,3.2c0,1.8,1.5,3.2,3.2,3.2c1.8,0,3.2-1.5,3.2-3.2
                C16.6,26.8,15.1,25.4,13.3,25.4z M13.3,29.7c-0.6,0-1.1-0.5-1.1-1.1c0-0.6,0.5-1.1,1.1-1.1s1.1,0.5,1.1,1.1
                C14.4,29.2,13.9,29.7,13.3,29.7z"/>
        </symbol>
        <% if (DtmContext.Page.PageCode == "Index") { %>
        <symbol id="stars" viewBox="0 0 3000 504.45">
            <polygon points="265.2 401.55 101.3 504.45 148.51 316.77 0 192.68 193.09 179.59 265.2 0 337.32 179.59 530.41 192.68 381.9 316.77 429.11 504.45 265.2 401.55" style="fill:#fff200"/><polygon points="882.6 401.55 718.7 504.45 765.91 316.77 617.4 192.68 810.49 179.59 882.6 0 954.72 179.59 1147.81 192.68 999.29 316.77 1046.51 504.45 882.6 401.55" style="fill:#fff200"/><polygon points="1500 401.55 1336.1 504.45 1383.31 316.77 1234.8 192.68 1427.88 179.59 1500 0 1572.12 179.59 1765.2 192.68 1616.69 316.77 1663.91 504.45 1500 401.55" style="fill:#fff200"/><polygon points="2117.4 401.55 1953.49 504.45 2000.71 316.77 1852.19 192.68 2045.28 179.59 2117.4 0 2189.52 179.59 2382.6 192.68 2234.09 316.77 2281.3 504.45 2117.4 401.55" style="fill:#fff200"/><polygon points="2734.8 401.55 2570.89 504.45 2618.1 316.77 2469.59 192.68 2662.68 179.59 2734.8 0 2806.91 179.59 3000 192.68 2851.49 316.77 2898.7 504.45 2734.8 401.55" style="fill:#fff200"/>
        </symbol>
        <symbol id="star" x="0px" y="0px" viewBox="0 0 530.4 504.5">
            <polygon points="265.2,401.5 101.3,504.5 148.5,316.8 0,192.7 193.1,179.6 265.2,0 337.3,179.6 530.4,192.7 
	        381.9,316.8 429.1,504.5 "/>
        </symbol>
        <% } %>
        <% if (hasSocial) { %>
        <symbol id="facebook" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38.57 37.9">
            <path d="M278.11,420.27a18.33,18.33,0,0,1,5.06-12,19,19,0,0,1,9.51-5.58,19.24,19.24,0,0,1,12.35,1,18.62,18.62,0,0,1,8.24,6.63,18.63,18.63,0,0,1-.88,22.62,19.23,19.23,0,0,1-11.67,6.77,18.66,18.66,0,0,1-11.92-1.7,18.39,18.39,0,0,1-10-12.2A19.57,19.57,0,0,1,278.11,420.27ZM297,438.62c1-.08,2-.13,3-.26a17.53,17.53,0,0,0,14.37-11.92,16.59,16.59,0,0,0-3.59-17,18.1,18.1,0,0,0-28.22,1.77,16.52,16.52,0,0,0-2.88,12.26,17.09,17.09,0,0,0,9,12.9A18.48,18.48,0,0,0,297,438.62Z" transform="translate(-278.11 -402.06)" style="fill:#002169"/>
            <path d="M303.79,409v3.82l-.88,0a20.15,20.15,0,0,0-2.06.08,1.44,1.44,0,0,0-1.46,1.48c-.06,1.05,0,2.12,0,3.25,1.41.08,2.82,0,4.28.05l-.55,4.3h-3.75c0,3.71,0,7.36,0,11a23.85,23.85,0,0,1-4.44.07c0-.23,0-.47,0-.72,0-3.14,0-6.29,0-9.43v-.87h-3.67a23.17,23.17,0,0,1,0-4.34h3.68c0-.27,0-.47,0-.68,0-1,0-2,0-3a5.27,5.27,0,0,1,1.75-3.92,5.07,5.07,0,0,1,2.94-1.23A21.63,21.63,0,0,1,303.79,409Z" transform="translate(-278.11 -402.06)" style="fill:#002169"/>
        </symbol>
        <symbol id="instagram" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38.58 37.97">
            <path d="M297.63,440.37a20.39,20.39,0,0,1-9.59-2.45,19.34,19.34,0,0,1-6-5.11,18.71,18.71,0,0,1,.34-23.29,18.72,18.72,0,0,1,11.19-6.72,19,19,0,0,1,16.28,4.1,18,18,0,0,1,5.72,8.07,18.29,18.29,0,0,1,.52,11.12,18.76,18.76,0,0,1-8.23,11.22A19.82,19.82,0,0,1,297.63,440.37Zm-.52-1.4c.36,0,.71,0,1.06,0a17.7,17.7,0,0,0,13-6.25A17.38,17.38,0,0,0,309,407.94a17.66,17.66,0,0,0-15.19-3.8,17.23,17.23,0,0,0-11.14,7.31,16.86,16.86,0,0,0-2.87,12.77A17.09,17.09,0,0,0,286.09,435,17.87,17.87,0,0,0,297.11,439Z" transform="translate(-278.19 -402.4)" style="fill:#002169"/>
            <path d="M297.49,432.89c-1.74-.05-3.49-.07-5.24-.14a6.83,6.83,0,0,1-3.46-1,5.88,5.88,0,0,1-2.78-4.38,32,32,0,0,1-.2-3.52c0-2.48,0-4.95.08-7.43a6.66,6.66,0,0,1,1.07-3.62,5.93,5.93,0,0,1,4.44-2.7,37.1,37.1,0,0,1,4.23-.2c2.1,0,4.2,0,6.3.05a9.24,9.24,0,0,1,2.61.36,5.92,5.92,0,0,1,4.33,4.67,19.09,19.09,0,0,1,.27,4c0,2.22,0,4.44,0,6.66a9,9,0,0,1-.44,2.9,6,6,0,0,1-4.36,4,14.78,14.78,0,0,1-3.45.32c-1.11,0-2.23,0-3.35,0Zm-9.62-11.54h0c0,1.08,0,2.16,0,3.24a19.44,19.44,0,0,0,.21,2.64,3.69,3.69,0,0,0,2.9,3.19,10.67,10.67,0,0,0,2.45.3q3.91.06,7.83,0a12.15,12.15,0,0,0,2.4-.25,3.71,3.71,0,0,0,3.06-3A8.56,8.56,0,0,0,307,426q.07-1.56.06-3.12c0-2.14,0-4.28-.07-6.42a6.16,6.16,0,0,0-.14-1.05,3.91,3.91,0,0,0-3.74-3.29,86,86,0,0,0-10.65-.08,5.73,5.73,0,0,0-1.95.42,3.42,3.42,0,0,0-2.13,2.21,8.15,8.15,0,0,0-.35,2C287.92,418.21,287.91,419.78,287.87,421.35Z" transform="translate(-278.19 -402.4)" style="fill:#002169"/>
            <path d="M303.47,421.39a6,6,0,1,1-5.92-5.94A6,6,0,0,1,303.47,421.39Zm-2.12.05a3.83,3.83,0,0,0-4-3.88,3.78,3.78,0,0,0-3.81,3.77,3.88,3.88,0,0,0,7.76.11Z" transform="translate(-278.19 -402.4)" style="fill:#002169"/>
        </symbol>
        <symbol id="youtube" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38.56 38.03">
            <path d="M296.71,440.11a19.35,19.35,0,0,1-16.29-10.26,18.79,18.79,0,0,1-2.11-7.36A18,18,0,0,1,280.63,412a18.73,18.73,0,0,1,11.79-9.21,19.35,19.35,0,0,1,18.18,4.34,18.51,18.51,0,0,1,5.69,9.64,18.26,18.26,0,0,1,.28,7.25,18.52,18.52,0,0,1-2.59,7,19,19,0,0,1-11.83,8.53A20.82,20.82,0,0,1,296.71,440.11Zm18.74-18.28a18.26,18.26,0,0,0-.89-6.21,17.51,17.51,0,0,0-6.94-9.11,17.78,17.78,0,0,0-12.1-3,17.95,17.95,0,0,0-13.88,9.39,17.55,17.55,0,0,0,5.11,22.25,18.1,18.1,0,0,0,24.39-2.63A16.87,16.87,0,0,0,315.45,421.83Z" transform="translate(-278.25 -402.08)" style="fill:#002169"/>
            <path d="M298,412.77l7.84.3a3.31,3.31,0,0,1,2.16.81,3.54,3.54,0,0,1,1.09,2.3,26,26,0,0,1,.26,3.05c0,1.55,0,3.1-.05,4.65a10,10,0,0,1-.44,3,3,3,0,0,1-2.58,2.12c-.7.08-1.4.14-2.11.17-4.48.2-9,.17-13.44,0a16.73,16.73,0,0,1-2.11-.2,2.74,2.74,0,0,1-2.45-2.07,12.4,12.4,0,0,1-.4-2.07,39.7,39.7,0,0,1,.1-8.3,7.64,7.64,0,0,1,.44-1.64,2.7,2.7,0,0,1,2.16-1.72,15.92,15.92,0,0,1,2.17-.2C293,412.89,295.23,412.84,298,412.77Zm3.35,8.18c-2.18-1.11-4.19-2.18-6.28-3.22v6.59Z" transform="translate(-278.25 -402.08)" style="fill:#002169"/>
        </symbol>
        <% } %>
</span>
