
<?php get_header(); ?>

	<section class="box-section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h2 class="align-center">Nossas Notícias</h2>
					<p class="text-subtitulo align-center">It is a long established fact that a reader will be distracted</p>
				</div>
			</div>
		</div>
	</section>

	<section class="box-section">
		<div class="container">
			<div class="row row-post list-post">

				<?php if( have_posts() ){
					while ( have_posts() ) : the_post(); ?>

						<div class="col-4">
							<?php get_template_part( 'content/list-post' ); ?>
						</div>

					<?php endwhile;
				}else{
					echo '<div class="col-12 align-center"><p>Nenhum conteúdo encontrado.</p></div>';
				} ?>

			</div>
		</div>
	</section>


<?php get_footer(); ?>

<script type="text/javascript">
	$(document).ready(function(){
		
	});
</script>