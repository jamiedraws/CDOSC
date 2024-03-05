using System.Web.Routing;
using System.Web.Mvc;
using Dtm.Framework.ClientSites.Web;
using System.Collections.Generic;
using Dtm.Framework.Models;

namespace CDOSC
{
    public class MvcApplication : ClientSiteApplication
    {
        protected override void OnAppStart()
        {
            var discountPercentpromoCodes = new Dictionary<string, decimal>()
            {
                { "SAVE20", 0.2M }, { "SURVEY30", .3M }
            };

            foreach (var discountPercentPromoCode in discountPercentpromoCodes)
            {
                DtmContext.PromoCodeRules.Add(new PromoCodeRule(discountPercentPromoCode.Key, PromoCodeRuleType.AddDiscountPercent, discountPercentPromoCode.Key, discountPercentPromoCode.Value, 1));
            }


            base.OnAppStart();
        }
        protected override void ConfigureAdditionalRoutes(RouteCollection routes)
        {
            routes.MapRoute("ReferAFriend", "Refer", new { controller = "ReferAFriend", action = "SendReferral" });

            base.ConfigureAdditionalRoutes(routes);
        }
    }
}