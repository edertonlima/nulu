
<?php get_header(); ?>

	<section class="box-section box-section-no-padding">
		<div class="slide-page">

			<?php if( have_rows('slide-principal') ):
				while( have_rows('slide-principal') ) : the_row(); ?>

					<div class="item imagem slide-item-height-full" style="background-image: url('<?php the_sub_field('imagem'); ?>');">

						<?php if(get_sub_field('titulo')){ ?>
							<div class="container">
								<h2 class="destaque"><?php the_sub_field('titulo'); ?></h2>
							</div>
						<?php } ?>
					</div>

				<?php endwhile;
			endif; ?>

		</div>
	</section>

	<section class="box-section box-quem-somos bg-cor1">
		<div class="container">
			<div class="row">
				<div class="col-12 align-center">
					<h1 class="destaque cor-branco">bem vindo à nulu</h1>

					<div class="direction-revert-mobile">
						<div class="list-ico-page content-reduzido">

							<?php if( have_rows('topicos') ):
								while( have_rows('topicos') ) : the_row(); ?>

									<div class="item-ico">
										<div class="img-ico"><img src="<?php the_sub_field('icone'); ?>"></div>
										<h3 class="cor-branco"><?php the_sub_field('titulo'); ?></h3>
									</div>

								<?php endwhile;
							endif; ?>

						</div>

						<p class="content-reduzido cor-branco"><?php the_field('texto-topicos'); ?></p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="box-section box-instagram">
		<div class="container">
			<div class="row">
				<div class="col-12 align-center">
					<h2 class="destaque cor-cor2">universo nulu</h2>
					<p class="content-reduzido cor-cor2">Siga no instagram <strong><a class="cor-cor2" href="https://www.instagram.com/nulu_foods/">@nulu_foods</a></strong> para mais informações, vídeos, receitas e dicas!</p>
				</div>
			</div>
		</div>

		<div id="instagram-feed" class="box-instagrambox-instagrambox-instagrambox-instagram"></div>
	</section>

<?php get_footer(); ?>

<script src="<?php echo get_template_directory_uri(); ?>/assets/js/plugins/scrollbar/scrollbar.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.scrollbar-dynamic').scrollbar();
	});
</script>

<script src="<?php echo get_template_directory_uri(); ?>/assets/js/plugins/instagram-feed/instagram-feed.js"></script>
<script type="text/javascript">
	(function($){
		$(window).on('load', function(){
			$.instagramFeed({
				'username': 'nulu_foods',
				'container': "#instagram-feed",
				'display_profile': false,
				'display_biography': false,
				'display_gallery': true,
				'get_raw_json': false,
				'callback': null,
				'styling': true,
				'items': 6,
				'items_per_row': 6,
				'margin': 0
			});
		});
	})(jQuery);
</script>

<script src="<?php echo get_template_directory_uri(); ?>/assets/js/plugins/slick/slick.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.slide-page').slick({
			dots: true,
			arrows: false,
			infinite: false,
			speed: 300,
			slidesToShow: 1,
			slidesToScroll: 1
		});
	});
</script>