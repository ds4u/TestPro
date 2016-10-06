<%@page import="com.dreamsoft4u.queehr.shared.utils.RolesEnum"%>
<%@page import="com.dreamsoft4u.queehr.constant.Constant"%>
<%@page import="com.dreamsoft4u.queehr.constant.ApplicationVariables"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="#">
    <meta name="author" content="#">

    <!-- App Favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico">

    <!-- App title -->
    <title>Help</title>

    <!-- App CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
    
    <!-- DataTables -->
	<link href="assets/plugins/datatables/jquery.dataTables.min.css"
		rel="stylesheet" type="text/css" />

    <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <script src="assets/js/html5shiv.js"></script>
    <script src="assets/js/respond.min.js"></script>

    <script src="assets/js/modernizr.min.js"></script>


</head>
<body class="inner-page">
    <header class="header">
        <div class="container">

            <h1 class="margin0"><a class="logo margin0" href="index.do"><span class="white font36">Que-</span><span class="gcolor">ehr</span></a></h1>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="header-right">
                <div class="main-menu">
                    <div id="navbar" class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">

                            <li><a href="contactusget.do">Contact us</a></li>
                            <li><a href="" class='btn btn-primary account-link'>Help</a></li>
                           <%
								String link = "";
								if (session.getAttribute("token")!=null) {
									RolesEnum rolesEnum = (RolesEnum)session.getAttribute(Constant.role);
									if(rolesEnum == RolesEnum.ADMIN){
									link = "<a href='admindashboard.do' >Dashboard</a>";
									}else if(rolesEnum == RolesEnum.PHYSICIAN){
										link = "<a href='phydashboard.do' >Dashboard</a>";
									}else if(rolesEnum == RolesEnum.RECEPTIONIST){
										link = "<a href='recdashboard.do' >Dashboard</a>";
									}else if(rolesEnum == RolesEnum.NURSE){
										
									}else if(rolesEnum == RolesEnum.RADIOLOGIST){
										
									}
								

								} else {
									link = "<a href='login.do' >Sign in</a>";
								}
							%>
							<li><%=link %></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>

    </header>

    <!-- Container -->




    <section class="slider">
        <div class="overlay"></div>
        <div class="main-banner text-center">
            <div class="banner-stuff">
                <h1 class="uprCase">FAQ</h1>
                               
            </div>
        </div>
    </section>

    <section class="contact-details faq">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="text-center">
                        <h3 class="font-600">Frequently Asked Questions</h3>
                        <p class="text-muted">
                          
                        </p>
                    </div>
                </div><!-- end col -->
            </div>
            <div class="row m-t-40">
                <div class="col-lg-12">  
                     
                        <c:if  test="${not empty help}">
                        <%int i=0; %>
						       
                        <div class="panel-group m-b-10" id="accordion" role="tablist" aria-multiselectable="true">
                        <table class="table " id="faqTable">
                        <thead>
                        <tr><th></th></tr>
                        </thead>
                        <tbody>
                        <c:forEach var="helpfaq" items="${help}">
                        <tr><td>   
                            <div class="panel panel-default bx-shadow-none">
                                <div class="panel-heading" role="tab" id="headingOne<%=i%>">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse"
                                           data-parent="#accordion" href="#collapseOne<%=i%>"
                                           aria-expanded="true" aria-controls="collapseOne<%=i%>">
                                           ${helpfaq.question}
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne<%=i%>" class="panel-collapse collapse"
                                     role="tabpanel" aria-labelledby="headingOne<%=i%>">
                                    <div class="panel-body">
                                    <div class="form-group">
                                    ${helpfaq.answer}
                                    </div>
                                    
                                 
                                   <c:if test="${not empty helpfaq.link}">
                                   
                                   <a class="pull-left" id="changeUrl"  href="" onclick="return replaceLink('${helpfaq.link}');">${helpfaq.link}</a>
                                   </c:if>
                                   <c:if test="${not empty helpfaq.filename}">
                                  	<a href="download.do?filename=${helpfaq.filename}"><button class="pull-right btn-link"><i class="fa fa-paperclip" aria-hidden="true" ></i> ${helpfaq.filename}</button></a> 
                                  </c:if>                                  
                                  
                                    </div>
                                </div>
                            </div>
							<% i++; %>
							</td>
							</tr>
							</c:forEach>
							</tbody>
							</table>
							 </div>     
										
								</c:if>
								<%-- <c:if test="${page>=0 }"> --%>
                         <%-- <nav>
                          <ul class="pagination pull-right">
                          <c:choose>
                          <c:when test="${page==0 }">
                           <li class="disabled"><a href="help.do?pagging=${page}" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                           </c:when><c:otherwise>
                           <li ><a href="help.do?pagging=${page-1}" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                           </c:otherwise> 
                           </c:choose>
                           <!-- <li class="active"><a href="help.do?pagging=1">1 <span class="sr-only">(current)</span></a></li>
                            <li><a href="#">2</a></li>
                             <li><a href="#">3</a></li> 
                            <li><a href="#">4</a></li>
                             <li><a href="#">5</a></li> -->
                             <c:forEach var="i" begin="0" end="${count }">
							   <li><a href="help.do?pagging=${page+i}">${page+i+1}</a></li>
							 </c:forEach>
							 <c:choose>
							 <c:when test="${count>0 }">
							 <li><a href="help.do?pagging=${page+1}" aria-label="Next"><span aria-hidden="true">»</span></a></li>
							 </c:when>
							 <c:otherwise>
							 </c:otherwise>
							 </c:choose>
                              
                             </ul> </nav> --%>
                             <%-- </c:if> --%>
                                 
                </div><!-- end col -->
            </div>
        </div><!-- end container -->
    </section>


    <div class="copy-foot font14">
        <div class="container">            
                <div class="pull-left">&copy; Copyright 2016 Que-Ehr inc. All rights are reserved</div>
                <div class="pull-right">Designed by <a href="">DreamSoft4u</a></div>          
        </div>
    </div>
    <!-- end wrapper page -->



    <script>
        var resizefunc = [];

    </script>


    <!-- jQuery  -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/detect.js"></script>
    <script src="assets/js/fastclick.js"></script>
    <script src="assets/js/jquery.slimscroll.js"></script>
    <script src="assets/js/jquery.blockUI.js"></script>
    <script src="assets/js/waves.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>

    <!-- App js -->
    <script src="assets/js/jquery.core.js"></script>
    <script src="assets/js/jquery.app.js"></script>
    
    <!-- Datatables-->
	<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="assets/plugins/datatables/dataTables.bootstrap.js"></script>

    <script>
        $(window).scroll(function () {
            var scroll = $(window).scrollTop();

            if (scroll >= 80) {
                $(".header").addClass("darkHeader");
            } else {
                $(".header").removeClass("darkHeader");
            }
        });
        
        function download(filename){
        	var baseurl="${pageContext.request.contextPath}";
	    	jQuery.ajax({
	    		url:baseurl+"/download.do",
	    		method:"GET",
	    		data:{"filename": filename},
	    		success:function(data){
	    			console.info("success");
	    		},
	    		fails:function(error){
	    			console.info("server error.....");
	    		}
	    	});
        	
        }

    </script>
    
    <script>
    	function replaceLink(link){
    	var linkIs = link.replace("https://","").replace("http://","");
    	linkIs="//"+linkIs;
    	window.open(linkIs,'_blank');
    	return false;
    	}
    	
    	$('#faqTable').DataTable({"bSort" : false});
    </script>

</body>

</html>