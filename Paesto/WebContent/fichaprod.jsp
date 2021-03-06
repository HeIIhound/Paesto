<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ficha Producto Ronea Working</title>
<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/styleficha.css">
<link rel="stylesheet" href="css/responsive.css">
<link href="css/styleindex.css" rel="stylesheet" type="text/css"
	media="screen" />

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<!-- End header area -->
<body>

	<div class="site-branding-area">
		<div class="container">
			<div class="row" id="wrapper">
				<div class="col-sm-6" id="wrapper-bgbtm">
					<div id="logo">
						<h1>
							<a href="index.html"> Ronea Working </a>
						</h1>
						<p>Design by LucaTic</p>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="shopping-item">
						<a href="cart.html">Carrito - <span class="cart-amunt">$100</span>
							<i class="fa fa-shopping-cart"></i> <span class="product-count">5</span></a>
					</div>
				</div>

				<!-- End mainmenu area -->
				<div>
					<div id="menu">
						<ul>
							<li><a href="index.html">Inicio</a></li>
							<li class="current_page_item"><a href="ServletProductos">Productos</a></li>
							<li><ul class="list-unstyled list-inline">
									<li class="dropdown dropdown-small"><a
										data-toggle="dropdown" data-hover="dropdown"
										class="dropdown-toggle" href="#"><span class="key">Categorias
										</span><span class="value"></span><b class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="ServletCategoria?cat=blanco">Ron Blanco</a></li>
											<li><a href="ServletCategoria?cat=ejo">Ron Añejo</a></li>
										</ul></li>
								</ul></li>
							<li><a href="login.html">Login</a></li>
							<li><a href="register.html">Registrarse</a></li>
						</ul>
					</div>
				</div>
				<div class="single-product-area">
					<div class="zigzag-bottom"></div>
					<div class="container">
						<div class="row">
							<div class="col-md-8">
								<div class="product-content-right">
									<div class="product-breadcroumb">
										<a href="index.html">Inicio</a> > <a href="ServletCategoria?cat=${producto.categoria}">${producto.categoria}</a>
										> <a href="ServletBuscador?homeBuscador=${producto.nombre}">${producto.nombre}</a>
									</div>

									<div class="row">
										<div class="col-sm-6">
											<div class="product-images">
												<div class="product-main-img">
													<img src="${producto.rutaImagen}" alt="">
												</div>


											</div>
										</div>

										<div class="col-sm-6">
											<div class="product-inner">
												<h2 class="product-name">${producto.nombre}</h2>
												<div class="product-inner-price">
													<ins>${producto.precio } €</ins>
													<del>100.00 €</del>
												</div>

												<form action="" class="cart">
													<div class="quantity">
														<input style="color: black" type="number" size="4" class="input-text qty text"
															title="Qty" value="1" name="quantity" min="1" step="1">
													</div>
													<button class="add_to_cart_button" type="submit">Add
														to cart</button>
												</form>

												<div class="product-inner-category">
													<p>
														Categoria: <a
															href="ServletCategoria?cat=${producto.categoria}">${producto.categoria}</a>.
													</p>
												</div>

												<div role="tabpanel">
													<ul class="product-tab" role="tablist">
														<li role="presentation" class="active"><a style="color: orange"
															href="#home" aria-controls="home" role="tab"
															data-toggle="tab">${producto.categoria}</a></li>
														<li role="presentation"><a href="#profile" style="color: orange"
															aria-controls="profile" role="tab" data-toggle="tab">Reviews</a></li>
													</ul>
													<div class="tab-content">
														<div role="tabpanel" class="tab-pane fade in active"
															id="home">
															<h2>Descripción</h2>
															<br />
															<p>${producto.descripcion}</p>

															<p></p>
														</div>
														<div role="tabpanel" class="tab-pane fade" id="profile">
															<h2>Reviews</h2>
															<div class="submit-review">
																<p>
																	<label for="name">Name</label> <input style="color: black" name="name"
																		type="text">
																</p>
																<p>
																	<label for="email">Email</label> <input style="color: black" name="email"
																		type="email">
																</p>
																<div class="rating-chooser">
																	<p>Your rating</p>

																	<div class="rating-wrap-post">
																		<i class="fa fa-star"></i> <i class="fa fa-star"></i>
																		<i class="fa fa-star"></i> <i class="fa fa-star"></i>
																		<i class="fa fa-star"></i>
																	</div>
																</div>
																<p>
																	<label for="review">Your review</label>
																	<textarea style="color: black" name="review" id="" cols="30" rows="10"></textarea>
																</p>
																<p>
																	<input type="submit" value="Submit">
																</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>



				<!-- Latest jQuery form server -->
				<script src="https://code.jquery.com/jquery.min.js"></script>

				<!-- Bootstrap JS form CDN -->
				<script
					src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

				<!-- jQuery sticky menu -->
				<script src="js/owl.carousel.min.js"></script>
				<script src="js/jquery.sticky.js"></script>

				<!-- jQuery easing -->
				<script src="js/jquery.easing.1.3.min.js"></script>

				<!-- Main Script -->
				<script src="js/main.js"></script>
			</div>
		</div>
	</div>
	<div id="footer">
		<p>&copy; LucaTic Factory S.A. 2018. Reservados todos los derechos</p>
	</div>
</body>
</html>