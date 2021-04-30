
<?php get_header(); ?>

	<section class="box-section bg-cinza-claro bg-meio">
	</section>

	<section class="box-section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h2 class="align-center"><?php //the_title() ?></h2>
					<p class="text-subtitulo align-center"><?php// echo get_the_excerpt(); ?></p>
				</div>
			</div>
		</div>
	</section>

	<section class="box-section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					
					<div class="content-txt">
						<?php //the_content(); ?>
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