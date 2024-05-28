<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>


<%@page import="com.model.Book_l"%>
<%ArrayList book=(ArrayList)request.getAttribute("bok"); %>
<!DOCTYPE html>
<html style="font-size: 16px;"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content=""><meta name="description" content="">
    <title>Booking</title>
 <link rel="stylesheet" href="jspfile/nicepage.css" media="screen">
<link rel="stylesheet" href="jspfile/add_pac.css" media="screen">
    <script class="u-script" type="text/javascript" src="jspfile/jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="jspfile/nicepage.js" defer=""></script><meta name="generator" content="Nicepage 5.5.0, nicepage.com"><meta name="referrer" content="origin"></head>
<body class="u-body u-xl-mode" data-style="blank" data-posts="" data-global-section-properties="{&quot;colorings&quot;:{&quot;light&quot;:[&quot;clean&quot;],&quot;colored&quot;:[&quot;clean&quot;],&quot;dark&quot;:[&quot;dark&quot;]}}" data-source="blank" data-lang="en" data-page-sections-style="[{&quot;name&quot;:&quot;blank&quot;}]" data-page-coloring-types="{&quot;light&quot;:[&quot;clean&quot;],&quot;colored&quot;:[&quot;clean&quot;],&quot;dark&quot;:[&quot;dark&quot;]}" data-page-category="&quot;Basic&quot;"><section class="u-clearfix u-block-5c92-1" custom-posts-hash="[]" data-style="blank" data-section-properties="{&quot;margin&quot;:&quot;none&quot;,&quot;stretch&quot;:true}" id="sec-7edc" data-source="Blank" data-id="5c92">
<header class="u-clearfix u-header u-header" id="sec-3cc6"><div class="u-clearfix u-sheet u-sheet-1">
        <a href="Home.html" class="u-image u-logo u-image-1" title="Home">
          <img src="jspfile/images/default-logo.png" class="u-logo-image u-logo-image-1">
        </a>

        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1" data-responsive-from="MD">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-spacing-36 u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="jspfile/home_user.jsp" style="padding: 10px 20px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px;">Package</a><div class="u-nav-popup"><ul class="u-h-spacing-3 u-nav u-radius-42 u-unstyled u-v-spacing-11 u-nav-2"><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-1-light-1 u-nav-link u-palette-1-light-2" href="<%=request.getContextPath()%>/Package">Cancel Package</a>
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
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-4"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">Package</a><div class="u-nav-popup"><ul class="u-h-spacing-3 u-nav u-radius-42 u-unstyled u-v-spacing-11 u-nav-5"><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-1-light-1 u-nav-link u-palette-1-light-2">Cancel Package</a>
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
<div class="u-clearfix u-sheet u-valign-top u-block-5c92-2"><div class="u-form u-block-5c92-3">
    <form action="Ord" method="get">
        <input type="hidden" id="siteId" name="siteId" value="3990362">
        <input type="hidden" id="pageId" name="pageId" value="4038011">
        
        
        
        <div class="u-form-group u-form-select u-block-5c92-4">
    <label for="select-7dcd" class="u-label u-block-5c92-5">Starting</label>
    <div class="u-form-select-wrapper">
        <select id="select-7dcd" name="select" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white u-block-5c92-6">
            <option value="ADDIS ABEBA">Adiss Abeba</option>
                        <option value="DIRE DAWA">Dire Dawa</option>
                        <option value="BAHIRE DAR">Bahire Dar</option>
                        <option value="JIMMA">Jimma</option> 
                        <option value="MEKELE">Mekele</option>
                        <option value="GONDER">Gonder</option>
                        <option value="ARBA MINCHE">Arba Minche</option>
        </select>
        <svg class="u-caret u-caret-svg" version="1.1" id="Layer_1" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" style="fill:currentColor;" xml:space="preserve"><polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
    </div>
</div><div class="u-form-group u-form-select u-block-5c92-7">
    <label for="select-fc4c" class="u-label u-block-5c92-8">Destination</label>
    <div class="u-form-select-wrapper">
        <select id="select-fc4c" name="select-1" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white u-block-5c92-9">
                        <option id="DIRE_DAWA" value="DIRE DAWA">Dire Dawa</option>
                        <option id="BAHIRE_DAR" value="BAHIRE DAR">Bahire Dar</option>
                        <option id="JIMMA" value="JIMMA">Jimma</option> 
                        <option id="MEKELE" value="MEKELE">Mekele</option>
                        <option id="GONDER" value="GONDER">Gonder</option>
                        <option id="ARBA_MINCHE" value="ARBA MINCHE">Arba Minche</option>
                        <option id="adis" value="ADDIS ABEBA">Adiss Abeba</option>
        </select>
        <svg class="u-caret u-caret-svg" version="1.1" id="Layer_1"  x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" style="fill:currentColor;" xml:space="preserve"><polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
    </div>
</div><div class="u-form-group u-form-select u-block-5c92-10">
    <label for="select-8dd3" class="u-label u-block-5c92-11">Via</label>
    <div class="u-form-select-wrapper">
        <select id="select-8dd3" name="select-2" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white u-block-5c92-12">
           
                        <option value="BUS">BUS</option>
                        <option value="FLIGHT">FLIGHT</option>
                        <option value="TRAIN">TRAIN</option> 
        </select>
        <svg class="u-caret u-caret-svg" version="1.1" id="Layer_1" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" style="fill:currentColor;" xml:space="preserve"><polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
    </div>
</div><div class="u-align-left u-form-group u-form-submit u-block-5c92-13">
            <a href="#" class="u-btn u-btn-submit u-button-style u-block-5c92-14">Search<br></a>
            <input type="submit" value="submit" class="u-form-control-hidden">
        </div>
        <div class="u-form-send-message u-form-send-success">
            Thank you! Your message has been sent.
        </div>
        <div class="u-form-send-error u-form-send-message">
            Unable to send your message. Please fix errors then try again.
        </div>
        <input type="hidden" value="" name="recaptchaResponse">
    </form>
<script>
    let start = document.getElementById("select-7dcd");
    let dest = document.getElementById("select-fc4c");
    let DIRE_DAWA = document.getElementById("DIRE_DAWA");
    let BAHIRE_DAR = document.getElementById("BAHIRE_DAR");
    let JIMMA = document.getElementById("JIMMA");
    let MEKELE = document.getElementById("MEKELE");
    let GONDER = document.getElementById("GONDER");
    let ARBA_MINCHE = document.getElementById("ARBA_MINCHE");
    let addisababa = document.getElementById("adis");
    
    dest.removeChild(addisababa);
    
    start.onchange = (event) => {
       let val = event.target.value;
       if (val ===  "ADDIS ABEBA") {
           dest.removeChild(addisababa)
           dest.appendChild(DIRE_DAWA);
           dest.appendChild(BAHIRE_DAR);
           dest.appendChild(JIMMA );
           dest.appendChild(MEKELE );
           dest.appendChild(GONDER );
           dest.appendChild(ARBA_MINCHE);
           dest.disabled = false;
       }else {
           dest.removeChild(DIRE_DAWA);
           dest.removeChild(BAHIRE_DAR);
           dest.removeChild(JIMMA );
           dest.removeChild(MEKELE );
           dest.removeChild(GONDER );
           dest.removeChild(ARBA_MINCHE);
           dest.appendChild(addisababa);
           dest.value = "ADDIS ABEBA";
           
       }
    };
</script>
</div></div>
<style data-mode="XL">@media (min-width: 1200px) {
  .u-block-5c92-2 {
    min-height: 479px;
  }
  .u-block-5c92-3 {
    height: 419px;
    margin-top: 0;
    margin-right: 543px;
    margin-bottom: 60px;
    margin-left: 27px;
  }
  .u-block-5c92-4 {
    margin-left: 0;
  }
  .u-block-5c92-7 {
    margin-left: 0;
  }
  .u-block-5c92-10 {
    margin-left: 0;
  }
}</style><style data-mode="LG">@media (max-width: 1199px) and (min-width: 992px) {
  .u-block-5c92-2 {
    min-height: 479px;
  }
  .u-block-5c92-3 {
    height: 419px;
    margin-top: 0;
    margin-right: 370px;
    margin-bottom: 60px;
    margin-left: 0;
  }
  .u-block-5c92-4 {
    margin-left: 0;
  }
  .u-block-5c92-7 {
    margin-left: 0;
  }
  .u-block-5c92-10 {
    margin-left: 0;
  }
}</style><style data-mode="MD">@media (max-width: 991px) and (min-width: 768px) {
  .u-block-5c92-2 {
    min-height: 479px;
  }
  .u-block-5c92-3 {
    height: 419px;
    margin-top: 0;
    margin-right: 150px;
    margin-bottom: 60px;
    margin-left: 0;
  }
  .u-block-5c92-4 {
    margin-left: 0;
  }
  .u-block-5c92-7 {
    margin-left: 0;
  }
  .u-block-5c92-10 {
    margin-left: 0;
  }
}</style><style data-mode="SM">@media (max-width: 767px) and (min-width: 576px) {
  .u-block-5c92-2 {
    min-height: 479px;
  }
  .u-block-5c92-3 {
    height: 419px;
    margin-top: 0;
    margin-right: 0;
    margin-bottom: 60px;
    margin-left: 0;
  }
  .u-block-5c92-4 {
    margin-left: 0;
  }
  .u-block-5c92-7 {
    margin-left: 0;
  }
  .u-block-5c92-10 {
    margin-left: 0;
  }
}</style><style data-mode="XS">@media (max-width: 575px) {
  .u-block-5c92-2 {
    min-height: 479px;
  }
  .u-block-5c92-3 {
    height: 419px;
    margin-top: 0;
    margin-right: 0;
    margin-bottom: 60px;
    margin-left: 0;
  }
  .u-block-5c92-4 {
    margin-left: 0;
  }
  .u-block-5c92-7 {
    margin-left: 0;
  }
  .u-block-5c92-10 {
    margin-left: 0;
  }
}</style></section><section class="u-align-center u-clearfix u-block-8285-1" custom-posts-hash="[]" data-section-properties="{&quot;margin&quot;:&quot;none&quot;,&quot;stretch&quot;:true}" data-id="8285" data-posts-content="[]" data-style="table-8" id="carousel_a799" data-source="functional_fix">
  <div class="u-clearfix u-sheet u-valign-middle u-block-8285-2">
    <div class="u-expanded-width u-table u-table-responsive u-block-8285-40"><div class="hidden u-first-col-div u-block-8285-57"></div><div class="hidden u-table-header-style-div u-block-8285-58"></div><div class="hidden u-table-footer-style-div u-block-8285-59"></div><div class="hidden u-table-body-style-div u-block-8285-60"></div>
      <table class="u-table-entity u-block-8285-3">
        <colgroup>
          <col width="25%">
          <col width="25%">
          <col width="25%">
          <col width="25%">
        </colgroup>
        <thead class="u-align-center u-custom-font u-font-merriweather u-grey-10 u-table-header u-block-8285-4">
          <tr>
            <th class="u-table-cell u-block-8285-10">FROM </th>
            <th class="u-table-cell u-block-8285-11">TO </th>
            <th class="u-table-cell u-block-8285-12">VIA </th>
            <th class="u-table-cell u-block-8285-34">DATE</th>
          </tr>
        </thead>
        <tbody class="u-align-center u-table-alt-palette-1-base u-table-body u-block-8285-9">
         <%if(book!=null){ for(int i=0;i<book.size();i++){%>
       <%Book_l co = (Book_l) book.get(i);%> 
             
              <tr style="height: 75px;">
                <td class="u-border-1 u-border-black u-table-cell u-button-style u-btn-rectangle"><%= co.getSt()%></td>
                <td class="u-border-1 u-border-black u-table-cell u-button-style u-btn-rectangle"><%= co.getDis()%></td>
                <td class="u-border-1 u-border-black u-table-cell u-button-style u-btn-rectangle"><%= co.getVia()%></td>
                <td class="u-border-1 u-border-black u-table-cell u-button-style u-btn-rectangle "><%= co.getDate()%></td>
                
                 <td class="u-border-1 u-border-black u-table-cell"><a href="Book_ind?&nam=<%= co.getSt()%>&nam2=<%= co.getDis()%>&date=<%= co.getDate()%>&via=<%= co.getVia()%>"  class="u-border-1 u-border-active-black u-border-hover-black u-border-no-left u-border-no-right u-border-no-top u-border-palette-3-base u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-hover-feature u-none u-radius-0 u-text-active-black u-text-body-color u-text-hover-black u-top-left-radius-0 u-top-right-radius-0 u-btn-1">BUY</a>
              </td>
              </tr><%}}%></tbody>
        
      </table>
    </div>
  </div>
  
  
  
  
  
<style data-mode="XL">@media (min-width: 1200px) {
  .u-block-8285-2 {
    min-height: 464px;
  }
  .u-block-8285-40 {
    margin-top: 42px;
    margin-bottom: 42px;
    margin-left: auto;
    margin-right: auto;
  }
  .u-block-8285-3 {
    min-height: 100px;
  }
  .u-block-8285-4 {
    background-image: none;
    font-size: 1.5rem;
    font-weight: 400;
  }
  .u-block-8285-35 {
    font-weight: 700;
  }
}</style><style data-mode="LG">@media (max-width: 1199px) and (min-width: 992px) {
  .u-block-8285-2 {
    min-height: 464px;
  }
  .u-block-8285-40 {
    margin-top: 42px;
    margin-bottom: 42px;
  }
  .u-block-8285-3 {
    min-height: 100px;
  }
  .u-block-8285-4 {
    background-image: none;
    font-size: 1.5rem;
    font-weight: 400;
  }
  .u-block-8285-35 {
    font-weight: 700;
  }
}</style><style data-mode="MD">@media (max-width: 991px) and (min-width: 768px) {
  .u-block-8285-2 {
    min-height: 464px;
  }
  .u-block-8285-40 {
    margin-top: 42px;
    margin-bottom: 42px;
  }
  .u-block-8285-3 {
    min-height: 100px;
  }
  .u-block-8285-4 {
    background-image: none;
    font-size: 1.5rem;
    font-weight: 400;
  }
  .u-block-8285-35 {
    font-weight: 700;
  }
}</style><style data-mode="SM" data-visited="true">@media (max-width: 767px) and (min-width: 576px) {
  .u-block-8285-2 {
    min-height: 464px;
  }
  .u-block-8285-40 {
    margin-top: 42px;
    margin-bottom: 42px;
  }
  .u-block-8285-3 {
    min-height: 100px;
  }
  .u-block-8285-4 {
    background-image: none;
    font-size: 1rem;
    font-weight: 400;
  }
  .u-block-8285-35 {
    font-weight: 700;
  }
}</style><style data-mode="XS">@media (max-width: 575px) {
  .u-block-8285-2 {
    min-height: 464px;
  }
  .u-block-8285-40 {
    margin-top: 42px;
    margin-bottom: 42px;
  }
  .u-block-8285-3 {
    min-height: 100px;
  }
  .u-block-8285-4 {
    background-image: none;
    font-size: 1rem;
    font-weight: 400;
  }
  .u-block-8285-35 {
    font-weight: 700;
  }
}</style></section>
</body></html>
