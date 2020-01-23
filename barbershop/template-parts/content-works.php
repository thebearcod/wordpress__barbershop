<section class="works">
  <div class="works__wrapper">
    <h2 class="works__title"><?php echo get_queried_object()->name; ?></h2>
    <a class="btn  works__return  works__return--show" href="<?php echo get_home_url(); ?>">На главную</a>
    <ul class="works__list">
      <?php 
      
      while ( have_posts() ){
        the_post();
      
        $work_type = get_field('work_type');
        $additionally = get_field('additionally');
        $classWorkOfMonth = "";
        if ($additionally) {
          foreach ( $additionally as $add ) {
            $classWorkOfMonth = ($add['value']=='work_month') ? "works-item--work-of-month" : "" ;
          } 
        }
        ?>
        <li class="works-item <?php echo $classWorkOfMonth; ?>">
          <div class="works-item__img-wrapper">
            <?php 
            $photo = get_field('work_photo');
            if( $photo ): ?>
              <img class="works-item__img" src="<?php echo esc_url($photo['url']); ?>" alt="<?php echo esc_attr($photo['alt']); ?>">
            <?php endif; ?> 
          </div>
          <div class="works-item__review">
            <div class="works-item__review-text">
              <h3 class="works-item__title"><?php echo the_title(); ?></h3>
              <blockquote class="works-item__blockquote">
                <?php the_field('work_description'); ?>
              </blockquote>
            </div>
            <?php if( $work_type ): ?>
            <ul class="works-item__parameter-list">
              <?php foreach( $work_type as $type ): ?>
                <li class="works-item__parameter-item  works-item__parameter-item--<?php echo $type['value']; ?>"><?php echo $type['label']; ?></li>
              <?php endforeach; ?>
            </ul>
            <?php endif; ?>
          </div>
        </li>              
        <?php 
        the_content();  
      } ?>
    </ul>
    <?php 
    echo paginate_links();       
    // if ( function_exists( 'barbershop_pagination' ) ) barbershop_pagination(); ?>
  </div>
</section>
<section class="price">
  <div class="price__wrapper">
    <h2 class="price__header">Прейскурант</h1>
    <div class="price__columns">
      <table class="price__table">
        <?php 
        $posts = get_posts( array(
            'numberposts' => -1,
            'category_name'    => 'price',
            'orderby'     => 'date',
            'order'       => 'ASC',        
          ) );
        $n=0;  
        foreach( $posts as $post ){
          setup_postdata($post);
          $n++;
          $washingHead = "без мытья";
          $price = get_field('price');
          $priceOptions = get_field('price_options');
          if ($priceOptions) {
            foreach ($priceOptions as $priceOption) {
              $washingHead = ($priceOption['value']=='washing_head') ? "с мытьём головы" : "без мытья" ;
            }
          }
          ?>
          <tr>
            <td class="col-1"><?php echo $n; ?></td>
            <td class="col-2"><?php echo the_title(); ?></td>
            <td class="col-3">(<?php echo $washingHead; ?>)</td>
            <td class="col-4"><?php echo $price; ?></td>
          </tr>
          <?php
          }
          wp_reset_postdata(); // сброс
          ?>  
      </table>
      <p class="price__discount">С 10:00 до 14:00 скидка 20%</p>
    </div>
  </div>
</section>