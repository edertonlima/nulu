
<?php get_header(); ?>

	<section class="box-section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h2 class="align-center"><?php the_title() ?></h2>
					<p class="text-subtitulo align-center"><?php echo get_the_excerpt(); ?></p>
				</div>
			</div>
		</div>
	</section>

	<?php 
		$imagem = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), '' )[0];
		if($imagem){ ?>

			<section class="box-section">
				<div class="container">
					<div class="row">
						<div class="col-12">
							
							<img src="<?php echo $imagem; ?>" alt="<?php the_title() ?>" class="img-block">

						</div>
					</div>
				</div>
			</section>

		<?php }
	?>

	<section class="box-section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					
					<div class="content-txt">
						<?php the_content(); ?>
					</div>

				</div>
			</div>
		</div>
	</section>


<?php get_footer(); ?>

<script type="text/javascript">
	$(document).ready(function(){
		
	});
</script>