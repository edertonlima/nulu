
<?php get_header(); ?>

	<section class="box-section box-header-home" style="background-color: #e4e7f2; background-image: url('<?php the_field('foto-banner-home'); ?>');">
		<div class="container">
			<div class="row">
				<div class="col-6 align-self-center">

					<div class="text-banner">
						 <h1 class="text-clip clip cor-cor1">
							<div class="text-clip-wrapper">
								<?php if( have_rows('titulo-banner-home') ):
									$i = 0;
									while( have_rows('titulo-banner-home') ): the_row(); ?>
										<span class="<?php if($i == 0){ echo 'is-visible'; }else{ echo 'is-hidden'; }?>">
											<?php echo get_sub_field('texto'); ?>
										</span>
									<?php $i++; endwhile;
								endif; ?>
							</div>
							<p class="text-subtitulo destaque"><?php the_field('subtitulo-banner-home'); ?></p>
						 </h1>
					</div>

				</div>
			</div>
		</div>
	</section>

	<section class="box-section">
		<div class="container">
			<div class="row">
				<div class="col-8">
					
					<div class="text-destaque topo-efeito">
						<i class="fas fa-quote-left cor-cinza-claro"></i>
						<h3 class="text-destaque-item align-center cor-cor1">
							<?php the_field('frase'); ?>
						</h3>
						<span class="text-destaque-legenda"><?php the_field('nome-frase'); ?></span>
					</div>

				</div>
			</div>
		</div>
	</section>

	<section class="box-section">
		<div class="container">
			<div class="row">
				<div class="col-6 align-self-center">
					<div class="img-destaque">
						<img src="<?php the_field('foto-biografia',129); ?>" alt="<?php the_title(); echo ', ' . get_bloginfo( 'name' ); ?>">
					</div>
				</div>
				<div class="col-6 align-self-center">
					
					<div class="content-txt">								
						<?php the_field('texto-biografia',129); ?>
						<a href="<?php echo get_permalink(get_page_by_path('biografia')); ?>" class="btn btn-bg-cor1 cor-branco" title="conheça sua trajetória">conheça sua trajetória</a>
					</div>

				</div>
			</div>
		</div>
	</section>

	<?php if( have_rows('depoimentos',129) ): ?>		    
		<section class="box-section">
			<div class="container">
				<div class="row">
					<div class="col-12">
						
						<div class="depoimentos" id="depoimentos">
							<?php while( have_rows('depoimentos',129) ): the_row(); ?>				
								
								<div class="item-slide">
									<div class="item-depoimentos">
										<div class="content-item">
											<p><?php the_sub_field('texto'); ?></p>
											<span class="titulo-item"><?php the_sub_field('titulo'); ?></span>
											<span class="subtitulo-item"><?php the_sub_field('subtitulo'); ?></span>
										</div>
										<div class="image-item">
											<img src="<?php echo get_sub_field('foto')['sizes']['thumbnail']; ?>" alt="<?php the_sub_field('titulo'); ?>">
										</div>
									</div>
								</div>

							<?php endwhile; ?>
						</div>

					</div>
				</div>
			</div>
		</section>
	<?php endif; ?>

	<section class="box-section bg-cinza-claro bg-meio">
		<div class="container">
			<div class="row">
				<div class="col-6">
					<h2 class="">Nossos Projetos</h2>
					<?php if(get_field('descricao-projetos')){ ?>
						<p class="text-subtitulo destaque"><?php the_field('descricao-projetos'); ?></p>
					<?php } ?>
				</div>
			</div>

			<?php if( have_rows('projetos') ): ?>
				<div class="row row-projetos" id="projetos">
					<?php while( have_rows('projetos') ): the_row(); ?>
					
						<div class="col-12">
							<div class="projeto">
								<?php if(get_sub_field('titulo-projetos')){ ?>
									<h3 class=""><?php the_sub_field('titulo-projetos'); ?></h3>
								<?php } ?>
								<div class="scrollbar-dynamic">
									<p><?php the_sub_field('texto-projetos'); ?></p>
								</div>
							</div>
						</div>

					<?php endwhile; ?>
				</div>
			<?php endif; ?>
		</div>
	</section>

	<?php
	$query = array(
			'post_type' => 'post',
			'posts_per_page' => 3
		);
	query_posts( $query );

	if( have_posts() ){ ?>

		<section class="box-section">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h2 class="align-center">Últimas Notícias</h2>
						<p class="text-subtitulo destaque align-center">It is a long established fact that a reader will be distracted</p>
					</div>
				</div>

				<div class="row row-post">
					<?php while ( have_posts() ) : the_post(); ?>
						<div class="col-4">
							<?php get_template_part( 'content/list-post' ); ?>
						</div>
					<?php endwhile;
					wp_reset_query(); ?>
				</div>

				<a href="#" class="btn veja-mais btn-bg-cor1 cor-branco">veja mais</a>
			</div>
		</section>

	<?php } ?>

	<section class="box-section">
		<div class="">
			<div class="row">
				<div class="col-5">
					<img src="<?php the_field('foto-destaque-home'); ?>" class="img-block" alt="">
				</div>
				<div class="col-6 align-self-center <?php if(get_field('legenda-destaque-home')){ echo 'box-legenda'; } ?>">
					<div class="text-destaque">
						<i class="fas fa-quote-left cor-cinza-claro"></i>
						<h3 class="text-destaque-item align-left cor-cor1">
							<?php the_field('titulo-destaque-home'); ?>
						</h3>
						<span class="text-destaque-legenda"><?php the_field('nome-destaque-home'); ?></span>
					</div>

					<?php if(get_field('legenda-destaque-home')){ ?>
						<p class="txt-legenda"><?php the_field('legenda-destaque-home'); ?></p>
					<?php } ?>
				</div>
			</div>
		</div>
	</section>

	<section class="box-section">
		<div id="instagram-feed" class="instagram-feed"></div>
	</section>

<?php get_footer(); ?>

<script type="text/javascript">
	$(document).ready(function(){
		
	});
</script>

<script src="<?php echo get_template_directory_uri(); ?>/assets/js/plugins/text-clip/text-clip.js"></script>

<script src="<?php echo get_template_directory_uri(); ?>/assets/js/plugins/slick/slick.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#depoimentos').slick({
			dots: true,
			arrows: false,
			infinite: false,
			speed: 300,
			slidesToShow: 1,
			slidesToScroll: 1
		});

		slide = 0;
		$('#depoimentos .slick-dots li').each(function() {
			imagem = $('#depoimentos .slick-slide[data-slick-index="'+ slide +'"] img').attr('src');
			$('button', this).css('background-image','url('+ imagem +')');
			slide = slide+1;
		});

		// projetos
		$('#projetos').slick({
			dots: true,
			arrows: false,
			infinite: false,
			speed: 300,
			slidesToShow: 3,
			slidesToScroll: 1
		});
	});
</script>

<script src="<?php echo get_template_directory_uri(); ?>/assets/js/plugins/instagram-feed/instagram-feed.js"></script>
<script type="text/javascript">
	(function($){
		$(window).on('load', function(){
			$.instagramFeed({
				'username': 'edu_avallone',
				'container': "#instagram-feed",
				'display_profile': false,
				'display_biography': false,
				'display_gallery': true,
				'get_raw_json': false,
				'callback': null,
				'styling': true,
				'items': 5,
				'items_per_row': 5,
				'margin': 0
			});
		});
	})(jQuery);
</script>

<script src="<?php echo get_template_directory_uri(); ?>/assets/js/plugins/scrollbar/scrollbar.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.scrollbar-dynamic').scrollbar();
	});
</script>