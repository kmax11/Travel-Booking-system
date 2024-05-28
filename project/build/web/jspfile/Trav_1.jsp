<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.cost_list"%>
<%@page import="com.model.Pac_l"%>
<%@page import="com.model.Book_l"%>
<%ArrayList costt=(ArrayList)request.getAttribute("cost_list"); %>
<%ArrayList packk=(ArrayList)request.getAttribute("pac"); %>
<%ResultSet Book=(ResultSet)request.getAttribute("mybook"); %>

<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>Travels</title>
    <link rel="stylesheet" href="jspfile/nicepage_3.css" media="screen">
<link rel="stylesheet" href="jspfile/Trav.css" media="screen">
    <script class="u-script" type="text/javascript" src="jspfile/jquery-1.9.1.min_3.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="jspfile/nicepage_4.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.4.4, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Travels">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
  <body class="u-body u-xl-mode" data-lang="en"><header class="u-clearfix u-header u-header" id="sec-3cc6"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <a href="https://nicepage.com" class="u-image u-logo u-image-1">
          <img src="images/default-logo.png" class="u-logo-image u-logo-image-1">
        </a>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="Home.html" style="padding: 10px 20px;" href="<%=request.getContextPath()%>/List_cost">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px;">Package</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item">
</li>
<li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-1-light-1 u-nav-link u-palette-1-light-2" href="<%=request.getContextPath()%>/Package" >Cancel Package</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px;">Travels</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item">
</li><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-1-light-1 u-nav-link u-palette-1-light-2" href="<%=request.getContextPath()%>/My_book">My booking</a>
</li>
<li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-1-light-1 u-nav-link u-palette-1-light-2" href="<%=request.getContextPath()%>/order">Buy</a></ul>
</div>
</li><%if(request.getSession().getAttribute("username")==null){%>
<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px;" href="<%=request.getContextPath()%>/check">Log In</a>
</li><%}else{%><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px;" ><%= request.getSession().getAttribute("username") %></a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px;" href="<%=request.getContextPath()%>/logout">Log Out</a><%}%>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-4"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">Package</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="<%=request.getContextPath()%>/Package">Add Package</a>
</li>
<li class="u-nav-item"><a class="u-button-style u-nav-link" href="<%=request.getContextPath()%>/Package">Cancel Packages</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">Travels</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="<%=request.getContextPath()%>/Edit_trav">Edit</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">Cancel</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">Log Out</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
    <section class="u-clearfix u-section-1" id="sec-1314">
      <div class="u-clearfix u-sheet u-sheet-1"></div>
    </section>
    <section class="u-align-center u-clearfix u-image u-shading u-section-3" id="carousel_efbf" data-image-width="1600" data-image-height="1067">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <h2 class="u-custom-font u-font-source-sans-pro u-text u-text-1">History of Your Books</h2>
        <p class="u-text u-text-2">you can Cancel the Booking</p>
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
                <th class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-3">VIA</th>
                <th class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-4">DATE</th>
                <th class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-4">TIN NUMBER</th>
                <th class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-4">CANCEL BOOK</th>
              </tr>
            </thead>
            <tbody class="u-black u-table-body u-table-body-1">
  
         <% while(Book.next()){%>
       
 <tr style="height: 66px;">
    <td class="u-border-1 u-border-palette-5-dark-1 u-table-cell u-table-cell-5"><%= Book.getString("start")%></td>
    <td class="u-border-1 u-border-palette-5-dark-1 u-table-cell u-table-cell-5"><%= Book.getString("distn")%></td>
    <td class="u-border-1 u-border-palette-5-dark-1 u-table-cell u-table-cell-5"><%= Book.getString("via")%></td>
    <td class="u-border-1 u-border-palette-5-dark-1 u-table-cell u-table-cell-5"><%= Book.getString("date")%></td>
    <td class="u-border-1 u-border-palette-5-dark-1 u-table-cell u-table-cell-5"><%= Book.getString("tin_no")%></td>
   
<td class="u-border-1 u-border-white u-table-cell"><a href="Del_my_bok?nam1=<%= Book.getString("tin_no")%>"  class="u-border-1 u-border- u-border-hover-color-1-light-1 u-border-no-left u-border-no-right u-border-no-top u-border-palette-3-base u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn-1 u-button-style u-hover-feature u-none u-radius-0 u-text-active-white u-text-body-color u-text-hover-white u-top-left-radius-0 u-top-right-radius-0 u-btn-1">CANCEL</a>
              </td>
  </tr>
     

<%}%>

            </tbody>
          </table>
        </div>
        <p class="u-text u-text-body-alt-color u-text-3">Your Books <a  class="u-active-none u-border-1 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-border-white u-btn u-button-link u-button-style u-hover-none u-none u-text-body-alt-color u-btn-1" target="_blank"></a>
        </p>
      </div>
    </section>
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-8de2"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Travle Booking System.</p>
      </div></footer>
   
  
</body></html>
