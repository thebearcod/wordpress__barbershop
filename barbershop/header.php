<?php
/**
 * The template for displaying the header
 *
 */

?>
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <?php wp_title('', false); ?>
  <?php wp_head(); ?>  
</head>
<body>
    <header class="page-header">
      <h1 class="visually-hidden">Барбершоп «Бородинский» - истинно мужская классика<?php bloginfo( 'name' ); ?></h1>
      <div class="page-header__logo <?php echo !is_front_page() ? ' page-header__logo--inner-page':''; ?>">
        <?php if (has_custom_logo()) {
          the_custom_logo();
        } else {
          get_template_part( 'template-parts/element', 'logo' );
        }
        ?>        
      </div>
      <nav class="main-nav  main-nav--closed  main-nav--nojs">
        <button class="main-nav__toggle" type="button">Открыть меню</button>
          <div class="main-nav__wrapper">
        <?php
        wp_nav_menu( array(
        	'menu'            => 'primary',
        	'menu_class'      => 'main-nav__items',
          'container'       =>  false,
                ) );
        wp_nav_menu( array(
          'menu'            => 'user',
          'menu_class'      => 'main-nav__user-items',
          'container'       =>  false,
        ) );
        ?>
        </div>
      </nav>      
    </header>