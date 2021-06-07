
<?php

// configurações

// remove pagina pai
function remove_post_custom_fields() {
	remove_meta_box( 'pageparentdiv' , 'page' , 'side' ); 
}

// remove admin bar
add_filter('show_admin_bar', '__return_false');

// menu
add_action( 'after_setup_theme', 'register_menu' );
function register_menu() {
	register_nav_menu( 'primary', __( 'header', 'header' ) );
}



//configurações de pagina

// adiciona excerpt
add_post_type_support( 'page', 'excerpt' );



//configurações de post

//adiciona thumbnails
add_theme_support( 'post-thumbnails' );

// adiciona excerpt
add_post_type_support( 'post', 'excerpt' );

// muda nome post
function change_post_label() {
	global $menu;
	global $submenu;
	$menu[5][0] = 'Notícias';
	$submenu['edit.php'][5][0] = 'Todos os posts';
	$submenu['edit.php'][10][0] = 'Adicionar post';
	echo '';
}
function change_post_object() {
	global $wp_post_types;
	$labels = &$wp_post_types['post']->labels;
	$labels->name = 'Notícias';
	$labels->singular_name = 'Notícia';
	$labels->add_new = 'Adicionar post';
	$labels->add_new_item = 'Adicionar post';
	$labels->edit_item = 'Editar post';
	$labels->new_item = 'Post';
	$labels->view_item = 'Ver post';
	$labels->search_items = 'Buscar post';
	$labels->not_found = 'Nenhum post encontrado';
	$labels->not_found_in_trash = 'Nenhum post encontrado na lixeira';
	$labels->all_items = 'Todos os posts';
	$labels->menu_name = 'Notícias';
	$labels->name_admin_bar = 'Notícias';
}
 
add_action( 'admin_menu', 'change_post_label' );
add_action( 'init', 'change_post_object' );


// PAGINA DE OPÇÕES
if( function_exists('acf_add_options_page') ) {

	acf_add_options_page(array(
	  'page_title'  => 'Configurações Gerais',
	  'menu_title'  => 'Configurações Gerais',
	  'menu_slug'   => 'configuracoes-gerais',
	  'capability'  => 'edit_posts',
	  'redirect'    => true
	));

	acf_add_options_sub_page(array(
	  'page_title'  => 'Geral',
	  'menu_title'  => 'Geral',
	  'parent_slug' => 'configuracoes-gerais',
	));

	acf_add_options_sub_page(array(
		'page_title'  => 'Nulu em números',
		'menu_title'  => 'Nulu em números',
		'parent_slug' => 'configuracoes-gerais',
	  ));

	acf_add_options_sub_page(array(
	  'page_title'  => 'Redes Sociais',
	  'menu_title'  => 'Redes Sociais',
	  'parent_slug' => 'configuracoes-gerais',
	));
}


// adiciona custom post midias
add_action( 'init', 'post_type_produtos' );
function post_type_produtos() {

	$labels = array(
	    'name' => _x('Produtos', 'post type general name'),
	    'singular_name' => _x('Produtos', 'post type singular name'),
	    'add_new' => _x('Adicionar novo', 'produto'),
	    'add_new_item' => __('Adicionar novo'),
	    'edit_item' => __('Editar'),
	    'new_item' => __('Novo post'),
	    'all_items' => __('Todos as post'),
	    'view_item' => __('Visualizar post'),
	    'search_items' => __('Procurar post'),
	    'not_found' =>  __('Nenhum post encontrado.'),
	    'not_found_in_trash' => __('Nenhum post encontrado na lixeira.'),
	    'parent_item_colon' => '',
	    'menu_name' => 'Produtos'
	);
	$args = array(
	    'labels' => $labels,
	    'public' => true,
	    'publicly_queryable' => true,
	    'show_ui' => true,
	    'show_in_menu' => true,

		'rewrite'=> [
			'slug' => 'produtos',
			"with_front" => true,
		],

		"cptp_permalink_structure" => "/%postname%/",

	    'capability_type' => 'post',
	    'has_archive' => true,
	    'hierarchical' => true,
	    'menu_position' => null,
	    'menu_icon' => 'dashicons-format-gallery',
	    'menu_position' => 2,
	    'supports' => array('title','thumbnail')
	  );

    register_post_type( 'produtos', $args );
}



/*
** area de treinamento
*/
add_action( 'init', 'post_type_treinamento' );
function post_type_treinamento() {

	$labels = array(
	    'name' => _x('Treinamento', 'post type general name'),
	    'singular_name' => _x('Treinamento', 'post type singular name'),
	    'add_new' => _x('Adicionar novo', 'treinamento'),
	    'add_new_item' => __('Adicionar novo treinamento'),
	    'edit_item' => __('Editar treinamento'),
	    'new_item' => __('Novo treinamento'),
	    'all_items' => __('Todos as treinamentos'),
	    'view_item' => __('Visualizar treinamento'),
	    'search_items' => __('Procurar treinamento'),
	    'not_found' =>  __('Nenhum treinamento encontrado.'),
	    'not_found_in_trash' => __('Nenhum post encontrado na lixeira.'),
	    'parent_item_colon' => '',
	    'menu_name' => 'Treinamento'
	);
	$args = array(
	    'labels' => $labels,
	    'public' => true,
	    'publicly_queryable' => true,
	    'show_ui' => true,
	    'show_in_menu' => true,

		'rewrite'=> [
			'slug' => 'treinamento',
			"with_front" => true,
		],

		"cptp_permalink_structure" => "/%category_treinamento%/%postname%/",

	    'capability_type' => 'post',
	    'has_archive' => true,
	    'hierarchical' => true,
	    'menu_position' => null,
	    'menu_icon' => 'dashicons-video-alt3',
	    'menu_position' => 2,
	    'supports' => array('title','thumbnail')
	  );

    register_post_type( 'treinamento', $args );
}

add_action( 'init', 'category_treinamento' );
function category_treinamento() {

	$labels = array(
	    'name' => _x( 'Categoria', 'taxonomy general name' ),
	    'singular_name' => _x( 'Categoria', 'taxonomy singular name' ),
	    'search_items' =>  __( 'Procurar categoria' ),
	    'all_items' => __( 'Todas as categorias' ),
	    'parent_item' => __( 'Categoria pai' ),
	    'parent_item_colon' => __( 'Categoria pai:' ),
	    'edit_item' => __( 'Editar categoria' ),
	    'update_item' => __( 'Atualizar categoria' ),
	    'add_new_item' => __( 'Adicionar nova categoria' ),
	    'new_item_name' => __( 'Nova categoria' ),
	    'menu_name' => __( 'Categoria' ),
	);

    register_taxonomy( 'category_treinamento', array( 'treinamento' ), array(
        'hierarchical' => true,
        'labels' => $labels,
        'show_ui' => true,
        'show_admin_column' => true,
        'show_in_tag_cloud' => true,
        'query_var' => true,
		'rewrite' => array(
		    'slug' => 'treinamento',
		    'with_front' => false,
			)
        )
    );
}



/*
** material extra
*/
add_action( 'init', 'post_type_download' );
function post_type_download() {

	$labels = array(
	    'name' => _x('Download', 'post type general name'),
	    'singular_name' => _x('Download', 'post type singular name'),
	    'add_new' => _x('Adicionar novo', 'download'),
	    'add_new_item' => __('Adicionar novo download'),
	    'edit_item' => __('Editar download'),
	    'new_item' => __('Novo download'),
	    'all_items' => __('Todos as download'),
	    'view_item' => __('Visualizar download'),
	    'search_items' => __('Procurar download'),
	    'not_found' =>  __('Nenhum download encontrado.'),
	    'not_found_in_trash' => __('Nenhum download encontrado na lixeira.'),
	    'parent_item_colon' => '',
	    'menu_name' => 'Download'
	);
	$args = array(
	    'labels' => $labels,
	    'public' => true,
	    'publicly_queryable' => true,
	    'show_ui' => true,
	    'show_in_menu' => true,

		'rewrite'=> [
			'slug' => 'download',
			"with_front" => true,
		],

		//"cptp_permalink_structure" => "/%category_treinamento%/%postname%/",

	    'capability_type' => 'post',
	    'has_archive' => true,
	    'hierarchical' => true,
	    'menu_position' => null,
	    'menu_icon' => 'dashicons-paperclip',
	    'menu_position' => 3,
	    'supports' => array('title','thumbnail')
	  );

    register_post_type( 'download', $args );
}


/*
** define novos tipos de usuários
*/
$capabilities = array(
	'read'=> true,
	'edit_posts' => false
);
add_role( 'colaborador', 'Colaborador', $capabilities );
add_role( 'distribuidor', 'Distribuidor', $capabilities );
add_role( 'representante', 'Representante', $capabilities );


/* direciona para treinamentos */
if (is_admin()) {
	$user_role = wp_get_current_user()->roles[0];
	if($user_role != 'administrator'){
		$url_treinamento = home_url() . '/login/';
		wp_redirect($url_treinamento);
		exit;
	}
}


/*
** verifica se está logado na pagina login e direciona
*/
function currentpage(){
	if (is_page(177)) {
		if(is_user_logged_in()){
			$user_role = wp_get_current_user()->roles[0];
			if($user_role == 'administrator'){
				//$url_treinamento = home_url() . '/treinamento/' . basename($_SERVER['REQUEST_URI']);
				//wp_redirect($url_treinamento);
				//exit;
				$redirect = false;
			}else{
				switch ($user_role) {
					case 'colaborador':
						$user_role = 'colaboradores';
						break;

					case 'representante':
							$user_role = 'representantes';
						break;

					case 'distribuidor':
							$user_role = 'distribuidoras';
						break;
				}
				$url_treinamento = home_url() . '/treinamento/' . $user_role;
			}
			wp_redirect($url_treinamento);
			exit;	
		}
    }

	if (is_post_type_archive('treinamento')) {
		if(is_user_logged_in()){
			$user_role = wp_get_current_user()->roles[0];
			if($user_role == 'administrator'){
				//$url_treinamento = home_url() . '/treinamento/' . basename($_SERVER['REQUEST_URI']);
				//wp_redirect($url_treinamento);
				//exit;
				$redirect = false;
			}else{
				switch ($user_role) {
					case 'colaborador':
						$user_role = 'colaboradores';
						break;

					case 'representante':
							$user_role = 'representantes';
						break;

					case 'distribuidor':
							$user_role = 'distribuidoras';
						break;
				}
				$url_treinamento = home_url() . '/treinamento/' . $user_role;
			}
		}else{
			$url_treinamento = home_url('/login');
		}

		wp_redirect($url_treinamento);
		exit;
    }

	if (is_tax('category_treinamento')) {
		$redirect = true;

		if(is_user_logged_in()){
			$user_role = wp_get_current_user()->roles[0];
			if($user_role == 'administrator'){
				//$url_treinamento = home_url() . '/treinamento/' . basename($_SERVER['REQUEST_URI']);
				//wp_redirect($url_treinamento);
				//break;
				$redirect = false;
			}else{
				switch ($user_role) {
					case 'colaborador':
						if(is_tax('category_treinamento','colaboradores')){
							$redirect = false;
						}
						$user_role = 'colaboradores';
						break;

					case 'representante':
						if(is_tax('category_treinamento','representantes')){
							$redirect = false;
						}
						$user_role = 'representantes';
						break;

					case 'distribuidor':
						if(is_tax('category_treinamento','distribuidoras')){
							$redirect = false;
						}
						$user_role = 'distribuidoras';
						break;
				}
				$url_treinamento = home_url() . '/treinamento/' . $user_role;
			}
		}else{
			$url_treinamento = home_url();
		}

		if($redirect){
			wp_redirect($url_treinamento);
			exit;
		}
    }
}
add_action('template_redirect', 'currentpage');



/*
** redireciona para pagina de login quando tenta entrar em /wp-admin ou /wp-login
*//*
function redirect_login_page() {
	$login_page  = home_url( '/login/' );
	$page_viewed = basename($_SERVER['REQUEST_URI']);
   
	if( $page_viewed == "wp-login.php" && $_SERVER['REQUEST_METHOD'] == 'GET') {
		wp_redirect($login_page);
		exit;
	}
 }
add_action('init','redirect_login_page');


/* 
** redireciona para pagina de login, quando acontece algum erro
*//*
function login_failed() {
	$login_page  = home_url( '/login/' );
	wp_redirect( $login_page . '?login=error' );
	exit;
}
add_action( 'wp_login_failed', 'login_failed' );
   
function verify_username_password( $user, $username, $password ) {
	$login_page  = home_url( '/login/' );
	
	if(isset($_POST['log'])){
		if( $username == "" || $password == "" ) {
			wp_redirect( $login_page . "?login=empty" );
			exit;
		}
	}else{
		wp_redirect( $login_page );
		exit;
	}
}
add_filter( 'authenticate', 'verify_username_password', 1, 3);


/*
** remove itens do admin
*/
if(wp_get_current_user()->user_login == 'ederton'){
	$producao = false;
}else{
	$producao = true;
}

if($producao){
	add_action('admin_head', 'remove_itens_admin');

	function remove_itens_admin() {
	  echo '
		<script type="text/javascript">
			jQuery.noConflict();
			jQuery("document").ready(function(){

				// menu
				jQuery("#menu-appearance").remove(); //aparencias
				jQuery("#menu-comments").remove(); //comentários
				jQuery("#menu-plugins").remove(); //plugins
				jQuery("#toplevel_page_edit-post_type-acf-field-group").remove(); //ACF
				jQuery("#menu-settings").remove(); //configurações
				jQuery("#menu-tools").remove(); //ferramentas
				jQuery("#menu-media").remove(); //midias

				// usuario master
				jQuery("#user-1").remove();

				// qr code
				jQuery("#wpkqcg-page-meta-box-qrcodemetabox h2").html("QR Code");
				jQuery("#wpkqcg-page-meta-box-qrcodemetabox .form-table tr:nth-child(6)").remove();
				jQuery("#wpkqcg-page-meta-box-qrcodemetabox .form-table tr:nth-child(5)").remove();
				jQuery("#wpkqcg-page-meta-box-qrcodemetabox .form-table tr:nth-child(3)").remove();
				jQuery("#wpkqcg-page-meta-box-qrcodemetabox .form-table tr:nth-child(2)").remove();
				jQuery("#wpkqcg-page-meta-box-qrcodemetabox .form-table tr:nth-child(1)").remove();

			});
		</script>
	  ';
	}
}
?>