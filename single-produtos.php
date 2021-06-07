
<?php get_header(); ?>

	<?php if( have_posts() ){
		while ( have_posts() ) : the_post(); ?>

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

			<section class="box-section">
				<div class="container">
					<div class="row">
						
						<div class="col-6 align-center">
							<h1 class="destaque cor-cor1"><?php the_title(); ?></h1>

							<?php the_field('descricao-produto'); ?>

							<img src="<?php the_field('tabela-produto'); ?>" class="img-single" alt="Tabela Nutricional - <?php the_title(); ?>">
						</div>
						<div class="col-6 align-center col-info-single">
							<img src="<?php the_field('imagem-produto'); ?>" alt="<?php the_title(); ?>" class="img-single">

							<div class="info-single">

								<?php if( have_rows('informacoes-produto') ):
									while( have_rows('informacoes-produto') ) : the_row(); ?>

										<p>
											<strong><?php the_sub_field('titulo'); ?></strong>
											<?php the_sub_field('conteudo'); ?>
										</p>

									<?php endwhile;
								endif; ?>

								<?php if(get_field('embalagem-produto')){ ?>
									<div class="embalagens">
										<p><strong>Embalagem:</strong></p>
										<p><?php the_field('embalagem-produto'); ?></p>
									</div>
								<?php } ?>
							</div>

						</div>
					</div>
					<div class="row footer-single">
						<div class="col-6 align-center">
							<div class="ico-redes">
								<p class="cor-cor1">Compartilhe com pessoas de interesse!</p>

								<div class="sharethis-inline-share-buttons"></div>

							</div>
						</div>

						<?php if( have_rows('icone-produto') ): ?>
							<div class="col-6 align-center align-self-center">
								<ul class="ico-single">
									<?php while( have_rows('icone-produto') ) : the_row(); ?>

										<li class="img-hover">
											<img src="<?php the_sub_field('imagem'); ?>" class="ico-on">
											<img src="<?php the_sub_field('hover'); ?>" class="ico-hover">
										</li>

									<?php endwhile; ?>
								</ul>
							</div>
						<?php endif; ?>

					</div>
				</div>
			</section>

		<?php endwhile;
	} ?>

<?php get_footer(); ?>

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