<?php 

function barbershop_setup() {
  // This theme uses wp_nav_menu() in two locations.
  register_nav_menus(
    array(
      'primary' => esc_html__( 'Primary', 'barbershop' ),
      'user' => esc_html__( 'User', 'barbershop' )
    )
  );
}

add_action( 'after_setup_theme', 'barbershop_setup' );

// //свои собственные css-классы у элементов меню main-nav__items 
// function li_css_class_to_menu($classes, $item){
//   if( $item->menu == 'primary' ) {
//     $classes[] = "main-nav__item";
//   }  
//     return $classes;
// }
// add_filter('nav_menu_css_class' , 'li_css_class_to_menu' , 10 , 2); 

//свой класс для текущего меню
function special_nav_current_class ($classes, $item) {
    if (in_array('current-menu-item', $classes) ){
        $classes[] = 'main-nav__item--active';
    }
    return $classes;
}
add_filter('nav_menu_css_class' , 'special_nav_current_class' , 10 , 2);

//добавим класс для ссылки элемента меню main-nav__user-items
function add_specific_menu_location_atts( $atts, $item, $args ) {
    // check if the item is in the user menu
    if( $args->menu == 'user' ) {
      // add the desired attributes:
      $atts['class'] = 'main-nav__user-login';
    }
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'add_specific_menu_location_atts', 10, 3 );

function barbershop_scripts() {
  
  wp_enqueue_style('style-default-css', get_stylesheet_uri());
  wp_enqueue_style('normalize-css', get_template_directory_uri() . '/assets/css/normalize.css', array(), null);
  wp_enqueue_style('style-css', get_template_directory_uri() . '/assets/css/style.min.css', array(), null);
  
  wp_enqueue_script( 'main-js', get_template_directory_uri() . '/assets/js/script.js', array(),  false, true);
  wp_enqueue_script( 'ajax-js', get_template_directory_uri() . '/assets/js/ajax.js', array('jquery'),  false, true);
  
  wp_localize_script( 'ajax-js', 'myAjax', array(
    'ajaxurl' => admin_url('admin-ajax.php'),
    // 'name' => admin_url('admin-ajax.php'),  
  ));
}

add_action('wp_enqueue_scripts','barbershop_scripts');

function barbershop_pagination() {
  global $wp_query;
  $total = isset( $wp_query->max_num_pages ) ? $wp_query->max_num_pages : 1;
  $a['total'] = $total;
  $a['mid_size'] = 3; // сколько ссылок показывать слева и справа от текущей
  $a['end_size'] = 1; // сколько ссылок показывать в начале и в конце
  $a['prev_text'] = '&laquo;'; // текст ссылки "Предыдущая страница"
  $a['next_text'] = '&raquo;'; // текст ссылки "Следующая страница"
  // var_dump($total);
  if ( $total > 1 ) echo '<nav class="pagination-list">';
  echo paginate_links( $a );
  if ( $total > 1 ) echo '</nav>';
}

if ( ! isset( $content_width ) ) {
	$content_width = 600;
}

// потестируем AJAX на движке WP
add_action( 'wp_ajax_myAction', 'myAction' );
add_action( 'wp_ajax_nopriv_myAction', 'myAction' );

function myAction() {
  
  // Проверка на ошибки
  $errors = '';  
  $errors .= (empty($_POST['name'])) ? '<p>Не заполнено Фамилия</p>' : '' ;
  $errors .= (empty($_POST['surname'])) ? '<p>Не заполнено Имя</p>' :  '';
  //... добавить остальные проверки
  
  if (!empty($errors)) {
    $errorsA = '<p>Есть ошибки:</p>' . $errors;
    echo $errorsA;
    wp_die( '' , '' , 400 );
  };
  
  $contentForm = '
    <p>Контактный телефон: '.$_POST['phone'].'</p>
    <p>Контактный e-mail: '.$_POST['email'].'</p>
    <p>Доп. информация для мастера: '.$_POST['comment'].'</p>
    ';
  
  // Создаем массив данных новой записи
  $post_data = array(
    'post_type'    => 'post',
  	'post_title'    => wp_strip_all_tags($_POST['name']." ".$_POST['surname']." ".$_POST['patronymic'] ),
  	'post_content'  => $contentForm,
  	'post_status'   => 'publish',
  	'post_author'   => 1,
  	'post_category' => array( 6 )
  );
  
  //Вставляем запись в базу данных
  $post_id = wp_insert_post( wp_slash($post_data) );
  
  if ($post_id == 0) {
    echo "Ошибка отправки формы";
    wp_die( '' , '' , 400 );
  } else {
    echo "Данные отправлены";
  }
    
	wp_die();
}

add_theme_support( 'custom-logo' );
add_theme_support( "title-tag" );
add_theme_support( "custom-header" );
add_theme_support( "custom-background" );
add_theme_support( 'automatic-feed-links' );
add_theme_support( "post-thumbnails" );
?>