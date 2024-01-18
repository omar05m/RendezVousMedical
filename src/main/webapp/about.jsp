<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required Meta Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Page Title -->
    <title>About us</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/logo/favicon.png" type="image/x-icon">

    <!-- CSS Files -->
    <link rel="stylesheet" href="assets/css/animate-3.7.0.css">
    <link rel="stylesheet" href="assets/css/font-awesome-4.7.0.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap-4.1.3.min.css">
    <link rel="stylesheet" href="assets/css/owl-carousel.min.css">
    <link rel="stylesheet" href="assets/css/jquery.datetimepicker.min.css">
    <link rel="stylesheet" href="assets/css/linearicons.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <!-- Preloader Starts -->
    <div class="preloader">
        <div class="spinner"></div>
    </div>
    <!-- Preloader End -->

    <!-- Header Area Starts -->
    <header class="header-area">
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 d-md-flex">
                        <h6 class="mr-3"><span class="mr-2"><i class="fa fa-mobile"></i></span> Appelez-nous maintenant ! 05 63 15 92 65</h6>
							<h6 class="mr-3"><span class="mr-2"><i class="fa fa-envelope-o"></i></span>ConsultationFacile@gmail.com</h6>
							<h6><span class="mr-2"><i class="fa fa-map-marker"></i></span> Trouvez notre emplacement</h6>
                    </div>
                    <div class="col-lg-3">
                        <div class="social-links">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#"><i class="fa fa-vimeo"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="header" id="home">
            <div class="container">
                <div class="row align-items-center justify-content-between d-flex">
                <div id="logo">
                    <a href="index.html"><img src="assets/images/logo/logo.png" alt="" title="" /></a>
                </div>
                <nav id="nav-menu-container">
                    <ul class="nav-menu">
                        <li class="menu-active"><a href="index.jsp">Home</a></li>
                        <li><a href="departments.jsp">departments</a></li>
                        <li><a href="about.jsp">about us</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                        <li><a href="login.jsp">Assistance</a></li>			          				          
                    </ul>
                </nav><!-- #nav-menu-container -->		    		
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->

    <!-- Banner Area Starts -->
    <section class="banner-area other-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1>About Us</h1>
                    <a href="index.html">Home</a> <span>|</span> <a href="about.html">About Us</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Banner Area End -->

    <!-- Welcome Area Starts -->
    <section class="welcome-area section-padding3">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 align-self-center">
                    <div class="welcome-img">
                        <img src="assets/images/welcome.png" alt="">
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="welcome-text mt-5 mt-lg-0">
                        <h2>Bienvenue dans votre clinique</h2>
                        <p class="pt-3">Découvrez une clinique moderne et chaleureuse, alliant qualité des soins et
                            technologies avancées. Notre équipe dévouée vous assure une expérience personnalisée,
                            garantissant votre bien-être. Dotée des dernières avancées médicales, notre clinique
                            offre un environnement accueillant où chaque visite promet des soins exceptionnels</p>
                        <p>Bienvenue dans un lieu dédié à votre santé, où l'excellence rencontre la compassion.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Welcome Area End -->

    <!-- Patient Area Starts -->
     <section class="patient-area section-padding appointment-area section-padding" id="appointment-form">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-top text-center">
                        <h2>témoignages</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-5">
                    <div class="single-patient mb-4">
							<img src="assets/images/patient1.png" alt="">
							<h3> Marie Dubois</h3>
							<h5>patiente </h5>
							<p class="pt-3">Un service exceptionnel ! Le personnel attentionné et les installations
								modernes ont rendu ma visite à la clinique mémorable. Des soins de qualité et une équipe
								professionnelle."</p>
						</div>
						<div class="single-patient">
							<img src="assets/images/patient2.png" alt="">
							<h3>Dr. Nicolas Dupont </h3>
							<h5>Cardiologue</h5>
							<p class="pt-3">Une chirurgie plastique impeccable ! Le personnel compétent et les résultats
								extraordinaires ont transformé ma vie. La clinique offre une expertise exceptionnelle et
								un suivi attentionné.</p>
						</div>
                </div>
                <div class="col-lg-5 offset-lg-1 align-self-center">
                    <div class="appointment-form text-center mt-5 mt-lg-0">
                        <h3 class="mb-5">Réserver votre rendez-vous</h3>
                        <form action="#">
                            <div class="mt-10">
                                <input type="text" name="first_name" placeholder="First Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name'" required class="single-input">
                            </div>
                            <div class="mt-10">
                                <input type="text" name="last_name" placeholder="Last Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Last Name'" required class="single-input">
                            </div>
                            <div class="mt-10">
                                <input type="email" name="email" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'" required class="single-input">
                            </div>
                            <div class="mt-10">
                                <input type="text" name="phone" placeholder="Phone Number" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone Number'" required class="single-input">
                            </div>
                            <div class="mt-10">
                                <input type="date" name="date" placeholder="Appointment Date" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Appointment Date'" required class="single-input">
                            </div>
                            <div class="mt-10">
                                <textarea class="single-textarea" name="message" placeholder="Message" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Message'" required></textarea>
                            </div>
                            <button type="submit" class="template-btn mt-10">Rendez-vous maintenant</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Patient Area Starts -->
    
    <!-- Footer Area Starts -->
    <footer class="footer-area section-padding">
			<div class="footer-widget">
				<div class="container">
					<div class="row">
						<div class="col-xl-2 col-lg-3">
							<div class="single-widget-home mb-5 mb-lg-0">
								<h3 class="mb-4">top products</h3>
								<ul>
									<li class="mb-2"><a href="#">Site web géré</a></li>
									<li class="mb-2"><a href="#">Réputation gérée</a></li>
									<li class="mb-2"><a href="#">Outils performants</a></li>
									<li><a href="#">Service de marketing</a></li>
								</ul>
							</div>
						</div>
						<div class="col-xl-5 offset-xl-1 col-lg-6">
							<div class="single-widget-home mb-5 mb-lg-0">
								<h3 class="mb-4">Newsletter</h3>
								<p class="mb-4">Vous pouvez nous faire confiance. Nous envoyons uniquement des offres
									promotionnelles, rien d'autre.</p>
								<form action="#">
									<input type="email" placeholder="Votre email ici" onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Votre email ici'" required>
									<button type="submit" class="template-btn">abonner </button>
								</form>
							</div>
						</div>
						<div class="col-xl-3 offset-xl-1 col-lg-3">
							<div class="single-widge-home">
								<h3 class="mb-4">Instagram</h3>
								<div class="feed">
									<img src="assets/images/feed1.jpg" alt="feed"> <img src="assets/images/feed2.jpg"
										alt="feed"> <img src="assets/images/feed3.jpg" alt="feed"> <img
										src="assets/images/feed4.jpg" alt="feed"> <img src="assets/images/feed5.jpg"
										alt="feed"> <img src="assets/images/feed6.jpg" alt="feed"> <img
										src="assets/images/feed7.jpg" alt="feed"> <img src="assets/images/feed8.jpg"
										alt="feed">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-copyright">
				<div class="container">

					<div class="row">
						<div class="col-lg-8 col-md-6">

						</div>
						<div class="col-lg-4 col-md-6">
							<div class="social-icons">
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
									<li><a href="#"><i class="fa fa-behance"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
    <!-- Footer Area End -->


    <!-- Javascript -->
    <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="assets/js/vendor/bootstrap-4.1.3.min.js"></script>
    <script src="assets/js/vendor/wow.min.js"></script>
    <script src="assets/js/vendor/owl-carousel.min.js"></script>
    <script src="assets/js/vendor/jquery.datetimepicker.full.min.js"></script>
    <script src="assets/js/vendor/jquery.nice-select.min.js"></script>
    <script src="assets/js/vendor/superfish.min.js"></script>
    <script src="assets/js/main.js"></script>


</body>
</html>
    