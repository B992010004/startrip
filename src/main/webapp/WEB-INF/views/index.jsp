<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC 
"-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<!-- 
    More Templates Visit ==> ProBootstrap.com
    Free Template by ProBootstrap.com under the License Creative Commons 3.0 ==> (probootstrap.com/license)

    IMPORTANT: You can do whatever you want with this template but you need to keep the footer link back to ProBootstrap.com
    -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>StarTrip&mdash;星遊網</title>

<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700"
	rel="stylesheet">

<link rel="stylesheet" href="assets/css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/fonts/ionicons/css/ionicons.min.css">

<link rel="stylesheet" href="assets/css/owl.carousel.min.css">

<link rel="stylesheet" href="assets/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet"
	href="assets/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="assets/css/select2.css">


<link rel="stylesheet" href="assets/css/helpers.css">
<link rel="stylesheet" href="assets/css/style.css">

</head>
<body>


	<nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar"
		id="probootstrap-navbar">
	<div class="container">
		<a class="navbar-brand" href="/">Places</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#probootstrap-menu" aria-controls="probootstrap-menu"
			aria-expanded="false" aria-label="Toggle navigation">
			<span><i class="ion-navicon"></i></span>
		</button>
		<div class="collapse navbar-collapse" id="probootstrap-menu">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.html">Home</a></li>
				<li class="nav-item"><a class="nav-link"
					href="city-guides.html">City Guides</a></li>
				<li class="nav-item"><a class="nav-link" href="services.html">Services</a></li>
				<li class="nav-item"><a class="nav-link" href="travel.html">Travel
						With Us</a></li>
				<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- END nav -->


	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('assets/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5" id="section-home">
	<div class="overlay"></div>
	<div class="container">
		<div class="row align-items-center">
			<div class="col-md">
				<h2 class="heading mb-2 display-4 font-light probootstrap-animate">Explore
					The World With Ease</h2>
				<p class="lead mb-5 probootstrap-animate"></p>
				<a href="onepage.html" role="button"
					class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">See
					OnePage Verion</a>
				</p>
			</div>
			<div class="col-md probootstrap-animate">
				<form action="#" class="probootstrap-form">
					<div class="form-group">
						<div class="row mb-3">
							<div class="col-md">
								<div class="form-group">
									<label for="id_label_single">From</label> <label
										for="id_label_single" style="width: 100%;"> <select
										class="js-example-basic-single js-states form-control"
										id="id_label_single" style="width: 100%;">
											<option value="Australia">Australia</option>
											<option value="Japan">Japan</option>
											<option value="United States">United States</option>
											<option value="Brazil">Brazil</option>
											<option value="China">China</option>
											<option value="Israel">Israel</option>
											<option value="Philippines">Philippines</option>
											<option value="Malaysia">Malaysia</option>
											<option value="Canada">Canada</option>
											<option value="Chile">Chile</option>
											<option value="Chile">Zimbabwe</option>
									</select>
									</label>


								</div>
							</div>
							<div class="col-md">
								<div class="form-group">
									<label for="id_label_single2">To</label>
									<div class="probootstrap_select-wrap">
										<label for="id_label_single2" style="width: 100%;"> <select
											class="js-example-basic-single js-states form-control"
											id="id_label_single2" style="width: 100%;">
												<option value="Australia">Australia</option>
												<option value="Japan">Japan</option>
												<option value="United States">United States</option>
												<option value="Brazil">Brazil</option>
												<option value="China">China</option>
												<option value="Israel">Israel</option>
												<option value="Philippines">Philippines</option>
												<option value="Malaysia">Malaysia</option>
												<option value="Canada">Canada</option>
												<option value="Chile">Chile</option>
												<option value="Chile">Zimbabwe</option>
										</select>
										</label>
									</div>
								</div>
							</div>
						</div>
						<!-- END row -->
						<div class="row mb-5">
							<div class="col-md">
								<div class="form-group">
									<label for="probootstrap-date-departure">Departure</label>
									<div class="probootstrap-date-wrap">
										<span class="icon ion-calendar"></span> <input type="text"
											id="probootstrap-date-departure" class="form-control"
											placeholder="">
									</div>
								</div>
							</div>
							<div class="col-md">
								<div class="form-group">
									<label for="probootstrap-date-arrival">Arrival</label>
									<div class="probootstrap-date-wrap">
										<span class="icon ion-calendar"></span> <input type="text"
											id="probootstrap-date-arrival" class="form-control"
											placeholder="">
									</div>
								</div>
							</div>
						</div>
						<!-- END row -->
						<div class="row">
							<div class="col-md">
								<label for="round" class="mr-5"><input type="radio"
									id="round" name="direction"> Round</label> <label for="oneway"><input
									type="radio" id="oneway" name="direction"> Oneway</label>
							</div>
							<div class="col-md">
								<input type="submit" value="Submit"
									class="btn btn-primary btn-block">
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	</section>
	<!-- END section -->


	<section class="probootstrap_section" id="section-feature-testimonial">
	<div class="container">
		<div class="row justify-content-center mb-5">
			<div class="col-md-12 text-center mb-5 probootstrap-animate">
				<h2 class="display-4 border-bottom probootstrap-section-heading">Why
					we Love Places</h2>
				<blockquote class="">
					<p class="lead mb-4">
						<em>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in Bookmarksgrove right at the coast of the
							Semantics, a large language ocean. A small river named Duden
							flows by their place and supplies it with the necessary
							regelialia. It is a paradisematic country, in which roasted parts
							of sentences fly into your mouth.</em>
					</p>
					<p class="probootstrap-author">
						<a href="https://probootstrap.com/" target="_blank"> <img
							src="assets/images/person_1.jpg"
							alt="Free Template by ProBootstrap.com" class="rounded-circle">
							<span class="probootstrap-name">James Smith</span> <span
							class="probootstrap-title">Chief Executive Officer</span>
						</a>
					</p>
				</blockquote>

			</div>
		</div>

	</div>
	</section>
	<!-- END section -->


	<section class="probootstrap_section" id="section-city-guides">
	<div class="container">
		<div class="row text-center mb-5 probootstrap-animate">
			<div class="col-md-12">
				<h2 class="display-4 border-bottom probootstrap-section-heading">Top
					Places Around The World</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
				<a href="#" class="probootstrap-thumbnail"> <img
					src="assets/images/img_1.jpg"
					alt="Free Template by ProBootstrap.com" class="img-fluid">
					<div class="probootstrap-text">
						<h3>Buena</h3>
					</div>
				</a>
			</div>
			<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
				<a href="#" class="probootstrap-thumbnail"> <img
					src="assets/images/img_2.jpg"
					alt="Free Template by ProBootstrap.com" class="img-fluid">
					<h3>Road</h3>
				</a>
			</div>
			<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
				<a href="#" class="probootstrap-thumbnail"> <img
					src="assets/images/img_3.jpg"
					alt="Free Template by ProBootstrap.com" class="img-fluid">
					<h3>Australia</h3>
				</a>
			</div>
			<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
				<a href="#" class="probootstrap-thumbnail"> <img
					src="assets/images/img_4.jpg"
					alt="Free Template by ProBootstrap.com" class="img-fluid">
					<h3>Japan</h3>
				</a>
			</div>
		</div>
	</div>
	</section>



	<section class="probootstrap_section">
	<div class="container">
		<div class="row text-center mb-5 probootstrap-animate">
			<div class="col-md-12">
				<h2 class="display-4 border-bottom probootstrap-section-heading">Our
					Services</h2>
			</div>
		</div>
	</div>
	</section>


	<section class="probootstrap-section-half d-md-flex" id="section-about">
	<div class="probootstrap-image probootstrap-animate"
		data-animate-effect="fadeIn"
		style="background-image: url(assets/images/img_2.jpg)"></div>
	<div class="probootstrap-text">
		<div class="probootstrap-inner probootstrap-animate"
			data-animate-effect="fadeInRight">
			<h2 class="heading mb-4">Customer Service</h2>
			<p>Far far away, behind the word mountains, far from the
				countries Vokalia and Consonantia, there live the blind texts.
				Separated they live in Bookmarksgrove right at the coast of the
				Semantics, a large language ocean.</p>
			<p>Even the all-powerful Pointing has no control about the blind
				texts it is an almost unorthographic life One day however a small
				line of blind text by the name of Lorem Ipsum decided to leave for
				the far World of Grammar.</p>
			<p>
				<a href="#" class="btn btn-primary">Read More</a>
			</p>
		</div>
	</div>
	</section>


	<section class="probootstrap-section-half d-md-flex">
	<div class="probootstrap-image order-2 probootstrap-animate"
		data-animate-effect="fadeIn"
		style="background-image: url(assets/images/img_3.jpg)"></div>
	<div class="probootstrap-text order-1">
		<div class="probootstrap-inner probootstrap-animate"
			data-animate-effect="fadeInLeft">
			<h2 class="heading mb-4">Payment Options</h2>
			<p>Far far away, behind the word mountains, far from the
				countries Vokalia and Consonantia, there live the blind texts.
				Separated they live in Bookmarksgrove right at the coast of the
				Semantics, a large language ocean.</p>
			<p>Even the all-powerful Pointing has no control about the blind
				texts it is an almost unorthographic life One day however a small
				line of blind text by the name of Lorem Ipsum decided to leave for
				the far World of Grammar.</p>
			<p>
				<a href="#" class="btn btn-primary">Learn More</a>
			</p>
		</div>
	</div>
	</section>
	<!-- END section -->

	<section class="probootstrap_section">
	<div class="container">
		<div class="row text-center mb-5 probootstrap-animate">
			<div class="col-md-12">
				<h2 class="display-4 border-bottom probootstrap-section-heading">Travel
					With Us</h2>
			</div>
		</div>

		<div class="row probootstrap-animate">
			<div class="col-md-12">
				<div class="owl-carousel js-owl-carousel">
					<a class="probootstrap-slide" href="#"> <span
						class="flaticon-teatro-de-la-caridad"></span> <em>Teatro de
							la Caridad</em>
					</a> <a class="probootstrap-slide" href="#"> <span
						class="flaticon-royal-museum-of-the-armed-forces"></span> <em>Royal
							Museum of the Armed Forces</em>
					</a> <a class="probootstrap-slide" href="#"> <span
						class="flaticon-parthenon"></span> <em>Parthenon</em>
					</a> <a class="probootstrap-slide" href="#"> <span
						class="flaticon-marina-bay-sands"></span> <em>Marina Bay
							Sands</em>
					</a> <a class="probootstrap-slide" href="#"> <span
						class="flaticon-samarra-minaret"></span> <em>Samarra Minaret</em>
					</a> <a class="probootstrap-slide" href="#"> <span
						class="flaticon-chiang-kai-shek-memorial"></span> <em>Chiang
							Kai Shek Memorial</em>
					</a> <a class="probootstrap-slide" href="#"> <span
						class="flaticon-heuvelse-kerk-tilburg"></span> <em>Heuvelse
							Kerk Tilburg</em>
					</a> <a class="probootstrap-slide" href="#"> <span
						class="flaticon-cathedral-of-cordoba"></span> <em>Cathedral
							of Cordoba</em>
					</a> <a class="probootstrap-slide" href="#"> <span
						class="flaticon-london-bridge"></span> <em>London Bridge</em>
					</a> <a class="probootstrap-slide" href="#"> <span
						class="flaticon-taj-mahal"></span> <em>Taj Mahal</em>
					</a> <a class="probootstrap-slide" href="#"> <span
						class="flaticon-leaning-tower-of-pisa"></span> <em>Leaning
							Tower of Pisa</em>
					</a> <a class="probootstrap-slide" href="#"> <span
						class="flaticon-burj-al-arab"></span> <em>Burj al Arab</em>
					</a> <a class="probootstrap-slide" href="#"> <span
						class="flaticon-gate-of-india"></span> <em>Gate of India</em>
					</a> <a class="probootstrap-slide" href="#"> <span
						class="flaticon-osaka-castle"></span> <em>Osaka Castle</em>
					</a> <a class="probootstrap-slide" href="#"> <span
						class="flaticon-statue-of-liberty"></span> <em>Statue of
							Liberty</em>
					</a>

				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- END section -->

	<section class="probootstrap_section bg-light">
	<div class="container">
		<div class="row text-center mb-5 probootstrap-animate">
			<div class="col-md-12">
				<h2 class="display-4 border-bottom probootstrap-section-heading">More
					Services</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">

				<div
					class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
					<div class="probootstrap-media-image"
						style="background-image: url(assets/images/img_1.jpg)"></div>
					<div class="media-body">
						<h5 class="mb-3">01. Service Title Here</h5>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
					</div>
				</div>

				<div
					class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
					<div class="probootstrap-media-image"
						style="background-image: url(assets/images/img_2.jpg)"></div>
					<div class="media-body">
						<h5 class="mb-3">02. Service Title Here</h5>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
					</div>
				</div>

			</div>
			<div class="col-md-6">

				<div
					class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
					<div class="probootstrap-media-image"
						style="background-image: url(assets/images/img_4.jpg)"></div>
					<div class="media-body">
						<h5 class="mb-3">03. Service Title Here</h5>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
					</div>
				</div>

				<div
					class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
					<div class="probootstrap-media-image"
						style="background-image: url(assets/images/img_5.jpg)"></div>
					<div class="media-body">
						<h5 class="mb-3">04. Service Title Here</h5>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
					</div>
				</div>

			</div>
		</div>
	</div>
	</section>
	<!-- END section -->

	<section class="probootstrap_section" id="section-feature-testimonial">
	<div class="container">
		<div class="row justify-content-center mb-5">
			<div class="col-md-12 text-center mb-5 probootstrap-animate">
				<h2 class="display-4 border-bottom probootstrap-section-heading">Testimonial</h2>
				<blockquote class="">
					<p class="lead mb-4">
						<em>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in Bookmarksgrove right at the coast of the
							Semantics, a large language ocean. A small river named Duden
							flows by their place and supplies it with the necessary
							regelialia. It is a paradisematic country, in which roasted parts
							of sentences fly into your mouth.</em>
					</p>
					<p class="probootstrap-author">
						<a href="https://probootstrap.com/" target="_blank"> <img
							src="assets/images/person_1.jpg"
							alt="Free Template by ProBootstrap.com" class="rounded-circle">
							<span class="probootstrap-name">James Smith</span> <span
							class="probootstrap-title">Chief Executive Officer</span>
						</a>
					</p>
				</blockquote>

			</div>
		</div>

	</div>
	</section>
	<!-- END section -->

	<section class="probootstrap_section bg-light">
	<div class="container">
		<div class="row text-center mb-5 probootstrap-animate">
			<div class="col-md-12">
				<h2 class="display-4 border-bottom probootstrap-section-heading">News</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">

				<div
					class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
					<div class="probootstrap-media-image"
						style="background-image: url(assets/images/img_1.jpg)"></div>
					<div class="media-body">
						<span class="text-uppercase">January 1st 2018</span>
						<h5 class="mb-3">Travel To United States Without Visa</h5>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
						<p>
							<a href="#">Read More</a>
						</p>
					</div>
				</div>

				<div
					class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
					<div class="probootstrap-media-image"
						style="background-image: url(assets/images/img_2.jpg)"></div>
					<div class="media-body">
						<span class="text-uppercase">January 1st 2018</span>
						<h5 class="mb-3">Travel To United States Without Visa</h5>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
						<p>
							<a href="#">Read More</a>
						</p>
					</div>
				</div>

			</div>
			<div class="col-md-6">

				<div
					class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
					<div class="probootstrap-media-image"
						style="background-image: url(assets/images/img_4.jpg)"></div>
					<div class="media-body">
						<span class="text-uppercase">January 1st 2018</span>
						<h5 class="mb-3">Travel To United States Without Visa</h5>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
						<p>
							<a href="#">Read More</a>
						</p>
					</div>
				</div>

				<div
					class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
					<div class="probootstrap-media-image"
						style="background-image: url(assets/images/img_5.jpg)"></div>
					<div class="media-body">
						<span class="text-uppercase">January 1st 2018</span>
						<h5 class="mb-3">Travel To United States Without Visa</h5>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
						<p>
							<a href="#">Read More</a>
						</p>
					</div>
				</div>

			</div>
		</div>
	</div>
	</section>
	<!-- END section -->

	<section class="probootstrap_section">
	<div class="container">
		<div class="row text-center mb-5 probootstrap-animate">
			<div class="col-md-12">
				<h2 class="display-4 border-bottom probootstrap-section-heading">Travel
					With Us</h2>
			</div>
		</div>

		<div class="row probootstrap-animate">
			<div class="col-md-12">
				<div class="owl-carousel js-owl-carousel-2">
					<div>
						<div
							class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
							<img src="assets/images/sq_img_2.jpg"
								alt="Free Template by ProBootstrap" class="img-fluid">
							<div class="media-body">
								<h5 class="mb-3">02. Service Title Here</h5>
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.
								</p>
							</div>
						</div>
					</div>
					<!-- END slide item -->

					<div>
						<div
							class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
							<img src="assets/images/sq_img_1.jpg"
								alt="Free Template by ProBootstrap" class="img-fluid">
							<div class="media-body">
								<h5 class="mb-3">02. Service Title Here</h5>
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.
								</p>
							</div>
						</div>
					</div>
					<!-- END slide item -->

					<div>
						<div
							class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
							<img src="assets/images/sq_img_3.jpg"
								alt="Free Template by ProBootstrap" class="img-fluid">
							<div class="media-body">
								<h5 class="mb-3">02. Service Title Here</h5>
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.
								</p>
							</div>
						</div>
					</div>
					<!-- END slide item -->

					<div>
						<div
							class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
							<img src="assets/images/sq_img_4.jpg"
								alt="Free Template by ProBootstrap" class="img-fluid">
							<div class="media-body">
								<h5 class="mb-3">02. Service Title Here</h5>
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.
								</p>
							</div>
						</div>
					</div>
					<!-- END slide item -->

					<div>
						<div
							class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
							<img src="assets/images/sq_img_5.jpg"
								alt="Free Template by ProBootstrap" class="img-fluid">
							<div class="media-body">
								<h5 class="mb-3">02. Service Title Here</h5>
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.
								</p>
							</div>
						</div>
					</div>
					<!-- END slide item -->


					<div>
						<div
							class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
							<img src="assets/images/sq_img_2.jpg"
								alt="Free Template by ProBootstrap" class="img-fluid">
							<div class="media-body">
								<h5 class="mb-3">02. Service Title Here</h5>
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.
								</p>
							</div>
						</div>
					</div>
					<!-- END slide item -->

					<div>
						<div
							class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
							<img src="assets/images/sq_img_1.jpg"
								alt="Free Template by ProBootstrap" class="img-fluid">
							<div class="media-body">
								<h5 class="mb-3">02. Service Title Here</h5>
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.
								</p>
							</div>
						</div>
					</div>
					<!-- END slide item -->

					<div>
						<div
							class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
							<img src="assets/images/sq_img_3.jpg"
								alt="Free Template by ProBootstrap" class="img-fluid">
							<div class="media-body">
								<h5 class="mb-3">02. Service Title Here</h5>
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.
								</p>
							</div>
						</div>
					</div>
					<!-- END slide item -->

					<div>
						<div
							class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
							<img src="assets/images/sq_img_4.jpg"
								alt="Free Template by ProBootstrap" class="img-fluid">
							<div class="media-body">
								<h5 class="mb-3">02. Service Title Here</h5>
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.
								</p>
							</div>
						</div>
					</div>
					<!-- END slide item -->

					<div>
						<div
							class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
							<img src="assets/images/sq_img_5.jpg"
								alt="Free Template by ProBootstrap" class="img-fluid">
							<div class="media-body">
								<h5 class="mb-3">02. Service Title Here</h5>
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.
								</p>
							</div>
						</div>
					</div>
					<!-- END slide item -->

				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- END section -->

	<footer class="probootstrap_section probootstrap-border-top">
	<div class="container">
		<div class="row mb-5">
			<div class="col-md-3">
				<h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
				<ul class="list-unstyled">
					<li><a href="https://free-template.co" target="_blank">Home</a></li>
					<li><a href="https://free-template.co" target="_blank">About</a></li>
					<li><a href="https://free-template.co" target="_blank">Services</a></li>
					<li><a href="https://free-template.co" target="_blank">Contact</a></li>
				</ul>
			</div>
			<div class="col-md-3">
				<h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
				<ul class="list-unstyled">
					<li><a href="https://free-template.co" target="_blank">Home</a></li>
					<li><a href="https://free-template.co" target="_blank">About</a></li>
					<li><a href="https://free-template.co" target="_blank">Services</a></li>
					<li><a href="https://free-template.co" target="_blank">Contact</a></li>
				</ul>
			</div>
			<div class="col-md-3">
				<h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
				<ul class="list-unstyled">
					<li><a href="https://free-template.co" target="_blank">Home</a></li>
					<li><a href="https://free-template.co" target="_blank">About</a></li>
					<li><a href="https://free-template.co" target="_blank">Services</a></li>
					<li><a href="https://free-template.co" target="_blank">Contact</a></li>
				</ul>
			</div>
			<div class="col-md-3">
				<h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
				<ul class="list-unstyled">
					<li><a href="https://free-template.co" target="_blank">Home</a></li>
					<li><a href="https://free-template.co" target="_blank">About</a></li>
					<li><a href="https://free-template.co" target="_blank">Services</a></li>
					<li><a href="https://free-template.co" target="_blank">Contact</a></li>
				</ul>
			</div>
		</div>
		<div class="row pt-5">
			<div class="col-md-12 text-center">
				<p class="probootstrap_font-14">
					&copy; 2017. All Rights Reserved. <br> Designed &amp;
					Developed by <a href="https://probootstrap.com/" target="_blank">ProBootstrap</a><small>
						(Don't remove credit link on this footer. See <a
						href="https://probootstrap.com/license/">license</a>)
					</small>
				</p>
				<p class="probootstrap_font-14">
					Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a>
				</p>
			</div>
		</div>
	</div>
	</footer>


	<script src="assets/js/jquery.min.js"></script>

	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>

	<script src="assets/js/bootstrap-datepicker.js"></script>
	<script src="assets/js/jquery.waypoints.min.js"></script>
	<script src="assets/js/jquery.easing.1.3.js"></script>

	<script src="assets/js/select2.min.js"></script>

	<script src="assets/js/main.js"></script>
</body>
</html>