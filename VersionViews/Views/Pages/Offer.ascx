<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<%
    var label = ViewData["label"] as string ?? "This will be announced by screen readers.";
    var standfirst = ViewData["standfirst"] as string ?? string.Empty;
    var standlast = ViewData["standlast"] as string ?? string.Empty;
    var paymentInstallment = ViewData["paymentInstallment"] as int? ?? 1;
    var dollar = ViewData["dollar"] as string ?? "XX";
    var cent = ViewData["cent"] as string ?? string.Empty;
    var disclaimer = ViewData["disclaimer"] as string ?? string.Empty;
    var cssClasses = ViewData["cssClasses"] as string ?? string.Empty;

    var discountOf = ViewData["discountOf"] as ViewDataDictionary ?? new ViewDataDictionary();
    var hasDiscountOf = discountOf.Count() > 0;
%>

<% if (hasDiscountOf) {
    var dollarDiscountOf = discountOf["dollar"] as string ?? "XX";
    var centDiscountOf = discountOf["cent"] as string ?? string.Empty;
%>

<div class="offer offer--is-discount-from" aria-hidden="true" role="presentation">
    <div class="offer__price">
        <span class="offer__currency">$</span>
        <span class="offer__amt"><%= dollarDiscountOf %></span>
        <span class="offer__follow">
            <% if (!String.IsNullOrEmpty(cent))
                { %>
            <span class="offer__cent"><%= centDiscountOf %></span>
            <% } %>
        </span>
    </div>
</div>
<% } %>

<div class="offer offer--product <%= cssClasses %>">
    <div class="offer__sr-only"><%= label %></div>
    <div class="offer__in" aria-hidden="true" role="presentation">
        <% if (!String.IsNullOrEmpty(standfirst)) { %>
        <div class="offer__txt">
          <span><%= standfirst %></span>
        </div>
        <% } %>
        <div class="offer__price">
            <span class="offer__currency">$</span>
            <span class="offer__amt"><%= dollar %></span>
            <span class="offer__follow">
                <% if (!String.IsNullOrEmpty(cent))
                    { %>
                <span class="offer__cent"><%= cent %></span>
                <% } %>
                <% if (!String.IsNullOrEmpty(disclaimer)) { %>
                    <span class="offer__disclaimer"><%= disclaimer %></span>
                <% } %>
            </span>
        </div>
        <% if (!String.IsNullOrEmpty(standlast)) { %>
        <div class="offer__txt offer__txt--sm">
          <span><%= standlast %></span>
        </div>
        <% } %>
    </div>
</div>