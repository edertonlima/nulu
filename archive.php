
<?php get_header(); ?>

	<section class="box-section box-section-no-padding">
		<div class="slide-page">

			<?php if( have_rows('slide-principal',16) ):
				while( have_rows('slide-principal',16) ) : the_row(); ?>

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

	<section class="box-section box-section-produtos list-produto-bg">

		<?php
			$img_bg_desk = get_field('bg-list-produto-desktop',16);
			$img_bg_mob = get_field('bg-list-produto-mobile',16);
		?>
		<img src="<?php echo $img_bg_desk["url"]; ?>" class="img-list-produto-bg" 
			srcset="<?php echo $img_bg_mob["url"] . ' 920w'; ?>, <?php echo $img_bg_desk["url"] . ' ' . $img_bg_desk["width"] . 'w'; ?>"
			alt="<?php echo get_the_title(16); ?>">

		<div class="container">
			<div class="row">
				<div class="col-6"></div>
				<div class="col-6">
					
					<div class="slide-produtos">
						<div class="item-slide item-slide-txt">
							<p><?php echo get_the_excerpt(16); ?></p>
						</div>

						<?php
							$query = array(
							'post_type' => 'produtos'
							);
							query_posts( $query );

							if( have_posts() ){
								while ( have_posts() ) : the_post(); 
									$imagem_array = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'thumbnail' );
									$imagem = $imagem_array[0];
									?>

									<div class="item-slide">
										<a href="<?php the_permalink(); ?>" class="img-produto" title="<?php the_title(); ?>">
											<img src="<?php echo $imagem; ?>" alt="<?php the_title(); ?>">
										</a>
										<h3><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><span><?php the_title(); ?></span></a></h3>
									</div>

								<?php endwhile;
								wp_reset_query();
							}
						?>
					</div>

				</div>
			</div>
		</div>
	</section>

<?php get_footer(); ?>

<script src="<?php echo get_template_directory_uri(); ?>/assets/js/plugins/slick/slick.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.slide-produtos').slick({
			dots: false,
			arrows: true,
			infinite: false,
			speed: 300,
			slidesToShow: 1,
			slidesToScroll: 1,
			variableWidth: true,
			responsive: [
				{
					breakpoint: 921,
					settings: "unslick"
				}
			]
		});

		$('.slide-page').slick({
			dots: true,
			arrows: false,
			infinite: false,
			speed: 300,
			slidesToShow: 1,
			slidesToScroll: 1
		});
	});

    $(window).resize(function () {
        var $windowWidth = $(window).width();
        if ($windowWidth > 920) {
            //$('.slide-produtos').slick('refresh');

			$('.slide-produtos').slick({
				dots: false,
				arrows: true,
				infinite: false,
				speed: 300,
				slidesToShow: 1,
				slidesToScroll: 1,
				variableWidth: true,
				responsive: [
					{
						breakpoint: 921,
						settings: "unslick"
					}
				]
			});
        }
    });

	
</script>