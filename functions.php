
<?php

// configurações

// remove pagina pai
function remove_post_custom_fields() {
	remove_meta_box( 'pageparentdiv' , 'page' , 'side' ); 
}

// MENUS
add_action( 'after_setup_theme', 'register_menu' );
function register_menu() {
	register_nav_menu( 'primary', __( 'Menu', 'header' ) );
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




// adiciona custom post midias
add_action( 'init', 'post_type_midias' );
function post_type_midias() {

	$labels = array(
	    'name' => _x('Mídias', 'post type general name'),
	    'singular_name' => _x('Mídias', 'post type singular name'),
	    'add_new' => _x('Adicionar novo', 'mídias'),
	    'add_new_item' => __('Adicionar novo'),
	    'edit_item' => __('Editar'),
	    'new_item' => __('Novo post'),
	    'all_items' => __('Todos as post'),
	    'view_item' => __('Visualizar post'),
	    'search_items' => __('Procurar post'),
	    'not_found' =>  __('Nenhum post encontrado.'),
	    'not_found_in_trash' => __('Nenhum post encontrado na lixeira.'),
	    'parent_item_colon' => '',
	    'menu_name' => 'Mídias'
	);
	$args = array(
	    'labels' => $labels,
	    'public' => true,
	    'publicly_queryable' => true,
	    'show_ui' => true,
	    'show_in_menu' => true,

		'rewrite'=> [
			'slug' => 'midias',
			"with_front" => true,
		],

		"cptp_permalink_structure" => "/%postname%/",

	    'capability_type' => 'post',
	    'has_archive' => true,
	    'hierarchical' => true,
	    'menu_position' => null,
	    'menu_icon' => 'dashicons-format-gallery',
	    'menu_position' => 2,
	    'supports' => array('title','excerpt','thumbnail')
	  );

    register_post_type( 'midias', $args );
}

add_action( 'init', 'category_midias' );
function category_midias() {

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

    register_taxonomy( 'category_midias', array( 'midias' ), array(
        'hierarchical' => true,
        'labels' => $labels,
        'show_ui' => true,
        'show_admin_column' => true,
        'show_in_tag_cloud' => true,
        'query_var' => true,
		'rewrite' => array(
		    'slug' => 'midias',
		    'with_front' => true,
			)
        )
    );
}




// remove itns do admin
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