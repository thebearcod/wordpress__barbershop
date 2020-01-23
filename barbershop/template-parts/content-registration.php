<section class="form">
  <div class="form__wrapper">
    <h2 class="form__title">Запись на стрижку</h2>
    <a class="btn  form__return  form__return--show" href="<?php echo get_home_url(); ?>">На главную</a>
    <form class="form__inner" id="form__registration" action="" method="POST">
      <div class="form__field  form__field--fullname">
        <h3 class="form__field-title">Ваше ФИО:</h3>
        <label for="surname"><span class="visually-hidden">Фамилия</span><input type="text" id="name" name="name" placeholder="Фамилия"></label>
        <label for="name"><span class="visually-hidden">Имя</span><input type="text" id="surname" name="surname" placeholder="Имя"></label>
        <label for="patronymic"><span class="visually-hidden">Отчество</span><input type="text" name="patronymic" placeholder="Отчество"></label>
      </div>
      <div class="form__field  form__field--contacts">
        <h3 class="form__field-title">Ваши контакты:</h3>
        <label for="phone"><input type="text" name="phone" placeholder="Контактный телефон"></label>
        <label for="email"><input type="email" name="email" placeholder="Контактный e-mail"></label>
      </div>
      <div class="form__field  form__field--comment">
        <h3 class="form__field-title">Оставьте комментарий для мастера:</h3>
        <textarea name="comment" placeholder="Доп. информация для мастера"></textarea>
      </div>
      <div class="form__field  form__field--beard">
        <h3 class="form__field-title">Выберите модель бороды:</h3>
        <ul>
          <li>
            <input type="radio" id="beard-1" name="beard" value="beard-1" checked>
            <label for="beard-1">адмирал</label>
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/beard-1.svg" alt="Тип бороды">
          </li>
          <li>
            <input type="radio" id="beard-2" name="beard" value="beard-2">
            <label for="beard-2">лесоруб</label>
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/beard-2.svg" alt="Тип бороды">
          </li>
          <li>
            <input type="radio" id="beard-3" name="beard" value="beard-3">
            <label for="beard-3">полярник</label>
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/beard-3.svg" alt="Тип бороды">
          </li>
          <li>
            <input type="radio" id="beard-4" name="beard" value="beard-4">
            <label for="beard-4">боярин</label>
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/beard-4.svg" alt="Тип бороды">
          </li>
          <li>
            <input type="radio" id="beard-5" name="beard" value="beard-5">
            <label for="beard-5">мудрец</label>
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/beard-5.svg" alt="Тип бороды">
          </li>
        </ul>
      </div>
      <div class="form__field  form__field--offers">
        <h3 class="form__field-title">Дополнительные услуги:</h3>
        <ul>
          <li>
            <input type="checkbox" id="offer-1" name="offer-1" checked>
            <label for="offer-1">Подкрасить бороду</label>
          </li>
          <li>
            <input type="checkbox" id="offer-2" name="offer-2" checked>
            <label for="offer-2">Накрутить усы</label>
          </li>
          <li>
            <input type="checkbox" id="offer-3" name="offer-3">
            <label for="offer-3">Причесать бороду</label>
          </li>
          <li>
            <input type="checkbox" id="offer-4" name="offer-4">
            <label for="offer-4">Подровнять виски</label>
          </li>
          <li>
            <input type="checkbox" id="offer-5" name="offer-5">
            <label for="offer-5">Убрать седину</label>
          </li>
          <li>
            <input type="checkbox" id="offer-6" name="offer-6">
            <label for="offer-6">Отполировать лысину</label>
          </li>
        </ul>
      </div>
      <input type="hidden" name="action" value="myAction"/>
      <input class="form__apply" type="submit" name="form__button-submit" value="Отправить заявку">
    </form>
    <div class="form__field-title" id="result"></div>
  </section>