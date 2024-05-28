<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.cost_list"%>
<%@page import="com.model.Pac_l"%>
<%ArrayList costt=(ArrayList)request.getAttribute("cost_list"); %>
<%ArrayList packk=(ArrayList)request.getAttribute("packk"); %>


<!DOCTYPE html>
<html style="font-size: 16px;"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content=""><meta name="description" content="">
    <title></title>
 <link rel="stylesheet" href="jspfile/nicepage.css" media="screen">
<link rel="stylesheet" href="jspfile/add_pac.css" media="screen">
    <script class="u-script" type="text/javascript" src="jspfile/jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="jspfile/nicepage.js" defer=""></script><meta name="generator" content="Nicepage 5.5.0, nicepage.com"><meta name="referrer" content="origin"></head>
<body class="u-body u-xl-mode" data-style="blank" data-posts="" data-global-section-properties="{&quot;colorings&quot;:{&quot;light&quot;:[&quot;clean&quot;],&quot;colored&quot;:[&quot;clean&quot;],&quot;dark&quot;:[&quot;dark&quot;]}}" data-source="blank" data-lang="en" data-page-sections-style="[{&quot;name&quot;:&quot;blank&quot;}]" data-page-coloring-types="{&quot;light&quot;:[&quot;clean&quot;],&quot;colored&quot;:[&quot;clean&quot;],&quot;dark&quot;:[&quot;dark&quot;]}" data-page-category="&quot;Basic&quot;">
<section class="u-clearfix u-block-5c92-1" custom-posts-hash="[]" data-style="blank" data-section-properties="{&quot;margin&quot;:&quot;none&quot;,&quot;stretch&quot;:true}" id="sec-7edc" data-source="Blank" data-id="5c92">
<header class="u-clearfix u-header u-header" id="sec-3cc6"><div class="u-clearfix u-sheet u-sheet-1">
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
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px;">Package</a><div class="u-nav-popup"><ul class="u-h-spacing-3 u-nav u-radius-42 u-unstyled u-v-spacing-11 u-nav-2"><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-1-light-1 u-nav-link u-palette-1-light-2" href="<%=request.getContextPath()%>/List_cost">Cancel Package</a>
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
</li><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-1-light-1 u-nav-link u-palette-1-light-2" href="<%=request.getContextPath()%>/My_book">My booking</a>
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

     <section class="u-align-center u-clearfix u-container-align-center u-palette-5-dark-2 u-section-2" id="carousel_f61d">

      <div class="u-clearfix u-sheet u-valign-middle-sm u-valign-middle-xs u-sheet-1">
        <div class="u-expanded-width u-list u-list-1">
          <div class="u-repeater u-repeater-1">

     <% if(packk!=null){for(int i=0;i<packk.size();i++){%>
       <%Pac_l co = (Pac_l) packk.get(i);%>  
<form action="Del_package" method="post">
    <input type="hidden" name="id" value="<%= co.getPac_id()%>">
         
            <div class="u-align-center u-container-style u-list-item u-repeater-item u-shape-rectangle u-white u-list-item-1">
     
              <div class="u-container-layout u-similar-container u-valign-top u-container-layout-1">
                <img class="u-expanded-width u-image u-image-default u-image-1" src="jspfile/images/bnbn.jpg" alt="" data-image-width="900" data-image-height="600">
                <h4 class="u-hover-feature u-text u-text-1"><%= co.getPac_dist()%></h4>
                <p class="u-hover-feature u-text u-text-2"><%= co.getPac_contains()%></p>
                <h4 class="u-text u-text-3">PRICE <%= co.getPac_price()%></h4>
                <a   class="u-border-1 u-border-active-black u-border-hover-black u-border-no-left u-border-no-right u-border-no-top u-border-palette-3-base u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-hover-feature u-none u-radius-0 u-text-active-black u-text-body-color u-text-hover-black u-top-left-radius-0 u-top-right-radius-0 u-btn-1"><input type="submit" value="CANCEL"></a>
              </div>
 

            </div></form>
 <%}}%>

          </div>
        </div>
        <p class="u-align-center u-text u-text-body-alt-color u-text-13">My Package <a href="https://www.freepik.com/" class="u-border-1 u-border-active-palette-4-light-1 u-border-hover-palette-4-light-1 u-border-no-left u-border-no-right u-border-no-top u-border-white u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-link u-button-style u-none u-radius-0 u-text-body-alt-color u-top-left-radius-0 u-top-right-radius-0 u-btn-5" target="_blank"></a>
        </p>
      </div>
    </section></section>






</html>
