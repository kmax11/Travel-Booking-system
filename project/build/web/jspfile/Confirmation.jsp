<%@page import="java.lang.Object"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.util.ArrayList"%>


<%@page import="com.model.Book_l"%>
<%ResultSet pac=(ResultSet)request.getAttribute("pac_all"); %>
<%ResultSet ord=(ResultSet)request.getAttribute("ord_all"); %>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="INTUITIVE">
    <meta name="description" content="">
    <title>add_pac</title>
    <link rel="stylesheet" href="jspfile/nicepage.css" media="screen">
<link rel="stylesheet" href="jspfile/add_pac.css" media="screen">
    <script class="u-script" type="text/javascript" src="jspfile/jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="jspfile/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.4.4, nicepage.com">
    <meta name="referrer" content="origin">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
   
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="add_pac">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
  <body class="u-body u-xl-mode" data-lang="en"><header class="u-clearfix u-header u-header" id="sec-3cc6"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <a href="Home.html" class="u-image u-logo u-image-1" title="Home">
          <img src="jspfile/images/default-logo.png" class="u-logo-image u-logo-image-1">
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
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="Home.html" style="padding: 10px 20px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px;">Package</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="<%=request.getContextPath()%>/Packag">Add Package</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="Package.html">Edit Packages</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="Package.html">Delete Packages</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="<%=request.getContextPath()%>/Confi">Confirmation</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px;">Travels</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link u-white">Edit</a>
</li><li class="u-nav-item"><a class="u-button-style  u-white" href="<%=request.getContextPath()%>/Edit_trav">Cancel</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="<%=request.getContextPath()%>/Creat_date_t">Add</a>
</li></ul>
</div>
</li>
<%if(request.getSession().getAttribute("username")!=null){%>
<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px;" href="<%=request.getContextPath()%>/logout">Log Out</a>
<%}%></li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-4"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">Package</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Package.html">Add Package</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="jspfile/Package.html">Edit Packages</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="jspfile/Package.html">Delete Packages</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">Travels</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link">Edit</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">Cancel</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="jspfile/Create-travle.html">Add</a>
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
 <form action="Confi" method="post">
    <section class="u-align-center u-clearfix u-block-8285-1"  data-section-properties="{&quot;margin&quot;:&quot;none&quot;,&quot;stretch&quot;:true}" data-id="8285" data-posts-content="[]" data-style="table-8" id="carousel_a799" data-source="functional_fix">
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
            <th class="u-table-cell u-block-8285-10">Full Name </th>
            <th class="u-table-cell u-block-8285-11">Package Tin_no </th>
            <th class="u-table-cell u-block-8285-12">confirmation </th>
            
          </tr>
        </thead>


      <%int num=0;%>
        <tbody class="u-align-center u-table-alt-palette-1-base u-table-body u-block-8285-9">

     <%if(pac!=null){ while(pac.next()){%>    
             <%num=num+1;%>
              <tr style="height: 75px;">
                <td class="u-border-1 u-border-black u-table-cell u-button-style u-btn-rectangle"><%= pac.getString("full_name")%></td>
                <td class="u-border-1 u-border-black u-table-cell u-button-style u-btn-rectangle"><%= pac.getString("pac_id")%></td>
              <%if(!pac.getBoolean("confi")){%>
                
                
                 <td class="u-border-1 u-border-black u-table-cell"><button type="submit" name ="btn" value="<%= pac.getString("pac_id")%>" class="u-border-1 u-border-active-black u-border-hover-black u-border-no-left u-border-no-right u-border-no-top u-border-palette-3-base u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-hover-feature u-none u-radius-0 u-text-active-black u-text-body-color u-text-hover-black u-top-left-radius-0 u-top-right-radius-0 u-btn-1">confirm</button>
              </td>
><%}else if(pac.getBoolean("confi")){%>
<td class="u-border-1 u-border-black u-table-cell"><button type="submit" value="<%= pac.getString("pac_id")%>" name="btn" class="u-border-1 u-border-active-black u-border-hover-color-1-dark-3 u-border-no-left u-border-no-right u-border-no-top u-border-palette-3-base u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-hover-feature u-none u-radius-0 u-text-active-black u-text-body-color u-text-hover-white u-top-left-radius-0 u-top-right-radius-0 u-btn-1">confirmed</button>
              </td>
              </tr><%}}}%></tbody>
        <tfoot class="u-align-center u-table-footer u-block-8285-35"><tr><td class="u-table-cell u-block-8285-52">All package by user</td><td class="u-table-cell u-block-8285-53"></td><td class="u-table-cell u-block-8285-54">Total Order:<%=num%> </td><td class="u-table-cell u-block-8285-55"></td></tr>
          
        </tfoot>
      </table>
    </div>
  </div></section></form>
    
    




<form action="Confii" method="post">
    <section class="u-align-center u-clearfix u-block-8285-1"  data-section-properties="{&quot;margin&quot;:&quot;none&quot;,&quot;stretch&quot;:true}" data-id="8285" data-posts-content="[]" data-style="table-8" id="carousel_a799" data-source="functional_fix">
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
            <th class="u-table-cell u-block-8285-10">Full Name </th>
            <th class="u-table-cell u-block-8285-11">Orders Tin_no </th>
            <th class="u-table-cell u-block-8285-12">confirmation </th>
            
          </tr>
        </thead>

<%int nu=0;%>
      
        <tbody class="u-align-center u-table-alt-palette-1-base u-table-body u-block-8285-9">

     <%if(ord!=null){ while(ord.next()){%>    
             <%nu=nu+1;%>
              <tr style="height: 75px;">
                <td class="u-border-1 u-border-black u-table-cell u-button-style u-btn-rectangle"><%= ord.getString("full_name")%></td>
                <td class="u-border-1 u-border-black u-table-cell u-button-style u-btn-rectangle"><%= ord.getString("tin_no")%></td>
              <%if(!ord.getBoolean("confi")){%>
                
                
                 <td class="u-border-1 u-border-black u-table-cell"><button type="submit" name ="btn" value="<%= ord.getString("tin_no")%>" class="u-border-1 u-border-active-black u-border-hover-black u-border-no-left u-border-no-right u-border-no-top u-border-palette-3-base u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-hover-feature u-none u-radius-0 u-text-active-black u-text-body-color u-text-hover-black u-top-left-radius-0 u-top-right-radius-0 u-btn-1">confirm</button>
              </td>
><%}else if(ord.getBoolean("confi")){%>
<td class="u-border-1 u-border-black u-table-cell"><button type="submit" value="<%= ord.getString("tin_no")%>" name="btn" class="u-border-1 u-border-active-black u-border-hover-color-1-dark-3 u-border-no-left u-border-no-right u-border-no-top u-border-palette-3-base u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-hover-feature u-none u-radius-0 u-text-active-black u-text-body-color u-text-hover-white u-top-left-radius-0 u-top-right-radius-0 u-btn-1">confirmed</button>
              </td>
              </tr><%}}}%></tbody>
        <tfoot class="u-align-center u-table-footer u-block-8285-35"><tr><td class="u-table-cell u-block-8285-52">All Orders by user</td><td class="u-table-cell u-block-8285-53"></td><td class="u-table-cell u-block-8285-54">Total Order:<%=nu%> </td><td class="u-table-cell u-block-8285-55"></td></tr>
          
        </tfoot>
      </table>
    </div>
  </div></section></form>
    

  
</body></html>
