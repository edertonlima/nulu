<?php get_header(); ?>

<section class="box-section treinamento list-treinamento">
	<div class="container">
		<div class="row">

            <div class="col-12 align-center">
				<h1 class="destaque cor-cor1">área <?php single_cat_title(); ?></h1>
            </div>

			<?php if( have_posts() ){
				while ( have_posts() ) : the_post(); ?>

                    <article class="item-treinamento col-12">
                        <div class="row">

                            <div class="col-6">
                                <div class="box-imagem">
                                    <?php
                                        $imagem_array = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'medium' );
									    $imagem = $imagem_array[0];
                                    ?>
                                    <img src="<?php echo $imagem; ?>" alt="<?php the_title(); ?>">
                                </div>
                            </div>
                            <div class="col-6">
                                <h3><?php the_title(); ?></h3>
                                <div class="info">
                                    <span><strong>3</strong> classes</span>
                                    <span><strong>1h</strong> duração total</span>
                                </div>
                                <div class="info">
                                    <p><strong>Requerimentos:</strong> <?php the_field('requerimentos-treinamento'); ?></p>
                                    <p><strong>Descrição:</strong> <?php the_field('resumo-treinamento'); ?></p>
                                </div>

                                <a href="<?php the_permalink(); ?>" class="btn btn-acessar-curso" title="Acessar curso">Acessar curso</a>
                            </div>

                        </div>
                    </article>

				<?php endwhile;
			}else{
				echo '<div class="col-12 align-center"><p class="sem-conteudo">Nenhum conteúdo encontrado.</p></div>';
			} ?>

		</div>
	</div>
</section>

<?php
	$query = array(
        //'posts_per_page' => 9,
        'post_type' 	 => 'download',
        'meta_key'		=> 'area',
        'meta_value'	=> get_queried_object()->term_id
        

        //'meta_query', array( array( 'key' => 'area', 'value' => $term_download, 'compare' => '=' )),
    );

    $the_query = new WP_Query( $query );
    //var_dump( $the_query );   

    if( $the_query->have_posts() ): ?>

        <section class="box-section no-padding-top treinamento list-materiais">
            <div class="container">
                <div class="row">

                    <div class="col-12 align-center">
                        <h2 class="destaque destaque--mini cor-cor1">material extra</h2>
                    </div>

                    <?php while( $the_query->have_posts() ) : $the_query->the_post(); ?>
                    
                        <div class="col-3">
                            <a href="<?php the_field('download'); ?>" class="item-materiais" title="<?php the_title(); ?>" download>
                                <div class="box-imagem">
                                    <?php
                                        $imagem_array = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'thumbnail' );
                                        $imagem = $imagem_array[0];
                                    ?>
                                    <img src="<?php echo $imagem; ?>" alt="<?php the_title(); ?>">
                                    <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg"><mask id="mask0" mask-type="alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="40" height="40"><path fill-rule="evenodd" clip-rule="evenodd" d="M0 0H39.9144V39.9144H0V0Z" fill="white"/></mask><g mask="url(#mask0)"><path fill-rule="evenodd" clip-rule="evenodd" d="M20.6173 25.2231L8.24039 10.4577L10.6308 8.45385L20.6173 20.3663L30.6038 8.45385L32.9952 10.4577L20.6173 25.2231ZM8.24039 29.7538H32.9952V26.6346H8.24039V29.7538ZM19.9567 0C8.93558 0 0 8.93558 0 19.9577C0 30.9798 8.93558 39.9144 19.9567 39.9144C30.9788 39.9144 39.9144 30.9798 39.9144 19.9577C39.9144 8.93558 30.9788 0 19.9567 0Z" fill="white"/></g></svg>
                                </div>
                                <h3><?php the_title(); ?></h3>
                            </a>
                        </div>

                    <?php endwhile; ?>

                </div>
            </div>
        </section>
	
    <?php endif; ?>
    <?php wp_reset_query(); ?>
    
    <?php if(get_queried_object()->term_id == 5):
        if( have_rows('nulu-numeros','option') ): ?>

            <section class="box-section no-padding-top nulu-em-numeros">
                <div class="container">
                    <div class="row">

                        <div class="col-12 align-center">
                            <h2 class="destaque destaque--mini cor-cor1">nulu em números</h2>

                            <ul class="list-nulu-em-numeros">
        
                                <?php while( have_rows('nulu-numeros','option') ) : the_row(); ?>
                                    <li>
                                        <div class="content-img">
                                            <img src="<?php the_sub_field('icone'); ?>" alt="<?php the_sub_field('titulo'); ?>">
                                        </div>
                                        <span><?php the_sub_field('dados'); ?></span>
                                        <p><?php the_sub_field('titulo'); ?></p>
                                    </li>
                                <?php endwhile; ?>

                            </ul>
                        </div>

                    </div>
                </div>
            </section>
    
        <?php endif;
    endif; ?>

<?php get_footer(); ?>

<script type="text/javascript">
	$(document).ready(function(){

	});	
</script>