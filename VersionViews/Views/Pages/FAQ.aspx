<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<ClientSiteViewData>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<link rel="stylesheet" href="/css/faq.css?v=4">

<noscript>
  <style>
    .card__content {
      visibility: visible;
      max-height: none;
    }

    .card__copy {
      opacity: 1;
    }

    .card__icon {
      display: none;
    }

  </style>
</noscript>

<main aria-labelledby="main-title" class="view">
    <div id="main" class="view__anchor"></div>
    <div class="view__in">
      <div class="copy copy--article">
      <h2 id="main-title">Frequenty Asked Questions</h2>

      <ul class="copy__cards" aria-label="FAQ" itemscope itemtype="https://schema.org/FAQPage">

      <div class="card__links">
        <a href="#description">Description</a>
        <a href="#history">Product History</a>
        <a href="#characteristics">Characteristics</a>
        <a href="#environmental">Environmental</a>
        <a href="#medical">Medical/Safety</a>
        <a href="#packaging">Packaging</a>
        <a href="#performance">Performances/Uses</a>
        <a href="#qa">Q&amp;A</a>
      </div>

      <p class="center-text">Medical Information? Have consumer call: <a href="tel:18882341828">1-888-234-1828</a></p>

        <li class="card" id="description">
          <button class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">Description</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div class="card__item card__content">

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Product Description</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <picture itemprop="image" data-src-img="/images/products/product.jpg" data-attr='{ "alt" : "OxiClean&trade; Concentrated Refill Package" }' class="contain contain--concentrated-refills"></picture>
                <div itemprop="text">
                    <h4>Trademarks</h4>
                    <ul>
                        <li>OXICLEAN Refillable Cleaner&trade;</li>
                        <li>POWERFUL CLEAN. LESS WASTE&trade;.</li>
                    </ul><br>
                    
                    <h4>Trusted OxiClean&trade; power and versatility</h4>
                    <ul>
                        <li>Cuts grease and oil for tough kitchen messes</li>
                        <li>Dissolves soap scum on counters, sinks, tubs & tile</li>
                        <li>Destroys dirt & grime on high-traffic counters, appliances, and furniture</li>
                    </ul><br>

                    <h4>Real Sustainability Impact</h4>
                    <ul>
                        <li>80% Less Plastic &ndash; every time you refill</li>
                        <li>85% Fewer Trucks &ndash; Removing the water means less packaging, less weight, and fewer trucks on the road.</li>
                        <li>Zero Waste Refills - Without cartridges or wrappers, our refill paks completely dissolve in water.</li>
                    </ul>
                </div>
              </div>
            </div>

            <div class="card__copy">
                <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                    <p><strong>Size/UPC/Price</strong></p>
                  </div>
                  <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                    <div itemprop="text">
                      <h4>Sizes</h4>
                      <p>Starter Kit: 16 oz. Bottle w/Trigger Pump Sprayer <br>
                        1 Canister w/ 4 X 7ml paks
                        </p>
                        <p>Refill: Refill: 1 Canister w/ 4 &ndash; 7ml paks	N/A	
                            </p>
                        <h4>UPC</h4>
                        <h4>Price</h4>
                        <p>Starter Kit: $9.99</p>
                        <p>Refill: $8.99</p>
                        <h4>Status</h4>
                        <p>Active</p>
                    </div>
                  </div>
            </div>

          </div>
        </li>

        <li class="card" id="history">
          <button class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">Product History</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div class="card__item card__content">

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Product History</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>2021 November 11th - Product Launch</p>
                </div>
              </div>
            </div>

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Regulated By</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>Cosmetic</p>
                </div>
              </div>
            </div>

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Manufacturing Location</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>USA</p>
                </div>
              </div>
            </div>

          </div>
        </li>

        <li class="card" id="characteristics">
          <button class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">Characteristics</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div class="card__item card__content">

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Animal By-Products</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>No</p>
                </div>
              </div>
            </div>
            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Color</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>Yellow</p>
                </div>
              </div>
            </div>
            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Fragrance</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>Lemon</p>
                </div>
              </div>
            </div>
            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Gluten</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>N/A</p>
                </div>
              </div>
            </div>
            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Texture</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>Liquid</p>
                </div>
              </div>
            </div>


          </div>
        </li>

        <li class="card" id="environmental">
          <button class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">Environmental</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div class="card__item card__content">

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Can the empty product be recycled?</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>Yes, please refer to How to Recycle info on the label</p>
                </div>
              </div>
            </div>

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>How to dispose of unused product?</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>Please refer to How to Recycle information on the label or follow local government directives.</p>
                </div>
              </div>
            </div>

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Is the packaging biodegradable?</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>No</p>
                </div>
              </div>
            </div>
            
            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>How to dispose of packaging?</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>Refer to product labeling.</p>
                </div>
              </div>
            </div>

          </div>
        </li>

        <li class="card" id="recyclability">
          <button class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">Recyclability</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div class="card__item card__content">

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Is the package made from recycled materials?</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>No</p>
                </div>
              </div>
            </div>

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Shelf Life</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>Stable for at least 1 year.</p>
                </div>
              </div>
            </div>

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Is the product safe for septic systems?</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>No</p>
                </div>
              </div>
            </div>

          </div>
        </li>

        <li class="card" id="medical">
          <button class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">Medical Safety / Warnings</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div class="card__item card__content">

            <div class="card__copy">

              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>If Swallowed</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>Call a poison control center or doctor immediately for treatment advice. Have person sip a glass of water if able to swallow.</p>
                  <p>Do not induce vomiting unless told to by a poison control center or doctor. Do not give anything by mouth to an unconscious person.</p>
                </div>
              </div>
            </div>

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>If On Skin</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
					<p>Take off contaminated clothing. Rinse skin immediately with plenty of water for 15-20 minutes. Call a poison control center or doctor for treatment advice. </p>
                </div>
              </div>
            </div>

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>If Inhaled</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">

                  <p>Move person to fresh air. If person is not breathing, call 911 or an ambulance then give artificial respiration, preferably by mouth, if possible. Call a poison control center or doctor for further treatment advice.</p>

                </div>
              </div>
            </div>

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>If In Eyes</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>Hold eye open and rinse slowly and gently with water for 15-20 minutes. Remove contact lenses, if present, after the first 5 minutes, then continue rinsing. Call a poison control center for treatment advice. Have the Product container or label with you when calling a poison control center or doctor or going for treatment. For general information on product use, call the National Pesticides Information Center at 1-800-858-7378. For emergencies, call the poison control center 1-800-222-1222.</a>
                </div>
              </div>
            </div>

          </div>
        </li>

        <li class="card" id="packaging">
          <button class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">Packaging</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div class="card__item card__content">

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Manufacturing Code Format</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>2 alpha and 4 numeric digits</p>
                </div>
              </div>
            </div>

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Location/Print Type</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>Bottom of the Canister containing Paks</p>
                </div>
              </div>
            </div>

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Example</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>LL1045</p>
                </div>
              </div>
            </div>

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>How To Read</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                  <p>Letters represent manufacturing facility <br>
                    First digit represents the year (2021) <br>
                    Last 3 digits represents the day of the year (45th day) <br>
                    45th day of 2021
                    </p>
                </div>
              </div>
            </div>

          </div>
        </li>
        

        <li class="card" id="performance">
          <button class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">Performance / Uses</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div class="card__item card__content">

            <div class="card__copy">
              <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <p><strong>Directions For Use</strong></p>
              </div>
              <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text">
                 <p>For use on: Hard, non-porous surfaces such as glazed tile, laminate, countertops, stovetops, appliance exteriors, sinks, floors, washable walls, cabinets and bathtubs.</p>
                 <p> DIRECTIONS FOR USE:<br>
                 Read and follow all directions and precautions on this product label. To Operate. Turn nozzle to &ldquo;ON&rsquo; position.</p>
                 <p> Safe to use on hard non-porous surfaces like glazed tile, wood, laminate, porcelain, granite, stainless steel, vinyl, and glass.</p>
                 <p> Warning: Concentrated cleaning product packets can burst if children put them in mouth or play with them. The liquid inside is harmful if put in mouth, swallowed, or in eyes. Packets are a choking hazard. KEEP PACKETS OUT OF REACH OF CHILDREN AND PETS.</p>
                 <p> Store container where children cannot reach or climb to it, out of sight and in a secure place; Keep container fully closed; Never leave any packets out of container; DO NOT let children handle packets, even if supervised.</p>
                 <p> Avoid breaking packets: Do not handle packets with wet or moist hands: Do not expose packets to moisture. Do not cut or puncture packets; If packets stick together, do not try to separate them.</p>
                 <p> Dilute product only in supplied spray bottle. <br>FIRST AID: Call poison control center immediately if cleaning product get in mouth or eye or on skin, immediately raise eye or skin with water for 15 minutes.</p>
                </div>
              </div>
            </div>

          </div>
        </li>

        <li class="card" id="qa">
            <button class="card__item card__tab">
              <div class="card__title">
                <span itemprop="name">Q&amp;A</span>
                <span class="card__corner">
                  <span class="card__icon"></span>
                </span>
              </div>
            </button>
            <div class="card__item card__content">
  
              <div class="card__copy">
                <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                  <p><strong>On which surfaces can this be used on?</strong></p>
                </div>
                <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                  <div itemprop="text">
                    <p>Safe for use on hard non-porous surfaces like glazed tile, wood, laminate, porcelain, granite, stainless steel, vinyl, and glass.</p>
                    <p>Use throughout the home on washable walls, appliance exteriors, stovetop, cabinets, countertops, wood floors, sinks, bathroom fixtures, and tub and tile.</p>
                    <p><strong>This product is NOT recommended for use on porous surfaces like unsealed marble.</strong></p>
                    <p><strong>This product is NOT recommended for use on soft surfaces or fabrics.</strong></p>  
                  </div>
                </div>
              </div>
              <div class="card__copy">
                <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                  <p><strong>Does this product disinfect?</strong></p>
                </div>
                <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                  <div itemprop="text">
                    <p>No, this product is not a disinfectant.</p>  
                  </div>
                </div>
              </div>
              <div class="card__copy">
                <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                  <p><strong>How long does it take the Refill Paks to dissolve?</strong></p>
                </div>
                <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                  <div itemprop="text">
                    <p>In warm water, 2 refill paks should dissolve in 2-5 minutes with some gentle agitation.</p>  
                  </div>
                </div>
              </div>
              <div class="card__copy">
                <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                  <p><strong>Can I use a different spray bottle than the one included in the Starter Kit?</strong></p>
                </div>
                <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                  <div itemprop="text">
                    <p>The OxiClean All-Purpose Refill Paks are only recommended for use with the 16oz spray bottle included in the Starter Kit to maintain the correct dilution and cleaning performance.</p>  
                  </div>
                </div>
              </div>
              <div class="card__copy">
                <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                  <p><strong>Can I order more Refill Paks?</strong></p>
                </div>
                <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                  <div itemprop="text">
                    <p>Yes, the OxiClean All-Purpose Refill Paks are available for reorder at www.oxicleanrefillablecleaners.com, while supplies last.</p>  
                  </div>
                </div>
              </div>
              <div class="card__copy">
                <div itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                  <p><strong>How do I open the Refill Pak Canister?</strong></p>
                </div>
                <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                  <div itemprop="text">
                    <p>The refill canister is designed to be difficult for small children to open and is Child-Resistant Certified.  To open, squeeze the sides of the canister to release the lid.  Always close the lid completely after use.  Always keep refill paks away from children.</p>  
                  </div>
                </div>
              </div>
  
            </div>
          </li>

      </ul>

    </div>
  </div>
</main>

<script defer src="/js/card.js"></script>

</asp:Content>