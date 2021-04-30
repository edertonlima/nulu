	

	<?php 
		$imagem = get_field('imagem-listagem')['sizes']['thumbnail'];
	?>

	<div class="post" style="background-image: url('<?php echo $imagem; ?>');">
		<span class="data"><?php echo get_the_date(); ?> </span>
		<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">
			<h3 class="align-center"><?php the_title(); ?></h3>
			<p class="align-center"><?php echo get_the_excerpt(); ?></p>
		</a>
	</div>