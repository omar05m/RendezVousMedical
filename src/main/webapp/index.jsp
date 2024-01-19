<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="eheio.ma.dao.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required Meta Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Page Title -->
    <title>Medino</title>

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
    <link rel="stylesheet" href="assets/css/styleCal.css">
    
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
                        <li><a href="departements.jsp">departments</a></li>
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
    <section class="banner-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <h4>Prendre soin d’une vie meilleure</h4>
						<h1>Bénéficiez de l'expertise de la santé</h1>
						<p> votre bien-être est notre priorité. Nos professionnels de santé s'engagent à vous offrir des
							soins exceptionnels dans un environnement accueillant et moderne</p>
                    <a href="#appointment-form" class="template-btn mt-3" onclick="scrollToAppointment(event)">Prendre Rendez-vous</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Banner Area End -->

    <!-- Feature Area Starts -->
    <section class="feature-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
						<div class="single-feature text-center item-padding">
							<img src="assets/images/feature1.png" alt="">
							<h3>technologie avancée</h3>
							<p class="pt-3">Profiter des meilleurs soins grâce à nos techniques les plus avancés.</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="single-feature text-center item-padding mt-4 mt-md-0">
							<img src="assets/images/feature2.png" alt="">
							<h3>endroit confortable</h3>
							<p class="pt-3">Dans notre cabinet médical, le confort rencontre le bien-être pour des soins
								exceptionnels</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="single-feature text-center item-padding mt-4 mt-lg-0">
							<img src="assets/images/feature3.png" alt="">
							<h3>Équipement de qualité</h3>
							<p class="pt-3">Équipé du matériel de dernière génération, assurant des soins exceptionnels
							</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="single-feature text-center item-padding mt-4 mt-lg-0">
							<img src="assets/images/feature4.png" alt="">
							<h3>Meilleurs personnels</h3>
							<p class="pt-3">notre équipe chaleureuse, prête à offrir des soins attentionnés et
								personnalisés</p>
						</div>
					</div>
            </div>
        </div>
    </section>
    <!-- Feature Area End -->

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

    <!-- Department Area Starts -->
    <section class="department-area section-padding4">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-top text-center">
                        <h2>Les services les plus recherchés </h2>
                        <p>Dotée des dernières avancées médicales, notre clinique
								offre un environnement accueillant où chaque visite promet des soins exceptionnels</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="department-slider owl-carousel">
                        <div class="single-slide">
                            <div class="slide-img">
                                <img src="assets/images/department1.jpg" alt="" class="img-fluid">
                                <div class="hover-state">
                                    <a href="#"><i class="fa fa-stethoscope"></i></a>
                                </div>
                            </div>
                            <div class="single-department item-padding text-center">
                                <h3>cardiac clinic</h3>
                                <p>Hath creeping subdue he fish gred face whose spirit that seasons today multiply female midst upon</p>
                            </div>
                        </div>
                        <div class="single-slide">
                            <div class="slide-img">
                                <img src="assets/images/department2.jpg" alt="" class="img-fluid">
                                <div class="hover-state">
                                    <a href="departments.html"><i class="fa fa-stethoscope"></i></a>
                                </div>
                            </div>
                            <div class="single-department item-padding text-center">
                                <h3>Consultation Cardiaque</h3>
									<p>Explorez des soins cardiaques d'expertise, offrant une excellence médicale
										inégalées.</p>
                            </div>
                        </div>
                        <div class="single-slide">
                            <div class="slide-img">
                                <img src="assets/images/department3.jpg" alt="" class="img-fluid">
                                <div class="hover-state">
                                    <a href="departments.html"><i class="fa fa-stethoscope"></i></a>
                                </div>
                            </div>
                            <div class="single-department item-padding text-center">
                            <h3>Chirurgie Plastique</h3>
									<p>Découvrez l'art de la chirurgie plastique, où l'esthétique rencontre l'expertise
										médicale.</p>
                                </div>
                        </div>
                        <div class="single-slide">
                            <div class="slide-img">
                                <img src="assets/images/department1.jpg" alt="" class="img-fluid">
                                <div class="hover-state">
                                    <a href="departments.html"><i class="fa fa-stethoscope"></i></a>
                                </div>
                            </div>
                            <div class="single-department item-padding text-center">
                                <h3>Clinique Dentaire</h3>
									<p>Explorez notre clinique dentaire, offrant des soins experts pour des sourires
										éclatants.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Department Area Starts -->

    <!-- Patient Area Starts -->
    <section class="patient-area section-padding appointment-area section-padding" id="appointment-form">
       
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-top text-center">
                        <h2>témoignages</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-5">
                    <div class="table mb-4">
							<div class="calendar-container">
        <table class="calendar">
            <!-- Table headers for days and time slots -->
            <tr>
                <th>Time/Day</th>
                <th>Mon</th>
                <th>Tue</th>
                <th>Wed</th>
                <th>Thu</th>
                <th>Fri</th>
            </tr>

            <!-- Time slots -->
            <% 
            for(int hour = 9; hour < 17; hour++) {
                String[] days = {"Mon", "Tue", "Wed", "Thu", "Fri"};
                for(int part = 0; part < 2; part++) {
                    String time = hour + (part == 0 ? ":00" : ":30");
            %>
            <tr>
                <td><%= time %></td> <!-- Display time -->
                <% 
                for(String day : days) {
                    boolean isReserved = RendezVousDao.isTimeSlotReserved(day, time);
                %>
                    <td class="<%= isReserved ? "reserved" : "available" %>" onClick="<%= isReserved ? "" : "bookTimeSlot('" + day + "', '" + time + "')" %>">
                        <%= isReserved ? "Ne pas disponible" : "Disponible" %>
                    </td>
                <% 
                }
                %>
            </tr>
            <% 
                }
            } 
            %>
        </table>
    </div>
						</div>
                </div>
                <div class="col-lg-5 offset-lg-1 align-self-center">
                    <div class="appointment-form text-center mt-5 mt-lg-0">
                        <h3 class="mb-5">Réserver votre rendez-vous</h3>
                        <form action="RendezVous" method="post">
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
                                <input type="datetime-local" name="date_rdv" placeholder="Appointment Date" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Appointment Date'" required class="single-input">
                            </div>
                            <div class="mt-10">
                                <textarea class="single-textarea" name="message" placeholder="Message" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Message'" required></textarea>
                            </div>
                            <button type="submit" class="template-btn mt-10">Rendez-vous maintenant</button>
                        </form>
                    </div>
                </div>
            </div>
        
    </section>
    <!-- Patient Area Starts -->

    <!-- Specialist Area Starts -->
    <section class="specialist-area section-padding">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 offset-lg-3">
						<div class="section-top text-center">
							<h2>Nos specialistes</h2>

						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3 col-sm-6">
						<div class="single-doctor mb-4 mb-lg-0">
							<div class="doctor-img">
								<img src="assets/images/doctor1.jpg" alt="" class="img-fluid">
							</div>
							<div class="content-area">
								<div class="doctor-name text-center">
									<h3>Éthel Davis</h3>
									<h6>Cardiologue</h6>
								</div>
								<div class="doctor-text text-center">
									<div class="doctor-text text-center">
										<p>Découvrez l'expertise exceptionnelle du Dr. Davis, spécialiste en cardiologie
											renommée.</p>
									</div>

									<ul class="doctor-icon">
										<li><a href="#"><i class="fa fa-facebook"></i><a></li>
										<li><a href="#"><i class="fa fa-twitter"></i><a></li>
										<li><a href="#"><i class="fa fa-linkedin"></i><a></li>
										<li><a href="#"><i class="fa fa-pinterest"></i><a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="single-doctor mb-4 mb-lg-0">
							<div class="doctor-img">
								<img src="assets/images/doctor2.jpg" alt="" class="img-fluid">
							</div>
							<div class="content-area">
								<div class="doctor-name text-center">
									<h3>Dr. Julien Lambert</h3>
									<h6>Chirurgien Orthopédiste</h6>

								</div>
								<div class="doctor-text text-center">
									<div class="doctor-text text-center">
										<p>Découvrez l'excellence chirurgicale du Dr. Lambert, spécialiste en orthopédie
											renommé.</p>
									</div>

									<ul class="doctor-icon">
										<li><a href="#"><i class="fa fa-facebook"></i><a></li>
										<li><a href="#"><i class="fa fa-twitter"></i><a></li>
										<li><a href="#"><i class="fa fa-linkedin"></i><a></li>
										<li><a href="#"><i class="fa fa-pinterest"></i><a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="single-doctor mb-4 mb-sm-0">
							<div class="doctor-img">
								<img src="assets/images/doctor3.jpg" alt="" class="img-fluid">
							</div>
							<div class="content-area">
								<div class="doctor-name text-center">
									<h3>Lucie Martin</h3>
									<h6>Gynécologue-Obstétricienne</h6>

								</div>
								<div class="doctor-text text-center">
									<div class="doctor-text text-center">
										<p>Explorez le monde de la santé féminine avec le Dr. Martin, experte
											passionnée.</p>
									</div>

									<ul class="doctor-icon">
										<li><a href="#"><i class="fa fa-facebook"></i><a></li>
										<li><a href="#"><i class="fa fa-twitter"></i><a></li>
										<li><a href="#"><i class="fa fa-linkedin"></i><a></li>
										<li><a href="#"><i class="fa fa-pinterest"></i><a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="single-doctor">
							<div class="doctor-img">
								<img src="assets/images/doctor4.jpg" alt="" class="img-fluid">
							</div>
							<div class="content-area">
								<div class="doctor-name text-center">
									<h3>Dr. Philippe Dupuis</h3>
									<h6>Urologue</h6>

								</div>
								<div class="doctor-text text-center">
									<div class="doctor-text text-center">
										<p>Explorez la expertise médicale du Dr. Dupuis, spécialiste en urologie de
											confiance.</p>
									</div>

									<ul class="doctor-icon">
										<li><a href="#"><i class="fa fa-facebook"></i><a></li>
										<li><a href="#"><i class="fa fa-twitter"></i><a></li>
										<li><a href="#"><i class="fa fa-linkedin"></i><a></li>
										<li><a href="#"><i class="fa fa-pinterest"></i><a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
    <!-- Specialist Area Starts -->

    <!-- Hotline Area Starts -->
    <section class="hotline-area text-center section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Ligne d'urgence</h2>
						<span>(+212) - 256 567 550</span>
						<p class="pt-3">
							Nous assurons un support client 24/7. N'hésitez pas à nous contacter <br>en cas d'urgence.
						</p>
                </div>
            </div>
        </div>
    </section>
    <!-- Hotline Area End -->

    <!-- News Area Starts -->
    <section class="news-area section-padding">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 offset-lg-3">
						<div class="section-top text-center">
							<h2>Actualités médicales</h2>

						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-6">
						<div class="single-news">
							<div class="news-img">
								<img src="assets/images/news1.jpg" alt="" class="img-fluid">
							</div>
							<div class="news-text">
								<div class="news-date">18 janvier 2024</div>
								<h3>
									<a href="blog-details.html">Nouvelle méthode pour modéliser la maladie cœliaque</a>
								</h3>
								<p>Une nouvelle avancée prometteuse dans la modélisation de la maladie cœliaque, ouvrant
									de nouvelles perspectives de traitement.</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="single-news mt-5 mt-md-0">
							<div class="news-img">
								<img src="assets/images/news2.jpg" alt="" class="img-fluid">
							</div>
							<div class="news-text">
								<div class="news-date">19 janvier 2024</div>
								<h3>
									<a href="blog-details.html">Nouvelles avancées dans les technologies de la
										radiologie</a>
								</h3>
								<p>Découvrez les dernières technologies révolutionnaires en radiologie, promettant des
									diagnostics plus précis et des soins médicaux améliorés.</p>

							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="single-news mt-5 mt-lg-0">
							<div class="news-img">
								<img src="assets/images/news3.jpg" alt="" class="img-fluid">
							</div>
							<div class="news-text">
								<div class="news-date">19 janvier 2024</div>
								<h3>
									<a href="blog-details.html">Innovations dentaires : Vers une meilleure santé
										bucco-dentaire</a>
								</h3>
								<p>Découvrez les dernières innovations dentaires visant à améliorer la santé
									bucco-dentaire pour des sourires plus sains et éclatants.</p>

							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
    <!-- News Area Starts -->
    
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
