
	<footer class="footer bg-cinza-claro">
		<div class="container">
			<div class="row">
				<div class="col-6">
					 <h2 class="">Juntos,</h2>
					 <p class="text-subtitulo">somos mais fortes!</p>
				</div>
				<div class="col-6 align-self-center">
					<nav class="nav nav-social nav-social-footer social-footer">
						<div class="social social-redes">
							<span class="item"><span>fique por dentro</span></span>
							<span class="item"><a href="#"><i class="fab fa-facebook-f"></i></a></span>
							<span class="item"><a href="#"><i class="fab fa-instagram"></i></a></span>
							<span class="item"><a href="#"><i class="fab fa-twitter"></i></a></span>
							<span class="item"><a href="#"><i class="fab fa-youtube"></i></a></span>
							<span class="item"><a href="#"><i class="fab fa-linkedin-in"></i></a></span>
						</div>
					</nav>
				</div>
			</div>

			<div class="row nav-contato-footer">
				<div class="col-8">
					<nav class="nav nav-social nav-social-footer">
						<div class="social social-email">
							<span class="item">
								<span>
									<a href=""><i class="far fa-envelope"></i>tamojunto@eduavallone.com.br</a>
								</span>
							</span>
						</div>

						<div class="social">
							<span class="item">
								<span>
									<a href=""><i class="fab fa-whatsapp"></i>(14) 99777-1045</a>
								</span>
							</span>
						</div>
					</nav>

					<p class="dados-cnpj">CNPJ 39.106.667/0001-09</p>
				</div>
				<div class="col-4 align-self-center">
					<p class="copy align-right"><i class="far fa-copyright"></i><strong>Edu Avallone,</strong> todos os direitos reservados.</p>
				</div>
			</div>
		</div>
	</footer>

</body>

<script src="<?php echo get_template_directory_uri(); ?>/assets/js/jquery/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		window_W = $(window).width();
	});

	$('.menu-mobile').click(function(){
		$('.nav').toggleClass('active');
	});

	$(window).scroll(function(){
		scroll_body = $(window).scrollTop();
		if(scroll_body > 25){
			$('.header').addClass('scroll');
		}else{
			$('.header').removeClass('scroll');
		}
	});
</script>

<?php wp_footer(); ?>