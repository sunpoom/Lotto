<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<%@ page import="user.UserDAO"%>

<%@ page import="user.UserDTO"%>

<%@ page import="user.Mytime"%>

<%@ page import="util.SHA256"%>

<%@ page import="java.io.PrintWriter"%>

<%@ page import="java.util.Timer"%>

<%@ page import="java.util.TimerTask"%>

<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Lotto Game - Play</title>
<link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>


<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="./index.html">HOME</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu<i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#signup">ê²ì</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead">
		<div class="container d-flex h-100 align-items-center">
			<div class="mx-auto text-center">
				<h1 class="mx-auto my-0 text-uppercase">Lotto</h1>


				<form class="form-inline d-flex" method="post">
					<input class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0"
						name="inputPassword" type="password" placeholder="비밀번호를 입력하시오">
					<input type="submit">
				</form>

				<a class="btn btn-primary js-scroll-trigger" href="#signup">GAME
					START</a>

				<%
				Timer t = new Timer(true);

				Mytime tg = new Mytime();

				t.schedule(tg, 1000, 180000);

				String password = request.getParameter("inputPassword");

				UserDTO userDTO = new UserDTO();
				UserDAO userDAO = new UserDAO();
				SHA256 sha256 = new SHA256();
				String hashpassword = sha256.getSHA256(password);
				Connection con = null;
				Statement stmt = null;
				try {
					Class.forName("com.mysql.jdbc.Driver");
					String url = "jdbc:mysql://localhost:3308/sample";
					con = DriverManager.getConnection(url, "root", "123456789");
				} catch (Exception e) {
					System.out.println(e.getMessage());
					e.printStackTrace();
				}
				if (password != null) {
					userDTO.setPassword(password);
					userDTO.setHashpassword(hashpassword);
					int a = userDAO.user_insert(userDTO);

					if (a == -1) {
						PrintWriter script = response.getWriter();

						script.println("<script>");

						script.println("alert('이미 존재하는 비밀번호입니다.');");

						script.println("history.back();");

						script.println("</script>");

						script.close();
					} else {

						PrintWriter script = response.getWriter();

						script.println("<script>");

						script.println("alert('비밀번호가 등록되었습니다.');");

						script.println("history.back();");

						script.println("</script>");

						script.close();
					}

				}
				%>
			</div>
		</div>
	</header>

	<!-- About-->

	<!-- Signup-->
	<section class="signup-section" id="signup">
		<div class="container">
			<div class="col-md-10 col-lg-8 mx-auto text-center">
				<i class="far fa-paper-plane fa-2x mb-2 text-white"></i>
				<h2 class="text-white mb-5">Enjoy Lotto</h2>
			</div>
		</div>
		</div>
	</section>
	<!-- Contact-->
	<form action="./Game2Action.jsp" method="post">
		<section class="contact-section bg-black">
			<div class="container">
				<div class="row">
					<div class="col-md-4 mb-3 mb-md-0">
						<div class="card py-4 h-100">
							<div class="card-body text-center">
								<i class="fas fa-map-marked-alt text-primary mb-2"></i>
								<h4 class="text-uppercase m-0">Lotto</h4>
								<hr class="my-4" />
								<div class="small text-black-50">6개의 숫자를 고르시오</div>
								<hr class="my-4" />
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox1_1" value="1"> <label
										class="form-check-label" for="inlineCheckbox1">1</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox2_1" value="2"> <label
										class="form-check-label" for="inlineCheckbox2">2</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox3_1" value="3"> <label
										class="form-check-label" for="inlineCheckbox3">3</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox4_1" value="4"> <label
										class="form-check-label" for="inlineCheckbox4">4</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox5_1" value="5"> <label
										class="form-check-label" for="inlineCheckbox5">5</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox6_1" value="6"> <label
										class="form-check-label" for="inlineCheckbox6">6</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox7_1" value="7"> <label
										class="form-check-label" for="inlineCheckbox7">7</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox8_1" value="8"> <label
										class="form-check-label" for="inlineCheckbox8">8</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox9_1" value="9"> <label
										class="form-check-label" for="inlineCheckbox9">9</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox10_1" value="10"> <label
										class="form-check-label" for="inlineCheckbox10">10</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox11_1" value="11"> <label
										class="form-check-label" for="inlineCheckbox11">11</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox12_1" value="12"> <label
										class="form-check-label" for="inlineCheckbox12">12</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox13_1" value="13"> <label
										class="form-check-label" for="inlineCheckbox13">13</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox14_1" value="14"> <label
										class="form-check-label" for="inlineCheckbox14">14</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox15_1" value="15"> <label
										class="form-check-label" for="inlineCheckbox15">15</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox16_1" value="16"> <label
										class="form-check-label" for="inlineCheckbox16">16</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox17_1" value="17"> <label
										class="form-check-label" for="inlineCheckbox17">17</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox18_1" value="18"> <label
										class="form-check-label" for="inlineCheckbox18">18</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox19_1" value="19"> <label
										class="form-check-label" for="inlineCheckbox19">19</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox20_1" value="20"> <label
										class="form-check-label" for="inlineCheckbox20">20</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox21_1" value="21"> <label
										class="form-check-label" for="inlineCheckbox21">21</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox22_1" value="22"> <label
										class="form-check-label" for="inlineCheckbox22">22</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox23_1" value="23"> <label
										class="form-check-label" for="inlineCheckbox23">23</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox24_1" value="24"> <label
										class="form-check-label" for="inlineCheckbox24">24</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox25_1" value="25"> <label
										class="form-check-label" for="inlineCheckbox25">25</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox26_1" value="26"> <label
										class="form-check-label" for="inlineCheckbox26">26</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox27_1" value="27"> <label
										class="form-check-label" for="inlineCheckbox27">27</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox28_1" value="28"> <label
										class="form-check-label" for="inlineCheckbox28">28</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox29_1" value="29"> <label
										class="form-check-label" for="inlineCheckbox29">29</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox30_1" value="30"> <label
										class="form-check-label" for="inlineCheckbox30">30</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox31_1" value="31"> <label
										class="form-check-label" for="inlineCheckbox31">31</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox32_1" value="32"> <label
										class="form-check-label" for="inlineCheckbox32">32</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox33_1" value="33"> <label
										class="form-check-label" for="inlineCheckbox33">33</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox34_1" value="34"> <label
										class="form-check-label" for="inlineCheckbox34">34</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox35_1" value="35"> <label
										class="form-check-label" for="inlineCheckbox35">35</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox36_1" value="36"> <label
										class="form-check-label" for="inlineCheckbox36">36</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox37_1" value="37"> <label
										class="form-check-label" for="inlineCheckbox37">37</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox38_1" value="38"> <label
										class="form-check-label" for="inlineCheckbox38">38</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox39_1" value="39"> <label
										class="form-check-label" for="inlineCheckbox39">39</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox40_1" value="40"> <label
										class="form-check-label" for="inlineCheckbox40">40</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox41_1" value="41"> <label
										class="form-check-label" for="inlineCheckbox41">41</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox42_1" value="42"> <label
										class="form-check-label" for="inlineCheckbox42">42</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox43_1" value="43"> <label
										class="form-check-label" for="inlineCheckbox43">43</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox44_1" value="44"> <label
										class="form-check-label" for="inlineCheckbox44">44</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox45_1" value="45"> <label
										class="form-check-label" for="inlineCheckbox45">45</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 mb-3 mb-md-0">
						<div class="card py-4 h-100">
							<div class="card-body text-center">
								<i class="fas fa-envelope text-primary mb-2"></i>
								<h4 class="text-uppercase m-0">Lotto</h4>
								<hr class="my-4" />
								<div class="small text-black-50">6개의 숫자를 고르시오</div>
								<hr class="my-4" />
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox1_2" value="1"> <label
										class="form-check-label" for="inlineCheckbox1">1</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox2_2" value="2"> <label
										class="form-check-label" for="inlineCheckbox2">2</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox3_2" value="3"> <label
										class="form-check-label" for="inlineCheckbox3">3</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox4_2" value="4"> <label
										class="form-check-label" for="inlineCheckbox4">4</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox5_2" value="5"> <label
										class="form-check-label" for="inlineCheckbox5">5</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox6_2" value="6"> <label
										class="form-check-label" for="inlineCheckbox6">6</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox7_2" value="7"> <label
										class="form-check-label" for="inlineCheckbox7">7</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox8_2" value="8"> <label
										class="form-check-label" for="inlineCheckbox8">8</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox9_2" value="9"> <label
										class="form-check-label" for="inlineCheckbox9">9</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox10_2" value="10"> <label
										class="form-check-label" for="inlineCheckbox10">10</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox11_2" value="11"> <label
										class="form-check-label" for="inlineCheckbox11">11</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox12_2" value="12"> <label
										class="form-check-label" for="inlineCheckbox12">12</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox13_2" value="13"> <label
										class="form-check-label" for="inlineCheckbox13">13</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox14_2" value="14"> <label
										class="form-check-label" for="inlineCheckbox14">14</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox15_2" value="15"> <label
										class="form-check-label" for="inlineCheckbox15">15</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox16_2" value="16"> <label
										class="form-check-label" for="inlineCheckbox16">16</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox17_2" value="17"> <label
										class="form-check-label" for="inlineCheckbox17">17</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox18_2" value="18"> <label
										class="form-check-label" for="inlineCheckbox18">18</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox19_2" value="19"> <label
										class="form-check-label" for="inlineCheckbox19">19</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox20_2" value="20"> <label
										class="form-check-label" for="inlineCheckbox20">20</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox21_2" value="21"> <label
										class="form-check-label" for="inlineCheckbox21">21</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox22_2" value="22"> <label
										class="form-check-label" for="inlineCheckbox22">22</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox23_2" value="23"> <label
										class="form-check-label" for="inlineCheckbox23">23</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox24_2" value="24"> <label
										class="form-check-label" for="inlineCheckbox24">24</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox25_2" value="25"> <label
										class="form-check-label" for="inlineCheckbox25">25</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox26_2" value="26"> <label
										class="form-check-label" for="inlineCheckbox26">26</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox27_2" value="27"> <label
										class="form-check-label" for="inlineCheckbox27">27</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox28_2" value="28"> <label
										class="form-check-label" for="inlineCheckbox28">28</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox29_2" value="29"> <label
										class="form-check-label" for="inlineCheckbox29">29</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox30_2" value="30"> <label
										class="form-check-label" for="inlineCheckbox30">30</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox31_2" value="31"> <label
										class="form-check-label" for="inlineCheckbox31">31</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox32_2" value="32"> <label
										class="form-check-label" for="inlineCheckbox32">32</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox33_2" value="33"> <label
										class="form-check-label" for="inlineCheckbox33">33</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox34_2" value="34"> <label
										class="form-check-label" for="inlineCheckbox34">34</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox35_2" value="35"> <label
										class="form-check-label" for="inlineCheckbox35">35</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox36_2" value="36"> <label
										class="form-check-label" for="inlineCheckbox36">36</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox37_2" value="37"> <label
										class="form-check-label" for="inlineCheckbox37">37</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox38_2" value="38"> <label
										class="form-check-label" for="inlineCheckbox38">38</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox39_2" value="39"> <label
										class="form-check-label" for="inlineCheckbox39">39</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox40_2" value="40"> <label
										class="form-check-label" for="inlineCheckbox40">40</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox41_2" value="41"> <label
										class="form-check-label" for="inlineCheckbox41">41</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox42_2" value="42"> <label
										class="form-check-label" for="inlineCheckbox42">42</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox43_2" value="43"> <label
										class="form-check-label" for="inlineCheckbox43">43</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox44_2" value="44"> <label
										class="form-check-label" for="inlineCheckbox44">44</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox45_2" value="45"> <label
										class="form-check-label" for="inlineCheckbox45">45</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 mb-3 mb-md-0">
						<div class="card py-4 h-100">
							<div class="card-body text-center">
								<i class="fas fa-mobile-alt text-primary mb-2"></i>
								<h4 class="text-uppercase m-0">Lotto</h4>
								<hr class="my-4" />
								<div class="small text-black-50">6개의 숫자를 고르시오</div>
								<hr class="my-4" />
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox1_3" value="1"> <label
										class="form-check-label" for="inlineCheckbox1">1</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox2_3" value="2"> <label
										class="form-check-label" for="inlineCheckbox2">2</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox3_3" value="3"> <label
										class="form-check-label" for="inlineCheckbox3">3</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox4_3" value="4"> <label
										class="form-check-label" for="inlineCheckbox4">4</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox5_3" value="5"> <label
										class="form-check-label" for="inlineCheckbox5">5</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox6_3" value="6"> <label
										class="form-check-label" for="inlineCheckbox6">6</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox7_3" value="7"> <label
										class="form-check-label" for="inlineCheckbox7">7</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox8_3" value="8"> <label
										class="form-check-label" for="inlineCheckbox8">8</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox9_3" value="9"> <label
										class="form-check-label" for="inlineCheckbox9">9</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox10_3" value="10"> <label
										class="form-check-label" for="inlineCheckbox10">10</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox11_3" value="11"> <label
										class="form-check-label" for="inlineCheckbox11">11</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox12_3" value="12"> <label
										class="form-check-label" for="inlineCheckbox12">12</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox13_3" value="13"> <label
										class="form-check-label" for="inlineCheckbox13">13</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox14_3" value="14"> <label
										class="form-check-label" for="inlineCheckbox14">14</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox15_3" value="15"> <label
										class="form-check-label" for="inlineCheckbox15">15</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox16_3" value="16"> <label
										class="form-check-label" for="inlineCheckbox16">16</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox17_3" value="17"> <label
										class="form-check-label" for="inlineCheckbox17">17</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox18_3" value="18"> <label
										class="form-check-label" for="inlineCheckbox18">18</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox19_3" value="19"> <label
										class="form-check-label" for="inlineCheckbox19">19</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox20_3" value="20"> <label
										class="form-check-label" for="inlineCheckbox20">20</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox21_3" value="21"> <label
										class="form-check-label" for="inlineCheckbox21">21</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox22_3" value="22"> <label
										class="form-check-label" for="inlineCheckbox22">22</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox23_3" value="23"> <label
										class="form-check-label" for="inlineCheckbox23">23</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox24_3" value="24"> <label
										class="form-check-label" for="inlineCheckbox24">24</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox25_3" value="25"> <label
										class="form-check-label" for="inlineCheckbox25">25</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox26_3" value="26"> <label
										class="form-check-label" for="inlineCheckbox26">26</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox27_3" value="27"> <label
										class="form-check-label" for="inlineCheckbox27">27</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox28_3" value="28"> <label
										class="form-check-label" for="inlineCheckbox28">28</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox29_3" value="29"> <label
										class="form-check-label" for="inlineCheckbox29">29</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox30_3" value="30"> <label
										class="form-check-label" for="inlineCheckbox30">30</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox31_3" value="31"> <label
										class="form-check-label" for="inlineCheckbox31">31</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox32_3" value="32"> <label
										class="form-check-label" for="inlineCheckbox32">32</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox33_3" value="33"> <label
										class="form-check-label" for="inlineCheckbox33">33</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox34_3" value="34"> <label
										class="form-check-label" for="inlineCheckbox34">34</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox35_3" value="35"> <label
										class="form-check-label" for="inlineCheckbox35">35</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox36_3" value="36"> <label
										class="form-check-label" for="inlineCheckbox36">36</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox37_3" value="37"> <label
										class="form-check-label" for="inlineCheckbox37">37</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox38_3" value="38"> <label
										class="form-check-label" for="inlineCheckbox38">38</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox39_3" value="39"> <label
										class="form-check-label" for="inlineCheckbox39">39</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox40_3" value="40"> <label
										class="form-check-label" for="inlineCheckbox40">40</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox41_3" value="41"> <label
										class="form-check-label" for="inlineCheckbox41">41</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox42_3" value="42"> <label
										class="form-check-label" for="inlineCheckbox42">42</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox43_3" value="43"> <label
										class="form-check-label" for="inlineCheckbox43">43</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox44_3" value="44"> <label
										class="form-check-label" for="inlineCheckbox44">44</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox45_3" value="45"> <label
										class="form-check-label" for="inlineCheckbox45">45</label>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="social d-flex justify-content-center"></div>
			</div>
		</section>

		<section class="contact-section bg-black">
			<div class="container">
				<div class="row">
					<div class="col-md-4 mb-3 mb-md-0">
						<div class="card py-4 h-100">
							<div class="card-body text-center">
								<i class="fas fa-map-marked-alt text-primary mb-2"></i>
								<h4 class="text-uppercase m-0">Lotto</h4>
								<hr class="my-4" />
								<div class="small text-black-50">6개의 숫자를 고르시오</div>
								<hr class="my-4" />
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox1_4" value="1"> <label
										class="form-check-label" for="inlineCheckbox1">1</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox2_4" value="2"> <label
										class="form-check-label" for="inlineCheckbox2">2</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox3_4" value="3"> <label
										class="form-check-label" for="inlineCheckbox3">3</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox4_4" value="4"> <label
										class="form-check-label" for="inlineCheckbox4">4</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox5_4" value="5"> <label
										class="form-check-label" for="inlineCheckbox5">5</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox6_4" value="6"> <label
										class="form-check-label" for="inlineCheckbox6">6</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox7_4" value="7"> <label
										class="form-check-label" for="inlineCheckbox7">7</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox8_4" value="8"> <label
										class="form-check-label" for="inlineCheckbox8">8</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox9_4" value="9"> <label
										class="form-check-label" for="inlineCheckbox9">9</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox10_4" value="10"> <label
										class="form-check-label" for="inlineCheckbox10">10</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox11_4" value="11"> <label
										class="form-check-label" for="inlineCheckbox11">11</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox12_4" value="12"> <label
										class="form-check-label" for="inlineCheckbox12">12</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox13_4" value="13"> <label
										class="form-check-label" for="inlineCheckbox13">13</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox14_4" value="14"> <label
										class="form-check-label" for="inlineCheckbox14">14</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox15_4" value="15"> <label
										class="form-check-label" for="inlineCheckbox15">15</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox16_4" value="16"> <label
										class="form-check-label" for="inlineCheckbox16">16</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox17_4" value="17"> <label
										class="form-check-label" for="inlineCheckbox17">17</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox18_4" value="18"> <label
										class="form-check-label" for="inlineCheckbox18">18</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox19_4" value="19"> <label
										class="form-check-label" for="inlineCheckbox19">19</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox20_4" value="20"> <label
										class="form-check-label" for="inlineCheckbox20">20</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox21_4" value="21"> <label
										class="form-check-label" for="inlineCheckbox21">21</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox22_4" value="22"> <label
										class="form-check-label" for="inlineCheckbox22">22</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox23_4" value="23"> <label
										class="form-check-label" for="inlineCheckbox23">23</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox24_4" value="24"> <label
										class="form-check-label" for="inlineCheckbox24">24</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox25_4" value="25"> <label
										class="form-check-label" for="inlineCheckbox25">25</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox26_4" value="26"> <label
										class="form-check-label" for="inlineCheckbox26">26</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox27_4" value="27"> <label
										class="form-check-label" for="inlineCheckbox27">27</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox28_4" value="28"> <label
										class="form-check-label" for="inlineCheckbox28">28</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox29_4" value="29"> <label
										class="form-check-label" for="inlineCheckbox29">29</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox30_4" value="30"> <label
										class="form-check-label" for="inlineCheckbox30">30</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox31_4" value="31"> <label
										class="form-check-label" for="inlineCheckbox31">31</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox32_4" value="32"> <label
										class="form-check-label" for="inlineCheckbox32">32</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox33_4" value="33"> <label
										class="form-check-label" for="inlineCheckbox33">33</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox34_4" value="34"> <label
										class="form-check-label" for="inlineCheckbox34">34</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox35_4" value="35"> <label
										class="form-check-label" for="inlineCheckbox35">35</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox36_4" value="36"> <label
										class="form-check-label" for="inlineCheckbox36">36</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox37_4" value="37"> <label
										class="form-check-label" for="inlineCheckbox37">37</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox38_4" value="38"> <label
										class="form-check-label" for="inlineCheckbox38">38</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox39_4" value="39"> <label
										class="form-check-label" for="inlineCheckbox39">39</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox40_4" value="40"> <label
										class="form-check-label" for="inlineCheckbox40">40</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox41_4" value="41"> <label
										class="form-check-label" for="inlineCheckbox41">41</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox42_4" value="42"> <label
										class="form-check-label" for="inlineCheckbox42">42</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox43_4" value="43"> <label
										class="form-check-label" for="inlineCheckbox43">43</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox44_4" value="44"> <label
										class="form-check-label" for="inlineCheckbox44">44</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox45_4" value="45"> <label
										class="form-check-label" for="inlineCheckbox45">45</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 mb-3 mb-md-0">
						<div class="card py-4 h-100">
							<div class="card-body text-center">
								<i class="fas fa-envelope text-primary mb-2"></i>
								<h4 class="text-uppercase m-0">Lotto</h4>
								<hr class="my-4" />
								<div class="small text-black-50">6개의 숫자를 고르시오</div>
								<hr class="my-4" />
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox1_5" value="1"> <label
										class="form-check-label" for="inlineCheckbox1">1</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox2_5" value="2"> <label
										class="form-check-label" for="inlineCheckbox2">2</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox3_5" value="3"> <label
										class="form-check-label" for="inlineCheckbox3">3</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox4_5" value="4"> <label
										class="form-check-label" for="inlineCheckbox4">4</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox5_5" value="5"> <label
										class="form-check-label" for="inlineCheckbox5">5</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox6_5" value="6"> <label
										class="form-check-label" for="inlineCheckbox6">6</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox7_5" value="7"> <label
										class="form-check-label" for="inlineCheckbox7">7</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox8_5" value="8"> <label
										class="form-check-label" for="inlineCheckbox8">8</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox9_5" value="9"> <label
										class="form-check-label" for="inlineCheckbox9">9</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox10_5" value="10"> <label
										class="form-check-label" for="inlineCheckbox10">10</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox11_5" value="11"> <label
										class="form-check-label" for="inlineCheckbox11">11</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox12_5" value="12"> <label
										class="form-check-label" for="inlineCheckbox12">12</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox13_5" value="13"> <label
										class="form-check-label" for="inlineCheckbox13">13</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox14_5" value="14"> <label
										class="form-check-label" for="inlineCheckbox14">14</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox15_5" value="15"> <label
										class="form-check-label" for="inlineCheckbox15">15</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox16_5" value="16"> <label
										class="form-check-label" for="inlineCheckbox16">16</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox17_5" value="17"> <label
										class="form-check-label" for="inlineCheckbox17">17</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox18_5" value="18"> <label
										class="form-check-label" for="inlineCheckbox18">18</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox19_5" value="19"> <label
										class="form-check-label" for="inlineCheckbox19">19</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox20_5" value="20"> <label
										class="form-check-label" for="inlineCheckbox20">20</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox21_5" value="21"> <label
										class="form-check-label" for="inlineCheckbox21">21</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox22_5" value="22"> <label
										class="form-check-label" for="inlineCheckbox22">22</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox23_5" value="23"> <label
										class="form-check-label" for="inlineCheckbox23">23</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox24_5" value="24"> <label
										class="form-check-label" for="inlineCheckbox24">24</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox25_5" value="25"> <label
										class="form-check-label" for="inlineCheckbox25">25</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox26_5" value="26"> <label
										class="form-check-label" for="inlineCheckbox26">26</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox27_5" value="27"> <label
										class="form-check-label" for="inlineCheckbox27">27</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox28_5" value="28"> <label
										class="form-check-label" for="inlineCheckbox28">28</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox29_5" value="29"> <label
										class="form-check-label" for="inlineCheckbox29">29</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox30_5" value="30"> <label
										class="form-check-label" for="inlineCheckbox30">30</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox31_5" value="31"> <label
										class="form-check-label" for="inlineCheckbox31">31</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox32_5" value="32"> <label
										class="form-check-label" for="inlineCheckbox32">32</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox33_5" value="33"> <label
										class="form-check-label" for="inlineCheckbox33">33</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox34_5" value="34"> <label
										class="form-check-label" for="inlineCheckbox34">34</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox35_5" value="35"> <label
										class="form-check-label" for="inlineCheckbox35">35</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox36_5" value="36"> <label
										class="form-check-label" for="inlineCheckbox36">36</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox37_5" value="37"> <label
										class="form-check-label" for="inlineCheckbox37">37</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox38_5" value="38"> <label
										class="form-check-label" for="inlineCheckbox38">38</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox39_5" value="39"> <label
										class="form-check-label" for="inlineCheckbox39">39</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox40_5" value="40"> <label
										class="form-check-label" for="inlineCheckbox40">40</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox41_5" value="41"> <label
										class="form-check-label" for="inlineCheckbox41">41</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox42_5" value="42"> <label
										class="form-check-label" for="inlineCheckbox42">42</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox43_5" value="43"> <label
										class="form-check-label" for="inlineCheckbox43">43</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox44_5" value="44"> <label
										class="form-check-label" for="inlineCheckbox44">44</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox45_5" value="45"> <label
										class="form-check-label" for="inlineCheckbox45">45</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 mb-3 mb-md-0">
						<div class="card py-4 h-100">
							<div class="card-body text-center">
								<i class="fas fa-mobile-alt text-primary mb-2"></i>
								<h4 class="text-uppercase m-0">Lotto</h4>
								<hr class="my-4" />
								<div class="small text-black-50">6개의 숫자를 고르시오</div>
								<hr class="my-4" />
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox1_6" value="1"> <label
										class="form-check-label" for="inlineCheckbox1">1</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox2_6" value="2"> <label
										class="form-check-label" for="inlineCheckbox2">2</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox3_6" value="3"> <label
										class="form-check-label" for="inlineCheckbox3">3</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox4_6" value="4"> <label
										class="form-check-label" for="inlineCheckbox4">4</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox5_6" value="5"> <label
										class="form-check-label" for="inlineCheckbox5">5</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox6_6" value="6"> <label
										class="form-check-label" for="inlineCheckbox6">6</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox7_6" value="7"> <label
										class="form-check-label" for="inlineCheckbox7">7</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox8_6" value="8"> <label
										class="form-check-label" for="inlineCheckbox8">8</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox9_6" value="9"> <label
										class="form-check-label" for="inlineCheckbox9">9</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox10_6" value="10"> <label
										class="form-check-label" for="inlineCheckbox10">10</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox11_6" value="11"> <label
										class="form-check-label" for="inlineCheckbox11">11</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox12_6" value="12"> <label
										class="form-check-label" for="inlineCheckbox12">12</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox13_6" value="13"> <label
										class="form-check-label" for="inlineCheckbox13">13</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox14_6" value="14"> <label
										class="form-check-label" for="inlineCheckbox14">14</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox15_6" value="15"> <label
										class="form-check-label" for="inlineCheckbox15">15</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox16_6" value="16"> <label
										class="form-check-label" for="inlineCheckbox16">16</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox17_6" value="17"> <label
										class="form-check-label" for="inlineCheckbox17">17</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox18_6" value="18"> <label
										class="form-check-label" for="inlineCheckbox18">18</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox19_6" value="19"> <label
										class="form-check-label" for="inlineCheckbox19">19</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox20_6" value="20"> <label
										class="form-check-label" for="inlineCheckbox20">20</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox21_6" value="21"> <label
										class="form-check-label" for="inlineCheckbox21">21</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox22_6" value="22"> <label
										class="form-check-label" for="inlineCheckbox22">22</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox23_6" value="23"> <label
										class="form-check-label" for="inlineCheckbox23">23</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox24_6" value="24"> <label
										class="form-check-label" for="inlineCheckbox24">24</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox25_6" value="25"> <label
										class="form-check-label" for="inlineCheckbox25">25</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox26_6" value="26"> <label
										class="form-check-label" for="inlineCheckbox26">26</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox27_6" value="27"> <label
										class="form-check-label" for="inlineCheckbox27">27</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox28_6" value="28"> <label
										class="form-check-label" for="inlineCheckbox28">28</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox29_6" value="29"> <label
										class="form-check-label" for="inlineCheckbox29">29</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox30_6" value="30"> <label
										class="form-check-label" for="inlineCheckbox30">30</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox31_6" value="31"> <label
										class="form-check-label" for="inlineCheckbox31">31</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox32_6" value="32"> <label
										class="form-check-label" for="inlineCheckbox32">32</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox33_6" value="33"> <label
										class="form-check-label" for="inlineCheckbox33">33</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox34_6" value="34"> <label
										class="form-check-label" for="inlineCheckbox34">34</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox35_6" value="35"> <label
										class="form-check-label" for="inlineCheckbox35">35</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox36_6" value="36"> <label
										class="form-check-label" for="inlineCheckbox36">36</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox37_6" value="37"> <label
										class="form-check-label" for="inlineCheckbox37">37</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox38_6" value="38"> <label
										class="form-check-label" for="inlineCheckbox38">38</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox39_6" value="39"> <label
										class="form-check-label" for="inlineCheckbox39">39</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox40_6" value="40"> <label
										class="form-check-label" for="inlineCheckbox40">40</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox41_6" value="41"> <label
										class="form-check-label" for="inlineCheckbox41">41</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox42_6" value="42"> <label
										class="form-check-label" for="inlineCheckbox42">42</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox43_6" value="43"> <label
										class="form-check-label" for="inlineCheckbox43">43</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox44_6" value="44"> <label
										class="form-check-label" for="inlineCheckbox44">44</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox45_6" value="45"> <label
										class="form-check-label" for="inlineCheckbox45">45</label>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="social d-flex justify-content-center"></div>
			</div>
		</section>

		<section class="contact-section bg-black">
			<div class="container">
				<div class="row">
					<div class="col-md-4 mb-3 mb-md-0">
						<div class="card py-4 h-100">
							<div class="card-body text-center">
								<i class="fas fa-map-marked-alt text-primary mb-2"></i>
								<h4 class="text-uppercase m-0">Lotto</h4>
								<hr class="my-4" />
								<div class="small text-black-50">6ê°ì ì«ìë¥¼
									ê³ ë¥´ìì¤</div>
								<hr class="my-4" />
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox1_7" value="1"> <label
										class="form-check-label" for="inlineCheckbox1">1</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox2_7" value="2"> <label
										class="form-check-label" for="inlineCheckbox2">2</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox3_7" value="3"> <label
										class="form-check-label" for="inlineCheckbox3">3</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox4_7" value="4"> <label
										class="form-check-label" for="inlineCheckbox4">4</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox5_7" value="5"> <label
										class="form-check-label" for="inlineCheckbox5">5</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox6_7" value="6"> <label
										class="form-check-label" for="inlineCheckbox6">6</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox7_7" value="7"> <label
										class="form-check-label" for="inlineCheckbox7">7</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox8_7" value="8"> <label
										class="form-check-label" for="inlineCheckbox8">8</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox9_7" value="9"> <label
										class="form-check-label" for="inlineCheckbox9">9</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox10_7" value="10"> <label
										class="form-check-label" for="inlineCheckbox10">10</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox11_7" value="11"> <label
										class="form-check-label" for="inlineCheckbox11">11</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox12_7" value="12"> <label
										class="form-check-label" for="inlineCheckbox12">12</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox13_7" value="13"> <label
										class="form-check-label" for="inlineCheckbox13">13</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox14_7" value="14"> <label
										class="form-check-label" for="inlineCheckbox14">14</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox15_7" value="15"> <label
										class="form-check-label" for="inlineCheckbox15">15</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox16_7" value="16"> <label
										class="form-check-label" for="inlineCheckbox16">16</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox17_7" value="17"> <label
										class="form-check-label" for="inlineCheckbox17">17</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox18_7" value="18"> <label
										class="form-check-label" for="inlineCheckbox18">18</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox19_7" value="19"> <label
										class="form-check-label" for="inlineCheckbox19">19</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox20_7" value="20"> <label
										class="form-check-label" for="inlineCheckbox20">20</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox21_7" value="21"> <label
										class="form-check-label" for="inlineCheckbox21">21</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox22_7" value="22"> <label
										class="form-check-label" for="inlineCheckbox22">22</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox23_7" value="23"> <label
										class="form-check-label" for="inlineCheckbox23">23</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox24_7" value="24"> <label
										class="form-check-label" for="inlineCheckbox24">24</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox25_7" value="25"> <label
										class="form-check-label" for="inlineCheckbox25">25</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox26_7" value="26"> <label
										class="form-check-label" for="inlineCheckbox26">26</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox27_7" value="27"> <label
										class="form-check-label" for="inlineCheckbox27">27</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox28_7" value="28"> <label
										class="form-check-label" for="inlineCheckbox28">28</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox29_7" value="29"> <label
										class="form-check-label" for="inlineCheckbox29">29</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox30_7" value="30"> <label
										class="form-check-label" for="inlineCheckbox30">30</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox31_7" value="31"> <label
										class="form-check-label" for="inlineCheckbox31">31</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox32_7" value="32"> <label
										class="form-check-label" for="inlineCheckbox32">32</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox33_7" value="33"> <label
										class="form-check-label" for="inlineCheckbox33">33</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox34_7" value="34"> <label
										class="form-check-label" for="inlineCheckbox34">34</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox35_7" value="35"> <label
										class="form-check-label" for="inlineCheckbox35">35</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox36_7" value="36"> <label
										class="form-check-label" for="inlineCheckbox36">36</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox37_7" value="37"> <label
										class="form-check-label" for="inlineCheckbox37">37</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox38_7" value="38"> <label
										class="form-check-label" for="inlineCheckbox38">38</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox39_7" value="39"> <label
										class="form-check-label" for="inlineCheckbox39">39</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox40_7" value="40"> <label
										class="form-check-label" for="inlineCheckbox40">40</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox41_7" value="41"> <label
										class="form-check-label" for="inlineCheckbox41">41</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox42_7" value="42"> <label
										class="form-check-label" for="inlineCheckbox42">42</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox43_7" value="43"> <label
										class="form-check-label" for="inlineCheckbox43">43</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox44_7" value="44"> <label
										class="form-check-label" for="inlineCheckbox44">44</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox45_7" value="45"> <label
										class="form-check-label" for="inlineCheckbox45">45</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 mb-3 mb-md-0">
						<div class="card py-4 h-100">
							<div class="card-body text-center">
								<i class="fas fa-envelope text-primary mb-2"></i>
								<h4 class="text-uppercase m-0">Lotto</h4>
								<hr class="my-4" />
								<div class="small text-black-50">6ê°ì ì«ìë¥¼
									ê³ ë¥´ìì¤</div>
								<hr class="my-4" />
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox1_8" value="1"> <label
										class="form-check-label" for="inlineCheckbox1">1</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox2_8" value="2"> <label
										class="form-check-label" for="inlineCheckbox2">2</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox3_8" value="3"> <label
										class="form-check-label" for="inlineCheckbox3">3</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox4_8" value="4"> <label
										class="form-check-label" for="inlineCheckbox4">4</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox5_8" value="5"> <label
										class="form-check-label" for="inlineCheckbox5">5</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox6_8" value="6"> <label
										class="form-check-label" for="inlineCheckbox6">6</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox7_8" value="7"> <label
										class="form-check-label" for="inlineCheckbox7">7</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox8_8" value="8"> <label
										class="form-check-label" for="inlineCheckbox8">8</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox9_8" value="9"> <label
										class="form-check-label" for="inlineCheckbox9">9</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox10_8" value="10"> <label
										class="form-check-label" for="inlineCheckbox10">10</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox11_8" value="11"> <label
										class="form-check-label" for="inlineCheckbox11">11</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox12_8" value="12"> <label
										class="form-check-label" for="inlineCheckbox12">12</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox13_8" value="13"> <label
										class="form-check-label" for="inlineCheckbox13">13</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox14_8" value="14"> <label
										class="form-check-label" for="inlineCheckbox14">14</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox15_8" value="15"> <label
										class="form-check-label" for="inlineCheckbox15">15</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox16_8" value="16"> <label
										class="form-check-label" for="inlineCheckbox16">16</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox17_8" value="17"> <label
										class="form-check-label" for="inlineCheckbox17">17</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox18_8" value="18"> <label
										class="form-check-label" for="inlineCheckbox18">18</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox19_8" value="19"> <label
										class="form-check-label" for="inlineCheckbox19">19</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox20_8" value="20"> <label
										class="form-check-label" for="inlineCheckbox20">20</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox21_8" value="21"> <label
										class="form-check-label" for="inlineCheckbox21">21</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox22_8" value="22"> <label
										class="form-check-label" for="inlineCheckbox22">22</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox23_8" value="23"> <label
										class="form-check-label" for="inlineCheckbox23">23</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox24_8" value="24"> <label
										class="form-check-label" for="inlineCheckbox24">24</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox25_8" value="25"> <label
										class="form-check-label" for="inlineCheckbox25">25</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox26_8" value="26"> <label
										class="form-check-label" for="inlineCheckbox26">26</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox27_8" value="27"> <label
										class="form-check-label" for="inlineCheckbox27">27</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox28_8" value="28"> <label
										class="form-check-label" for="inlineCheckbox28">28</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox29_8" value="29"> <label
										class="form-check-label" for="inlineCheckbox29">29</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox30_8" value="30"> <label
										class="form-check-label" for="inlineCheckbox30">30</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox31_8" value="31"> <label
										class="form-check-label" for="inlineCheckbox31">31</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox32_8" value="32"> <label
										class="form-check-label" for="inlineCheckbox32">32</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox33_8" value="33"> <label
										class="form-check-label" for="inlineCheckbox33">33</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox34_8" value="34"> <label
										class="form-check-label" for="inlineCheckbox34">34</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox35_8" value="35"> <label
										class="form-check-label" for="inlineCheckbox35">35</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox36_8" value="36"> <label
										class="form-check-label" for="inlineCheckbox36">36</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox37_8" value="37"> <label
										class="form-check-label" for="inlineCheckbox37">37</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox38_8" value="38"> <label
										class="form-check-label" for="inlineCheckbox38">38</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox39_8" value="39"> <label
										class="form-check-label" for="inlineCheckbox39">39</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox40_8" value="40"> <label
										class="form-check-label" for="inlineCheckbox40">40</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox41_8" value="41"> <label
										class="form-check-label" for="inlineCheckbox41">41</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox42_8" value="42"> <label
										class="form-check-label" for="inlineCheckbox42">42</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox43_8" value="43"> <label
										class="form-check-label" for="inlineCheckbox43">43</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox44_8" value="44"> <label
										class="form-check-label" for="inlineCheckbox44">44</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox45_8" value="45"> <label
										class="form-check-label" for="inlineCheckbox45">45</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 mb-3 mb-md-0">
						<div class="card py-4 h-100">
							<div class="card-body text-center">
								<i class="fas fa-mobile-alt text-primary mb-2"></i>
								<h4 class="text-uppercase m-0">Lotto</h4>
								<hr class="my-4" />
								<div class="small text-black-50">6ê°ì ì«ìë¥¼
									ê³ ë¥´ìì¤</div>
								<hr class="my-4" />
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox1_9" value="1"> <label
										class="form-check-label" for="inlineCheckbox1">1</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox2_9" value="2"> <label
										class="form-check-label" for="inlineCheckbox2">2</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox3_9" value="3"> <label
										class="form-check-label" for="inlineCheckbox3">3</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox4_9" value="4"> <label
										class="form-check-label" for="inlineCheckbox4">4</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox5_9" value="5"> <label
										class="form-check-label" for="inlineCheckbox5">5</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox6_9" value="6"> <label
										class="form-check-label" for="inlineCheckbox6">6</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox7_9" value="7"> <label
										class="form-check-label" for="inlineCheckbox7">7</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox8_9" value="8"> <label
										class="form-check-label" for="inlineCheckbox8">8</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox9_9" value="9"> <label
										class="form-check-label" for="inlineCheckbox9">9</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox10_9" value="10"> <label
										class="form-check-label" for="inlineCheckbox10">10</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox11_9" value="11"> <label
										class="form-check-label" for="inlineCheckbox11">11</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox12_9" value="12"> <label
										class="form-check-label" for="inlineCheckbox12">12</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox13_9" value="13"> <label
										class="form-check-label" for="inlineCheckbox13">13</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox14_9" value="14"> <label
										class="form-check-label" for="inlineCheckbox14">14</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox15_9" value="15"> <label
										class="form-check-label" for="inlineCheckbox15">15</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox16_9" value="16"> <label
										class="form-check-label" for="inlineCheckbox16">16</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox17_9" value="17"> <label
										class="form-check-label" for="inlineCheckbox17">17</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox18_9" value="18"> <label
										class="form-check-label" for="inlineCheckbox18">18</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox19_9" value="19"> <label
										class="form-check-label" for="inlineCheckbox19">19</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox20_9" value="20"> <label
										class="form-check-label" for="inlineCheckbox20">20</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox21_9" value="21"> <label
										class="form-check-label" for="inlineCheckbox21">21</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox22_9" value="22"> <label
										class="form-check-label" for="inlineCheckbox22">22</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox23_9" value="23"> <label
										class="form-check-label" for="inlineCheckbox23">23</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox24_9" value="24"> <label
										class="form-check-label" for="inlineCheckbox24">24</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox25_9" value="25"> <label
										class="form-check-label" for="inlineCheckbox25">25</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox26_9" value="26"> <label
										class="form-check-label" for="inlineCheckbox26">26</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox27_9" value="27"> <label
										class="form-check-label" for="inlineCheckbox27">27</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox28_9" value="28"> <label
										class="form-check-label" for="inlineCheckbox28">28</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox29_9" value="29"> <label
										class="form-check-label" for="inlineCheckbox29">29</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox30_9" value="30"> <label
										class="form-check-label" for="inlineCheckbox30">30</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox31_9" value="31"> <label
										class="form-check-label" for="inlineCheckbox31">31</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox32_9" value="32"> <label
										class="form-check-label" for="inlineCheckbox32">32</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox33_9" value="33"> <label
										class="form-check-label" for="inlineCheckbox33">33</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox34_9" value="34"> <label
										class="form-check-label" for="inlineCheckbox34">34</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox35_9" value="35"> <label
										class="form-check-label" for="inlineCheckbox35">35</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox36_9" value="36"> <label
										class="form-check-label" for="inlineCheckbox36">36</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox37_9" value="37"> <label
										class="form-check-label" for="inlineCheckbox37">37</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox38_9" value="38"> <label
										class="form-check-label" for="inlineCheckbox38">38</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox39_9" value="39"> <label
										class="form-check-label" for="inlineCheckbox39">39</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox40_9" value="40"> <label
										class="form-check-label" for="inlineCheckbox40">40</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox41_9" value="41"> <label
										class="form-check-label" for="inlineCheckbox41">41</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox42_9" value="42"> <label
										class="form-check-label" for="inlineCheckbox42">42</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox43_9" value="43"> <label
										class="form-check-label" for="inlineCheckbox43">43</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox44_9" value="44"> <label
										class="form-check-label" for="inlineCheckbox44">44</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox45_9" value="45"> <label
										class="form-check-label" for="inlineCheckbox45">45</label>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="social d-flex justify-content-center"></div>
			</div>
		</section>


		<section class="contact-section bg-black">
			<div class="container">
				<div class="row">
					<div class="col-md-4 mb-3 mb-md-0">
						<div class="card py-4 h-100">
							<div class="card-body text-center">
								<i class="fas fa-map-marked-alt text-primary mb-2"></i>
								<h4 class="text-uppercase m-0">Lotto</h4>
								<hr class="my-4" />
								<div class="small text-black-50">6ê°ì ì«ìë¥¼
									ê³ ë¥´ìì¤</div>
								<hr class="my-4" />
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox1_10" value="1"> <label
										class="form-check-label" for="inlineCheckbox1">1</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox2_10" value="2"> <label
										class="form-check-label" for="inlineCheckbox2">2</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox3_10" value="3"> <label
										class="form-check-label" for="inlineCheckbox3">3</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox4_10" value="4"> <label
										class="form-check-label" for="inlineCheckbox4">4</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox5_10" value="5"> <label
										class="form-check-label" for="inlineCheckbox5">5</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox6_10" value="6"> <label
										class="form-check-label" for="inlineCheckbox6">6</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox7_10" value="7"> <label
										class="form-check-label" for="inlineCheckbox7">7</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox8_10" value="8"> <label
										class="form-check-label" for="inlineCheckbox8">8</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox9_10" value="9"> <label
										class="form-check-label" for="inlineCheckbox9">9</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox10_10" value="10"> <label
										class="form-check-label" for="inlineCheckbox10">10</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox11_10" value="11"> <label
										class="form-check-label" for="inlineCheckbox11">11</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox12_10" value="12"> <label
										class="form-check-label" for="inlineCheckbox12">12</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox13_10" value="13"> <label
										class="form-check-label" for="inlineCheckbox13">13</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox14_10" value="14"> <label
										class="form-check-label" for="inlineCheckbox14">14</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox15_10" value="15"> <label
										class="form-check-label" for="inlineCheckbox15">15</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox16_10" value="16"> <label
										class="form-check-label" for="inlineCheckbox16">16</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox17_10" value="17"> <label
										class="form-check-label" for="inlineCheckbox17">17</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox18_10" value="18"> <label
										class="form-check-label" for="inlineCheckbox18">18</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox19_10" value="19"> <label
										class="form-check-label" for="inlineCheckbox19">19</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox20_10" value="20"> <label
										class="form-check-label" for="inlineCheckbox20">20</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox21_10" value="21"> <label
										class="form-check-label" for="inlineCheckbox21">21</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox22_10" value="22"> <label
										class="form-check-label" for="inlineCheckbox22">22</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox23_10" value="23"> <label
										class="form-check-label" for="inlineCheckbox23">23</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox24_10" value="24"> <label
										class="form-check-label" for="inlineCheckbox24">24</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox25_10" value="25"> <label
										class="form-check-label" for="inlineCheckbox25">25</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox26_10" value="26"> <label
										class="form-check-label" for="inlineCheckbox26">26</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox27_10" value="27"> <label
										class="form-check-label" for="inlineCheckbox27">27</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox28_10" value="28"> <label
										class="form-check-label" for="inlineCheckbox28">28</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox29_10" value="29"> <label
										class="form-check-label" for="inlineCheckbox29">29</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox30_10" value="30"> <label
										class="form-check-label" for="inlineCheckbox30">30</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox31_10" value="31"> <label
										class="form-check-label" for="inlineCheckbox31">31</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox32_10" value="32"> <label
										class="form-check-label" for="inlineCheckbox32">32</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox33_10" value="33"> <label
										class="form-check-label" for="inlineCheckbox33">33</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox34_10" value="34"> <label
										class="form-check-label" for="inlineCheckbox34">34</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox35_10" value="35"> <label
										class="form-check-label" for="inlineCheckbox35">35</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox36_10" value="36"> <label
										class="form-check-label" for="inlineCheckbox36">36</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox37_10" value="37"> <label
										class="form-check-label" for="inlineCheckbox37">37</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox38_10" value="38"> <label
										class="form-check-label" for="inlineCheckbox38">38</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox39_10" value="39"> <label
										class="form-check-label" for="inlineCheckbox39">39</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox40_10" value="40"> <label
										class="form-check-label" for="inlineCheckbox40">40</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox41_10" value="41"> <label
										class="form-check-label" for="inlineCheckbox41">41</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox42_10" value="42"> <label
										class="form-check-label" for="inlineCheckbox42">42</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox43_10" value="43"> <label
										class="form-check-label" for="inlineCheckbox43">43</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox44_10" value="44"> <label
										class="form-check-label" for="inlineCheckbox44">44</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="inlineCheckbox45_10" value="45"> <label
										class="form-check-label" for="inlineCheckbox45">45</label>
								</div>
							</div>
						</div>
					</div>
					<div class="row text-center" style="width: 100%">
						<div style="width: 30%; float: none; margin: 0 auto">
							<button type="submit" class="btn btn-primary" style="width: 100%">제출</button>
						</div>
					</div>
		</section>

	</form>
	<!-- Footer-->
	<footer class="footer bg-black small text-center text-white-50">
		<div class="container">Copyright Â© Your Website 2020</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
	<!-- Third party plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>