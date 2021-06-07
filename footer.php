
	<?php if (!(is_tax('category_treinamento')) or !(is_singular('treinamento'))) { ?>
		<section class="box-section no-padding-bottom">
			<div class="container">
				<form action="get" class="newsletter">
					<p>Inscreva-se para receber mais informações e novidades sobre a Nulu!</p>
					<fieldset class="input">
						<input type="text" name="s" placeholder="">
						<button type="submit">
							<svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
								<mask id="mask0" mask-type="alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="30" height="30">
								<path fill-rule="evenodd" clip-rule="evenodd" d="M0 0H29.9358V29.9358H0V0Z" fill="white"/>
								</mask>
								<g mask="url(#mask0)">
								<path fill-rule="evenodd" clip-rule="evenodd" d="M10.6781 24.251L9.17452 22.4582L18.1096 14.9683L9.17452 7.47837L10.6781 5.68558L21.7514 14.9683L10.6781 24.251ZM14.9683 0C6.70168 0 0 6.70161 0 14.9683C0 23.2349 6.70168 29.9358 14.9683 29.9358C23.2349 29.9358 29.9358 23.2349 29.9358 14.9683C29.9358 6.70161 23.2349 0 14.9683 0Z" fill="#1071B9"/>
								</g>
							</svg>
						</button>
					</fieldset>
				</form>
			</div>
		</section>
	<?php } ?>
	
	
	<footer class="footer bg-cor3" id="onde-encontrar">
		<div class="container">
			<div class="row">
				<div class="col-3">

					<div class="box-nav-footer">

						<img src="<?php echo get_template_directory_uri(); ?>/assets/images/img-footer-1.png" alt="" class="estrela-nav">

						<nav class="nav nav-footer">							
							<ul class="align-right">

								<?php 
									$array_menu = wp_get_nav_menu_items('header');
									$menu = array();
									foreach ($array_menu as $item) {
										if (empty($m->menu_item_parent)) { ?>

											<li>
												<a href="<?php echo $item->url; ?>" title="<?php echo $item->title; ?>"> 
													<?php echo $item->title; ?>
												</a>

												<?php if($item->title == 'Produtos'){ ?>
													<ul class="submenu-produtos">
														<?php
															$produtos_footer = array(
																'post_type' => 'produtos',
															);
															query_posts( $produtos_footer ); 

															while ( have_posts() ) : the_post(); ?>
																<li>
																	<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"> 
																		<?php the_title(); ?>
																	</a>
																</li>
															<?php endwhile;
															wp_reset_query();
														?>
													</ul>
												<?php } ?>
											</li>

										<?php }
									}
								?>

							</ul>
						</nav>

						<a href="#">
							<img src="<?php echo get_template_directory_uri(); ?>/assets/images/eu-reciclo.png" alt="">
						</a>

					</div>

				</div>
				<div class="col-2"></div>
				<div class="col-7 align-center">

					<h3 class="destaque cor-branco">onde encontrar</h3>

					<iframe src="https://www.google.com/maps/d/embed?mid=1UjGxntVw8542YPY4iAOPm7saPv-x5waT&hl=pt-BR" width="640" height="480"></iframe>

					<a href="https://www.google.com.br/maps/@-27.558774,-54.7243024,6z/data=!3m1!4b1!4m2!6m1!1s1UjGxntVw8542YPY4iAOPm7saPv-x5waT?hl=pt-BR&authuser=1" target="_blank" class="localizacao-mobile">
						<img src="<?php echo get_template_directory_uri(); ?>/assets/images/ico-mapa.svg" alt="">

						Abrir no Google Maps
					</a>

				</div>
			</div>
		</div>
	</footer>

	<?php
		if( have_rows('redes-socais','option') ): ?>
			<div class="redes-flutuante">

				<?php
				while( have_rows('redes-socais','option') ) : the_row(); ?>

					<a href="<?php the_sub_field('link'); ?>" title="<?php the_sub_field('nome'); ?>"><img src="<?php the_sub_field('icone'); ?>" alt="<?php the_sub_field('nome'); ?>"></a>

				<?php
				endwhile;
				?>
			</div>

		<?php
		endif;
	?>

</body>

<script src="<?php echo get_template_directory_uri(); ?>/assets/js/jquery/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		window_W = $(window).width();

		scroll_body = $(window).scrollTop();
		if(scroll_body > 25){
			$('.header').addClass('scroll');
		}else{
			$('.header').removeClass('scroll');
		}
	});


	$('.btn-onde-comprar').click(function(){
		item = $("#onde-encontrar");
		$('html,body').animate({
			scrollTop: $(item).offset().top-20
		}, 1000);

		$('.nav-mobile').removeClass('active');
	});


	$('#btn-open-menu').click(function(){
		$('.nav-mobile').toggleClass('active');
	});

	$('#btn-close-menu').click(function(){
		$('.nav-mobile').toggleClass('active');
	});	

	$(window).scroll(function(){
		scroll_body = $(window).scrollTop();
		if(scroll_body > 25){
			$('.header').addClass('scroll');
		}else{
			$('.header').removeClass('scroll');
		}
	});
</script>

<?php wp_footer(); ?>