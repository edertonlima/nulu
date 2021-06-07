
<?php get_header(); ?>

	<?php if( have_posts() ){
		while ( have_posts() ) : the_post(); ?>

			<section class="box-section">
				<div class="container">
					<div class="row">

                        <div class="col-12 align-center">
							<h1 class="destaque cor-cor1">Acesso treinamento nulu</h1>
							<?php /*<h1 class="destaque cor-cor1">Acesso nulu: colaboradores</h1>
							

                            <ul class="ico-single">
                                <li class="ico-link">
									<a href="<?php echo get_home_url(); ?>/parcerias">
										<img src="<?php echo get_template_directory_uri(); ?>/assets/images/ico-colaboradores.svg" alt="" class="ico-colaboradores">
										<span>colaboradores</span>
									</a>
								</li>
								<li class="ico-link">
									<a href="<?php echo get_home_url(); ?>/parcerias">
										<img src="<?php echo get_template_directory_uri(); ?>/assets/images/ico-representantes.svg" alt="" class="ico-representante">
										<span>representantes</span>
									</a>
								</li>
								<li class="ico-link">
									<a href="<?php echo get_home_url(); ?>/contato">
										<img src="<?php echo get_template_directory_uri(); ?>/assets/images/ico-distribuidoras.svg" alt="" class="ico-distribuidoras">
										<span>distribuidoras</span>
									</a>
								</li>
							</ul>*/ ?>
                        </div>

					</div>
				</div>
			</section>


			<section class="box-section">
				<div class="container">
					<div class="row">
                        <div class="col-12 align-center">

                            <p>Entre na sua conta Nulu pelo e-mail</p>

                            <form name="loginform" id="loginform" action="<?php echo get_home_url(); ?>/wp-login.php" method="post">

                                <fieldset class="input">
                                    <input type="text" name="log" id="user_login" class="input" value="" size="20" placeholder="E-mail">
                                </fieldset>
                                
                                <fieldset class="input">
                                    <input type="password" name="pwd" id="user_pass" class="input" value="" size="20" placeholder="Senha">
                                </fieldset>
                                
								<fieldset class="button">
									<input type="submit" name="wp-submit" id="wp-submit" class="btn enviar" value="Enviar">
                                	<input type="hidden" name="redirect_to" value="<?php echo get_home_url(); ?>/wp-admin">
								</fieldset>

                            </form>
                            <a href="<?php echo get_home_url(); ?>/wp-login.php?action=logout&amp;redirect_to=%2F" style="display: none;">Desconectar</a>

                        </div>
                    </div>
				</div>
			</section>

		<?php endwhile;
	} ?>

<?php get_footer(); ?>

<script type="text/javascript">
	$(document).ready(function(){

	});
</script>