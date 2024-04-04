<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<%@ page import="user.Draw"%>

<%@ page import="user.UserDAO"%>

<%@ page import="user.UserDTO"%>

<%@ page import="java.io.PrintWriter"%>

<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Lotto Game - Result</title>
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
    
       
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="./index.jsp">HOME</a><button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu<i class="fas fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#signup">결과보기</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container d-flex h-100 align-items-center">
                <div class="mx-auto text-center">
                    <h1 class="mx-auto my-0 text-uppercase">Lotto</h1>
                    <a class="btn btn-primary js-scroll-trigger" href="#signup">GAME RESULT</a>
                </div>
            </div>
        </header>
        <!-- About-->

        <!-- Signup-->
        <section class="signup-section" id="signup">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-lg-8 mx-auto text-center">
                        <i class="far fa-paper-plane fa-2x mb-2 text-white"></i>
                        <h2 class="text-white mb-5">Enjoy Lotto</h2>
                    </div>
                </div>
            </div>
        </section>
        <!-- Contact-->
        <section class="contact-section bg-black">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">로또게임</h4>
                                 <hr class="my-4" />
								    <table border="1">
								    <tr>
								    <th>회차번호</th>
									<th>1</th>
									<th>2</th>
									<th>3</th>
									<th>4</th>
									<th>5</th>
									<th>6</th>
									<th>BONUS</th>
									<tr>
									<%
									 Connection con=null;
	                                Statement stmt=null;
	                                try {
	                                	Class.forName("com.mysql.jdbc.Driver");
	                                	String url="jdbc:mysql://localhost:3308/sample";
	                                	con = DriverManager.getConnection(url,"root","123456789");
	                                }catch(Exception e) {
	                                	System.out.println("데이터 베이스 오류");
	                                	System.out.println(e.getMessage());
	                                	e.printStackTrace();
	                                }
	                                stmt=con.createStatement();
	                                String sql_1="select *from lotto_db";
	                                ResultSet rs_1 = stmt.executeQuery(sql_1);
	                                if( rs_1 != null) {
                                		while(rs_1.next()) {
	                               			int num=Integer.parseInt(rs_1.getString("num"));
									%>
									<tr>
										<td><%=rs_1.getInt("num")%></td>
									    <td><%=rs_1.getInt("cnt_1")%></td>
									    <td><%=rs_1.getInt("cnt_2")%></td>
									    <td><%=rs_1.getInt("cnt_3")%></td>
									    <td><%=rs_1.getInt("cnt_4")%></td>
									    <td><%=rs_1.getInt("cnt_5")%></td>
									    <td><%=rs_1.getInt("cnt_6")%></td>
									    <td><%=rs_1.getInt("cnt_7")%></td>
									</tr>
									<%
										}
	                                }
									%>
								    </table>
		                            </div>
		                        </div>
		                    </div>
		                </div>
                <div class="social d-flex justify-content-center">

                </div>
            </div>
        </section>

        <section class="contact-section bg-black">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                        <%

                        UserDAO userDAO=new UserDAO();
                      String host=userDAO.password;
                        %>
                         <i class="fas fa-map-marked-alt text-primary mb-2"></i>
								 <h4 class="text-uppercase m-0"><%=host%>님로또게임</h4>
								    <hr class="my-4" />
								  <table border="1">
								  <tr>
								  	<th>회자번호</th>
								  	<th>용지번호</th>
									<th>1</th>
									<th>2</th>
									<th>3</th>
									<th>4</th>
									<th>5</th>
									<th>6</th>
									</tr>
                                <%
                                UserDTO userDTO=new UserDTO();
                                String sql_3="select *from play where password ="+"'"+userDAO.password+"'";
                                ResultSet rs_2 = stmt.executeQuery(sql_3);
                                	if( rs_2 != null) {
                                		while(rs_2.next()) {
                                			int num=Integer.parseInt(rs_2.getString("num"));
                                %>
							 		<tr>
									    <td><%=rs_2.getInt("num")%></td>
									    <td><%=rs_2.getInt("in_num")%></td>
									    <td><%=rs_2.getInt("in_1")%></td>
									    <td><%=rs_2.getInt("in_2")%></td>
									    <td><%=rs_2.getInt("in_3")%></td>
									    <td><%=rs_2.getInt("in_4")%></td>
									    <td><%=rs_2.getInt("in_5")%></td>
									    <td><%=rs_2.getInt("in_6")%></td>
									</tr>
									<%
										}
                                	}
									%>
								    </table>
								    
		                            </div>
		                        </div>
		                    </div>
		                </div>
		                
                <div class="social d-flex justify-content-center">
                </div>
            </div>
        </section>

			<section class="contact-section bg-black">
			            <div class="container">
			                <div class="row">
			                    <div class="col-md-4 mb-3 mb-md-0">
			                        <div class="card py-4 h-100">
								<i class="fas fa-map-marked-alt text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">등수현황</h4>
                                 <hr class="my-4" />
											  <table border="1">
											  <tr>
											  	<th>회차번호</th>
											  	<th>용지번호</th>
												<th>등수</th>
												</tr>
			                                <%
			                                String sql_4="select *from result";
			                                ResultSet rs_3 = stmt.executeQuery(sql_4);
			                                	if( rs_3 != null) {
			                                		while(rs_3.next()) {
			                                			int num=Integer.parseInt(rs_3.getString("num"));
			                                %>
										 		<tr>
												    <td><%=rs_3.getInt("num")%></td>
												    <td><%=rs_3.getInt("in_num")%></td>
												    <td><%=rs_3.getInt("grade")%></td>
												</tr>
												<%
													}
			                                	}
												%>
											    </table>
											    
					                            </div>
					                        </div>
					                    </div>
					                </div>
					                
			                <div class="social d-flex justify-content-center">
			                </div>
			            </div>
			        </section>
        <!-- Footer-->
        <footer class="footer bg-black small text-center text-white-50"><div class="container">Copyright © Your Website 2020</div></footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
