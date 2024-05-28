<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="INTUITIVE">
    <meta name="description" content="">
    <title>add_package</title>
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
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px;">Package</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" >Add Package</a>
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
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 20px;">Log Out</a>
</li></ul>
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
<%if(request.getAttribute("id")==null){%>
    <section class="u-clearfix u-section-1" id="sec-7769">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <p class="u-text u-text-default u-text-1">Package Post Form for Admin </p>
        <div class="u-form u-form-1">
<form action="Packag" method="post">

            <div class="u-form-group u-form-name">
              <label for="name-5cbc" class="u-label">Distination</label>
              <input type="text" id="name-5cbc" name="pac_d" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="" placeholder="Distination">
            </div>
            <div class="u-form-group u-form-message">
              <label for="message-5cbc" class="u-label">Description</label>
              <textarea placeholder="description" rows="4" cols="50" id="message-5cbc" name="pac_con" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required=""></textarea>
            </div>
            <div class="u-form-group u-form-number u-form-number-layout-number u-form-group-3">
              <label for="number-c02a" class="u-label">Number people</label>
              <div class="u-input-row" data-value="0">
                <input value="0" min="0" max="100000" step="1" type="number" placeholder="" id="number-c02a" name="pac_am" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
              </div>
            </div>
            <div class="u-form-group u-form-number u-form-number-layout-number u-form-group-4">
              <label for="number-c562" class="u-label">PRICE</label>
              <div class="u-input-row" data-value="0">
                <input value="0" min="0" max="100000" step="1" type="number" placeholder="" id="number-c562" name="pac_pri" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
              </div>
            </div>
            <div class="u-align-center u-form-group u-form-submit">
              <a href="#" class="u-btn u-btn-submit u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-1">POST</a>
              <input type="submit" value="submit" class="u-form-control-hidden">
            </div>
            <div class="u-form-send-message u-form-send-success"> Thank you! Your Package has been sent. </div>
            <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
            <input type="hidden" value="" name="recaptchaResponse">
            <input type="hidden" name="formServices" value="b4842245dd1d8b12e6629f5ee6f85a10">
          </form>
        </div>
      </div>
    </section><%}else{ ResultSet rs=(ResultSet)request.getAttribute("id"); while(rs.next()){%>
<section class="u-clearfix u-section-1" id="sec-7769">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <p class="u-text u-text-default u-text-1">Package Post Form for Admin </p>
        <div class="u-form u-form-1">
<form action="Edit_package" method="post">

            <div class="u-form-group u-form-name">
              <label for="name-5cbc" class="u-label">Distination</label>
              <input type="text" id="name-5cbc" name="pac_d" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="" placeholder="Distination" value="<%= rs.getString("pac_dist")%>">
            </div>
            <div class="u-form-group u-form-message">
              <label for="message-5cbc" class="u-label">Description</label>
              <textarea placeholder="description" rows="40" cols="50" id="message-5cbc" name="pac_con" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required=""  ></textarea>
            </div>
            <div class="u-form-group u-form-number u-form-number-layout-number u-form-group-3">
              <label for="number-c02a" class="u-label">Number people</label>
              <div class="u-input-row" data-value="0">
                <input value="0" min="0" max="100" step="1" type="number" placeholder="" id="number-c02a" name="pac_am" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" value="<%= String.valueOf(rs.getInt("pac_amount"))%>">
              </div>
            </div>
            <div class="u-form-group u-form-number u-form-number-layout-number u-form-group-4">
              <label for="number-c562" class="u-label">PRICE</label>
              <div class="u-input-row" data-value="0">
                <input value="0" min="0" max="100000" step="1" type="number" placeholder="" id="number-c562" name="pac_pri" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" value="<%= String.valueOf(rs.getInt("pac_price"))%>">
              </div>
            </div>
            <div class="u-align-center u-form-group u-form-submit">
              <a href="#hear" class="u-btn u-btn-submit u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-1">POST</a>
              <input id="hear" type="submit" value="submit" class="u-form-control-hidden">
            </div>
            <div class="u-form-send-message u-form-send-success"> Thank you! Your Package has been sent. </div>
            <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
            <input type="hidden" value="" name="recaptchaResponse">
            <input type="hidden" name="formServices" value="b4842245dd1d8b12e6629f5ee6f85a10">
          </form>
        </div>
      </div>

    </section<%}}%>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-8de2"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the Text Element.</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="" target="_blank">
        <span>Website Builder Software</span>
      </a>. 
    </section>
  
</body></html>
