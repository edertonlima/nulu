
<?php get_header(); ?>

<section class="box-section box-section-no-padding">
	<div class="slide-page">

		<?php if( have_rows('slide-principal',18) ):
			while( have_rows('slide-principal',18) ) : the_row(); ?>

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
		<div class="row list-post">

			<?php if( have_posts() ){
				while ( have_posts() ) : the_post(); ?>

					<div class="col-6">
						<article class="item-post">

							<?php 
								$imagem_array = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'thumbnail' );
								$imagem = $imagem_array[0];

								$category = wp_get_post_terms( $post->ID, 'category' )[0];
							?>

							<a href="<?php the_permalink(); ?>" class="img-post">
								<img src="<?php echo $imagem; ?>" alt="<?php the_title(); ?>">
							</a>

							<h3><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a></h3>
							<span class="legenda-post">
								<a href="<?php echo get_term_link( $category->term_id); ?>" title="<?php echo $category->name; ?>"><?php echo $category->name; ?></a>
								 <strong>| <?php the_date(); ?></strong>
							</span>
						</article>
					</div>

				<?php endwhile;
			}else{
				echo '<div class="col-12 align-center"><p>Nenhum conteúdo encontrado.</p></div>';
			} ?>

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
		variableWidth: true
	});
});
</script>