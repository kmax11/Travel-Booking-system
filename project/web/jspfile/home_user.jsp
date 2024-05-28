<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.cost_list"%>
<%@page import="com.model.Pac_l"%>
<%ArrayList costt=(ArrayList)request.getAttribute("cost_list"); %>
<%ArrayList packk=(ArrayList)request.getAttribute("pac"); %>


<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="The mountains are calling and I must go, ​Speak to our expertat &nbsp;&nbsp;1-800-453-6744, Enhance Your Experience, Why Us?, ​Deals &amp;amp; Discounts, North Expeditions, Contact Us">
    <meta name="description" content="">
    <title>HOME</title>
    <link rel="stylesheet" href="jspfile/nicepage_2.css" media="screen">
<link rel="stylesheet" href="jspfile/home_user.css" media="screen">
    <script class="u-script" type="text/javascript" src="jspfile/jquery-1.9.1.min_2.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="jspfile/nicepage_2.js" defer=""></script>
    
    
    
    
    
    
    
    
    
   
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="home_user">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
  <body class="u-body u-xl-mode" data-lang="en"><header class="u-clearfix u-header u-header" id="sec-3cc6"><div class="u-clearfix u-sheet u-sheet-1">
        <a href="<%=request.getContextPath()%>/List_cost" class="u-image u-logo u-image-1" title="Home">
          <img src="jspfile/images/default-logo.png" class="u-logo-image u-logo-image-1">
        </a>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1" data-responsive-from="MD">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="<%=request.getContextPath()%>/List_cost">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-spacing-36 u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="<%=request.getContextPath()%>/List_cost" style="padding: 10px 20px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px;">Package</a><div class="u-nav-popup"><ul class="u-h-spacing-3 u-nav u-radius-42 u-unstyled u-v-spacing-11 u-nav-2"><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-1-light-1 u-nav-link u-palette-1-light-2" href="<%=request.getContextPath()%>/Package" >Cancel Package</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px;">Travels</a><div class="u-nav-popup"><ul class="u-h-spacing-3 u-nav u-radius-42 u-unstyled u-v-spacing-11 u-nav-3"><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-1-light-1 u-nav-link u-palette-1-light-2" href="<%=request.getContextPath()%>/order">Buy</a>
</li><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-1-light-1 u-nav-link u-palette-1-light-2" href="<%=request.getContextPath()%>/My_book">My booking</a>
</li></ul>
</div>
</li>
<%if(request.getSession().getAttribute("username")==null){%>
<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px;" href="<%=request.getContextPath()%>/check">Log In</a>
</li><%}else{%><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px;" ><%= request.getSession().getAttribute("username") %></a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px;" href="<%=request.getContextPath()%>/logout">Log Out</a><%}%>
</ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-4"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="<%=request.getContextPath()%>/List_cost">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">Package</a><div class="u-nav-popup"><ul class="u-h-spacing-3 u-nav u-radius-42 u-unstyled u-v-spacing-11 u-nav-5"><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-1-light-1 u-nav-link u-palette-1-light-2" href="jspfile/pac_ind.jsp">Cancel Package</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">Travels</a>

<div class="u-nav-popup"><ul class="u-h-spacing-3 u-nav u-radius-42 u-unstyled u-v-spacing-11 u-nav-6"><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-1-light-1 u-nav-link u-palette-1-light-2" href="<%=request.getContextPath()%>/order">Buy</a>
</li><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-1-light-1 u-nav-link u-palette-1-light-2">My booking</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" >Log In</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
    <section class="u-clearfix u-image u-section-1" id="sec-06b1" >
      <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-text u-text-palette-3-base u-text-1" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="0"  >The mountains are calling and I must go</h1>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-container-align-center u-palette-5-dark-2 u-section-2" id="carousel_f61d">
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
  
      
      
      
      
      
      
      
      
      
      <div class="u-clearfix u-sheet u-valign-middle-sm u-valign-middle-xs u-sheet-1">
        <div class="u-expanded-width u-list u-list-1">
          <div class="u-repeater u-repeater-1">
     <% for(int i=0;i<packk.size();i++){%>
       <%Pac_l co = (Pac_l) packk.get(i);%>       
            <div class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-white u-list-item-1">
     
              <div class="u-container-layout u-similar-container u-valign-top u-container-layout-1">
                <img class="u-expanded-width u-image u-image-default u-image-1" src="jspfile/images/bnbn.jpg" alt="" data-image-width="900" data-image-height="600">
                <h4 class="u-hover-feature u-text u-text-1"><%= co.getPac_dist()%></h4>
                <p class="u-hover-feature u-text u-text-2"><%= co.getPac_contains()%></p>
                <h4 class="u-text u-text-3">PRICE <%= co.getPac_price()%></h4>
                <a href="Buy_package?nam1=<%= co.getPac_id()%>"  class="u-border-1 u-border-active-black u-border-hover-black u-border-no-left u-border-no-right u-border-no-top u-border-palette-3-base u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-hover-feature u-none u-radius-0 u-text-active-black u-text-body-color u-text-hover-black u-top-left-radius-0 u-top-right-radius-0 u-btn-1">BUY</a>
              </div>
 
            </div>
 <%}%>

          </div>
        </div>
        <p class="u-align-center-xxl u-text u-text-body-alt-color u-text-13"> Package <br>
<br>
Title:--<b> Travel Booking System</b><br><br>
<b>Group Members  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      Id</b><br>
Abel Wendmu       &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    Ugr/22573/13<br>
Gezahegn Gulilat   &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;    Ugr/22707/13<br>
 Roza mekete     &nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;     Ugr/23406/13<br>
Kidus Asrat      &nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;    Ugr/24051/13<br>
Nazrawit Netsanet   &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;    Ugr/23127/13<br>
 

<a href="https://www.freepik.com/" class="u-border-1 u-border-active-palette-4-light-1 u-border-hover-palette-4-light-1 u-border-no-left u-border-no-right u-border-no-top u-border-white u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-link u-button-style u-none u-radius-0 u-text-body-alt-color u-top-left-radius-0 u-top-right-radius-0 u-btn-5" target="_blank"></a>
        </p>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-image u-shading u-section-3" id="carousel_efbf" data-image-width="1600" data-image-height="1067">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <h2 class="u-custom-font u-font-source-sans-pro u-text u-text-1">Cost of our Service</h2>
        <p class="u-text u-text-2"> We provide Transportation via Bus ,Train and Flight Our range of Service from ADDIS ABEBA TO Main city or to Main city to ADDIS ABEBA  </p>
        <div class="u-expanded-width u-table u-table-responsive u-table-1">
          <table class="u-table-entity">
            <colgroup>
              <col width="25%">
              <col width="25%">
              <col width="25%">
              <col width="25%">
            </colgroup>
            <thead class="u-palette-5-dark-3 u-table-header u-table-header-1">
              <tr style="height: 70px;">
                <th class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-1">FROM </th>
                <th class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-2">TO</th>
                <th class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-3">VIA FLIGHT</th>
                <th class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-4">VIA BUS</th>
                <th class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-4">VIA TRAIN</th>
              </tr>
            </thead>
            <tbody class="u-black u-table-body u-table-body-1">
  
        <% for(int i=0;i<costt.size();i++){%>
       <%cost_list co = (cost_list) costt.get(i);%>
 <tr style="height: 66px;">
    <td class="u-border-1 u-border-palette-5-dark-1 u-table-cell u-table-cell-5"><%= co.getStart()%></td>
    <td class="u-border-1 u-border-palette-5-dark-1 u-table-cell u-table-cell-5"><%= co.getDistn()%></td>
    <td class="u-border-1 u-border-palette-5-dark-1 u-table-cell u-table-cell-5"><%= co.getFlight()%></td>
    <td class="u-border-1 u-border-palette-5-dark-1 u-table-cell u-table-cell-5"><%= co.getBus()%></td>
    <td class="u-border-1 u-border-palette-5-dark-1 u-table-cell u-table-cell-5"><%= co.getTrian()%></td>
  </tr>
     

<%}%>

            </tbody>
          </table>
        </div>
        
      </div>
    </section>
    <section class="u-align-center u-clearfix u-palette-5-light-2 u-section-4" id="carousel_f588">
      <div class="u-expanded-width u-palette-5-dark-2 u-shape u-shape-rectangle u-shape-1"></div>
      <div class="u-align-center u-container-align-center u-container-style u-group u-shape-rectangle u-group-1" data-animation-name="customAnimationIn" data-animation-duration="1500">
        <div class="u-container-layout u-valign-middle">
          <h2 class="u-align-center u-text u-text-body-alt-color u-text-1">For more Information call to <br>at &nbsp;<span class="u-file-icon u-icon u-text-white u-icon-1"><img src="jspfile/femin.jpg" alt=""></span>&nbsp;<a href="https://nicepage.com/c/contacts-website-templates" class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-3-base u-btn-1">+251943434309</a>
          </h2>
        </div>
      </div>
      <div class="u-clearfix u-gutter-20 u-layout-wrap u-layout-wrap-1">
        <div class="u-layout">
          <div class="u-layout-row">
            <div class="u-size-30 u-size-60-md">
              <div class="u-layout-col">
                <div class="u-size-40">
                  <div class="u-layout-row">
                    <div class="u-container-align-center u-container-style u-image u-layout-cell u-shading u-size-60 u-image-1" data-image-width="800" data-image-height="800">
                      <div class="u-container-layout u-valign-middle u-container-layout-2">
                        <h3 class="u-align-center u-text u-text-default u-text-2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""> Dibre Birhan</h3>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="u-size-20">
                  <div class="u-layout-row">
                    <div class="u-container-align-center u-container-style u-image u-layout-cell u-shading u-size-30 u-image-2" data-image-width="800" data-image-height="800">
                      <div class="u-container-layout u-valign-middle u-container-layout-3">
                        <h3 class="u-align-center u-text u-text-default u-text-3" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">Addis Abeba</h3>
                      </div>
                    </div>
                    <div class="u-container-align-center u-container-style u-image u-layout-cell u-shading u-size-30 u-image-3" data-image-width="800" data-image-height="800">
                      <div class="u-container-layout u-valign-middle u-container-layout-4">
                        <h3 class="u-align-center u-text u-text-default u-text-4" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">Gonder</h3>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-size-30 u-size-60-md">
              <div class="u-layout-col">
                <div class="u-size-20">
                  <div class="u-layout-row">
                    <div class="u-container-align-center u-container-style u-image u-layout-cell u-shading u-size-30 u-image-4" data-image-width="800" data-image-height="800">
                      <div class="u-container-layout u-valign-middle u-container-layout-5">
                        <h3 class="u-align-center u-text u-text-default u-text-5" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">Adama</h3>
                      </div>
                    </div>
                    <div class="u-container-align-center u-container-style u-image u-layout-cell u-shading u-size-30 u-image-5" data-image-width="800" data-image-height="800">
                      <div class="u-container-layout u-valign-middle u-container-layout-6">
                        <h3 class="u-align-center u-text u-text-default u-text-6" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">Harar</h3>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="u-size-40">
                  <div class="u-layout-row">
                    <div class="u-container-align-center u-container-style u-image u-layout-cell u-shading u-size-60 u-image-6" data-image-width="800" data-image-height="800">
                      <div class="u-container-layout u-valign-middle u-container-layout-7">
                        <h3 class="u-align-center u-text u-text-default u-text-7" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">Dire Dawa</h3>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <p class="u-text u-text-default u-text-8">Packages <a  class="u-active-none u-border-1 u-border-active-black u-border-hover-black u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-2 u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-link u-button-style u-hover-none u-none u-radius-0 u-text-active-black u-text-body-color u-text-hover-black u-top-left-radius-0 u-top-right-radius-0 u-btn-2" target="_blank">We provide</a>
      </p>
    </section>
    <section class="u-clearfix u-valign-top-xl u-section-5" id="carousel_faec">
      <div class="u-expanded-width u-palette-3-base u-shape u-shape-rectangle u-shape-1"></div>
      <img class="u-image u-image-1" src="images/edfed.jpg">
      <div class="u-clearfix u-gutter-50 u-layout-wrap u-layout-wrap-1">
        <div class="u-layout">
          <div class="u-layout-row">
            <div class="u-size-37">
              <div class="u-layout-col">
                <div class="u-container-style u-layout-cell u-left-cell u-size-60 u-white u-layout-cell-1">
                  <div class="u-container-layout u-valign-middle u-container-layout-1">
                    <h2 class="u-text u-text-default u-text-1"> Deals &amp; Discounts</h2>
                    <p class="u-text u-text-default u-text-2">Discounts are often offered during special occasions or holidays, such as Black Friday or Christmas. These promotions can help boost sales during specific times of the year. </p>
                    <p class="u-text u-text-default u-text-3"><a href="" class="u-border-1 u-border-no-left u-border-no-right u-border-no-top u-border-palette-3-base u-btn u-button-link u-button-style u-none u-text-body-color u-btn-1" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">Freepik</a>
                    </p>
                    <a href="https://nicepage.dev" class="u-btn u-button-style u-palette-3-base u-btn-2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">read more</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-size-23">
              <div class="u-layout-col">
                <div class="u-container-style u-hidden-sm u-hidden-xs u-layout-cell u-right-cell u-size-30 u-layout-cell-2">
                  <div class="u-container-layout u-container-layout-2"></div>
                </div>
                <div class="u-container-style u-image u-layout-cell u-right-cell u-size-30 u-image-2">
                  <div class="u-container-layout u-container-layout-3"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-container-align-center u-section-6" id="carousel_fa54">
      <div class="u-clearfix u-sheet u-valign-middle-lg u-valign-middle-xl u-sheet-1">
        <h2 class="u-align-center u-text u-text-default u-text-1">Contact Us</h2>
        <h5 class="u-align-center u-custom-font u-text u-text-font u-text-2"> Any questions or remarks? Just write us a message!</h5>
        <div class="u-expanded-width-xs u-form u-form-1">
          <form action="https://forms.nicepagesrv.com/v2/form/process" class="u-clearfix u-form-spacing-32 u-form-vertical u-inner-form" source="email" name="form" style="padding: 10px;">
            <div class="u-form-email u-form-group u-form-partition-factor-2">
              <label for="email-bb9b" class="u-label">Email</label>
              <input type="email" placeholder="Enter a valid email address" id="email-bb9b" name="email" class="u-grey-10 u-input u-input-rectangle u-input-1" required="">
            </div>
            <div class="u-form-group u-form-name u-form-partition-factor-2">
              <label for="name-bb9b" class="u-label">Name</label>
              <input type="text" placeholder="Enter your Name" id="name-bb9b" name="name" class="u-grey-10 u-input u-input-rectangle u-input-2" required="">
            </div>
            <div class="u-align-left u-form-group u-form-submit">
              <a href="#" class="u-border-none u-btn u-btn-submit u-button-style u-palette-3-base u-btn-1">Submit</a>
              <input type="submit" value="submit" class="u-form-control-hidden">
            </div>
            <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
            <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
            <input type="hidden" value="" name="recaptchaResponse">
            <input type="hidden" name="formServices" value="b4842245dd1d8b12e6629f5ee6f85a10">
          </form>
        </div>
       
            
          </div>
        
    </section>
    
    
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-8de2"><div class="u-clearfix u-sheet u-sheet-1">
        
      </div></footer>
   
  
</body></html>
