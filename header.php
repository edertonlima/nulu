<!DOCTYPE html>
<html lang="pt-br">
<head>

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="shortcut icon" href="" type="image/x-icon" />
	<link rel="icon" href="" type="image/x-icon" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="content-language" content="pt" />
	<meta name="rating" content="General" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="robots" content="index,follow" />
	<meta name="author" content="" />
	<meta name="language" content="pt-br" />
	<meta name="title" content="" />

	<title></title>

	<link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/assets/css/style.css" media="screen" />

	<?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>

	<header class="header">
		<nav class="nav nav-principal">
			<div class="container">
				<div class="logo"><a href="<?php echo get_home_url(); ?>">Edu Avalone</a></div>

					<ul>
						<?php 
							$array_menu = wp_get_nav_menu_items('menu');
							$menu = array();
							foreach ($array_menu as $item) {
								if (empty($m->menu_item_parent)) { ?>

									<li>
										<a href="<?php echo $item->url; ?>" title="<?php echo $item->title; ?>"> 
											<?php echo $item->title; ?>
										</a>
									</li>

								<?php }
							}
						?>
					</ul>

				<?php /*
				<ul class="align-right">
					<li class="<?php if(is_page('biografia')){ echo 'ativo'; } ?>">
						<a href="<?php echo get_permalink(get_page_by_path('biografia')); ?>" title="biografia">biografia</a>
					</li>
					<li class="<?php if(get_post_type() == 'post'){ echo 'ativo'; } ?>">
						<a href="<?php echo get_home_url(); ?>/noticias">notícias</a>
					</li>
					<li class="<?php if(get_post_type() == 'midias'){ echo 'ativo'; } ?>">
						<a href="<?php echo get_home_url(); ?>/midias">mídia</a>
					</li>
					<li class="<?php if(is_page('contato')){ echo 'ativo'; } ?>">
						<a href="#">contato</a>
					</li>
				</ul>
				*/ ?>

				<div class="menu-mobile" id="nav-icon2">
					<span></span>
					<span></span>
					<span></span>
					<span></span>
					<span></span>
					<span></span>
				</div>
			</div>
		</nav>
	</header>

	<?php if(is_front_page()){ ?>
		<nav class="nav nav-social">
			<div class="container">
				
				<div class="social social-redes">
					<span class="item"><span>fique por dentro</span></span>
					<span class="item"><a href="#"><i class="fab fa-facebook-f"></i></a></span>
					<span class="item"><a href="#"><i class="fab fa-instagram"></i></a></span>
					<span class="item"><a href="#"><i class="fab fa-twitter"></i></a></span>
					<span class="item"><a href="#"><i class="fab fa-youtube"></i></a></span>
					<span class="item"><a href="#"><i class="fab fa-linkedin-in"></i></a></span>
				</div>

				<div class="social social-email">
					<span class="item">
						<span>
							<a href=""><i class="far fa-envelope"></i>tamojunto@eduavallone.com.br</a>
						</span>
					</span>
				</div>

				<div class="social">
					<span class="item">
						<span>
							<a href=""><i class="fab fa-whatsapp"></i>(14) 99777-1045</a>
						</span>
					</span>
				</div>		
				
			</div>
		</nav>
	<?php } ?>