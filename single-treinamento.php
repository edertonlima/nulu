<?php get_header(); ?>

<section class="box-section treinamento list-treinamento detalhe-treinamento">
	<div class="container">
		<div class="row">

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
                                    <span class="status-curso"><strong>0%</strong> concluído</span>
                                </div>
                                <div class="info">
                                    <p><strong>Requerimentos:</strong> <?php the_field('requerimentos-treinamento'); ?></p>
                                    <p><strong>Descrição:</strong> <?php the_field('resumo-treinamento'); ?></p>
                                </div>

                                <a href="#" class="btn btn-acessar-curso" title="Acessar curso">Acessar curso</a>
                            </div>

                            <div class="col-6">
                                <ul class="list-aulas">
                                    <li>
                                        <h4>
                                            <span>Nosso Diferencial</span>
                                            <svg width="50" height="50" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg"><mask id="mask0" mask-type="alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="50" height="50"><path fill-rule="evenodd" clip-rule="evenodd" d="M50 50L50 0.106983L0.107018 0.106983L0.107018 50L50 50Z" fill="white"/></mask><g mask="url(#mask0)"><path fill-rule="evenodd" clip-rule="evenodd" d="M9.58173 32.2031L12.5697 34.7091L25.0529 19.8173L37.5361 34.7091L40.524 32.2031L25.0529 13.7476L9.58173 32.2031ZM50 25.0529C50 38.8305 38.8306 50 25.0529 50C11.2752 50 0.106972 38.8305 0.106972 25.0529C0.106972 11.2752 11.2752 0.106972 25.0529 0.106972C38.8306 0.106972 50 11.2752 50 25.0529Z" fill="#1071B9"/></g></svg>
                                        </h4>
                                        <div class="content-list-aulas">
                                            <p><strong>10min</strong> duração total</p>
                                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4>
                                            <span>Quiz</span>
                                            <svg width="50" height="50" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg"><mask id="mask0" mask-type="alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="50" height="50"><path fill-rule="evenodd" clip-rule="evenodd" d="M50 50L50 0.106983L0.107018 0.106983L0.107018 50L50 50Z" fill="white"/></mask><g mask="url(#mask0)"><path fill-rule="evenodd" clip-rule="evenodd" d="M9.58173 32.2031L12.5697 34.7091L25.0529 19.8173L37.5361 34.7091L40.524 32.2031L25.0529 13.7476L9.58173 32.2031ZM50 25.0529C50 38.8305 38.8306 50 25.0529 50C11.2752 50 0.106972 38.8305 0.106972 25.0529C0.106972 11.2752 11.2752 0.106972 25.0529 0.106972C38.8306 0.106972 50 11.2752 50 25.0529Z" fill="#1071B9"/></g></svg>
                                        </h4>
                                        <div class="content-list-aulas">
                                            <p><strong>10min</strong> duração total</p>
                                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <h4>
                                            <span>Considerações Finais</span>
                                            <svg width="50" height="50" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg"><mask id="mask0" mask-type="alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="50" height="50"><path fill-rule="evenodd" clip-rule="evenodd" d="M50 50L50 0.106983L0.107018 0.106983L0.107018 50L50 50Z" fill="white"/></mask><g mask="url(#mask0)"><path fill-rule="evenodd" clip-rule="evenodd" d="M9.58173 32.2031L12.5697 34.7091L25.0529 19.8173L37.5361 34.7091L40.524 32.2031L25.0529 13.7476L9.58173 32.2031ZM50 25.0529C50 38.8305 38.8306 50 25.0529 50C11.2752 50 0.106972 38.8305 0.106972 25.0529C0.106972 11.2752 11.2752 0.106972 25.0529 0.106972C38.8306 0.106972 50 11.2752 50 25.0529Z" fill="#1071B9"/></g></svg>
                                        </h4>
                                        <div class="content-list-aulas">
                                            <p><strong>10min</strong> duração total</p>
                                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                                        </div>
                                    </li>
                                </ul>
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

<?php get_footer(); ?>

<script type="text/javascript">
	$(document).ready(function(){
        $('.list-aulas h4').click(function(){
            $(this).next().slideToggle();
            $(this).toggleClass('on');
        });
	});	
</script>