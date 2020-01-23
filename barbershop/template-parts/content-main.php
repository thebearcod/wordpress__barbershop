<section class="stats">
  <header class="stats__header">
    <h2 class="stats__title  visually-hidden">Статистика Барбершопа</h2>
    <b class="stats__slogan">Стрижка у нас<br> это выгодно!</b>
    <p class="stats__intro">Мужская стрижка требует точного подхода. Обратимся к статистике:</p>
    <small class="stats__legend  stats__legend--top"><sup>*</sup> — приведённые данные ложь</small>
  </header>
  <table class="stats__items">
    <tr>
      <td class="stats__value">1 500<sup>*</sup></td>
      <td class="stats__field">рублей<br> вложений</td>
    </tr>
    <tr>
      <td class="stats__value">7 200</td>
      <td class="stats__field">секунд<br> времени мастера</td>
    </tr>
    <tr>
      <td class="stats__value">90 000</td>
      <td class="stats__field">постриженных<br> волос</td>
    </tr>
    <tr>
      <td class="stats__value">500 000<sup>*</sup></td>
      <td class="stats__field">лайков и<br> комплиментов</td>
    </tr>
  </table>
  <small class="stats__legend  stats__legend--bottom"><sup>*</sup> — приведённые данные ложь</small>
</section>
<section class="advantages">
  <div class="advantages__wrapper  slider">
    <h2 class="advantages__title  visually-hidden">Наши преимущества</h2>
    <input class="slider__input" type="radio" name="advantages" id="advantages-input-1" checked>
    <input class="slider__input" type="radio" name="advantages" id="advantages-input-2">
    <input class="slider__input" type="radio" name="advantages" id="advantages-input-3">
    <ul class="advantages__items">
      <li class="advantages__item  advantages__item--fast  slider__item">
        <h3 class="advantages__item-title">Быстро</h3>
        <p>Мы делаем свою работу быстро! Два часа пролетят незаметно и вы — счастливый обладатель стильной стрижки-минутки</p>
      </li>
      <li class="advantages__item  advantages__item--cool  slider__item">
        <h3 class="advantages__item-title">Круто</h3>
        <p>Забудьте, как вы стриглись раньше. Мы сделаем из вас звезду футбола или кино. Во всяком случае внешне.</p>
      </li>
      <li class="advantages__item  advantages__item--expensive  slider__item">
        <h3 class="advantages__item-title">Дорого</h3>
        <p>Наши мастера — профессионалы своего дела и не могут стоить дёшево. К тому же, разве цена не дает определённый статус?</p>
      </li>
    </ul>
    <div class="advantages__toggles  slider__toggles">
      <label class="slider__toggle" for="advantages-input-1">1</label>
      <label class="slider__toggle" for="advantages-input-2">2</label>
      <label class="slider__toggle" for="advantages-input-3">3</label>
    </div>
  </div>
</section>
<section class="news">
  <div class="news__wrapper">
    <h2 class="news__title">Новости и акции</h2>
    <ul class="news__items">
      <li class="news__item">
        <a class="news__item-wrapper" href="#">
          <time class="news__date" datetime="2015-09-29"><b>29</b> сент</time>
          <p>Нам наконец завезли Егермейстер! Теперь вы можете пропустить стаканчик во время стрижки.</p>
        </a>
      </li>
      <li class="news__item">
        <a class="news__item-wrapper" href="#">
          <time class="news__date" datetime="2015-09-19"><b>19</b> сент</time>
          <p>В нашей команде пополнение, Борис «Бритва» Стригунец, пополнил наши стройные ряды. Спешите записаться!</p>
        </a>
      </li>
      <li class="news__item  news__item--show">
        <a class="news__item-wrapper" href="#">
          <time class="news__date" datetime="2015-09-9"><b>9</b> сент</time>
          <p>Все дорожает, а наши стрижки нет! Как так? Приходите, постригитесь и узнаете, в чем здесь подвох!</p>
        </a>
      </li>
    </ul>
    <a class="news__to-all  btn" href="#">Показать все</a>
  </div>
</section>
<section class="reviews">
  <div class="reviews__wrapper  slider">
    <h2 class="reviews__title">Отзывы о нас</h2>
    <input class="slider__input" type="radio" name="reviews" id="reviews-input-1" checked>
    <input class="slider__input" type="radio" name="reviews" id="reviews-input-2">
    <input class="slider__input" type="radio" name="reviews" id="reviews-input-3">
    <div class="reviews__items">
      <blockquote class="reviews__item  slider__item">
        <div class="reviews__author-photo">
          <img src="<?php echo get_template_directory_uri(); ?>/assets/img/travis.jpg" alt="Фото Трэвиса Баркера">
        </div>
        <cite class="reviews__author-name">Трэвис Баркер</cite>
        <p>Спасибо за лысину! Был проездом в Москве, заскочил побриться, чтобы было видно новую татуировку!</p>
      </blockquote>
      <blockquote class="reviews__item  slider__item">
        <div class="reviews__author-photo">
          <img src="<?php echo get_template_directory_uri(); ?>/assets/img/diesel.jpg" alt="Фото Трэвиса Баркера">
        </div>
        <cite class="reviews__author-name">Вин Дроссель</cite>
        <p>Спасибо за шикарную стрижку!</p>
      </blockquote>
      <blockquote class="reviews__item  slider__item">
        <div class="reviews__author-photo">
          <img src="<?php echo get_template_directory_uri(); ?>/assets/img/travis.jpg" alt="Фото Трэвиса Баркера">
        </div>
        <cite class="reviews__author-name">Трэвис Баркер</cite>
        <p>Спасибо за лысину! Был проездом в Москве, заскочил побриться, чтобы было видно новую татуировку</p>
      </blockquote>
      <button class="reviews__prev" type="button">Предыдущий отзыв</button>
      <button class="reviews__next" type="button">Следующий отзыв</button>
    </div>
    <div class="reviews__toggles  slider__toggles">
      <label class="reviews__toggle  slider__toggle" for="reviews-input-1">1</label>
      <label class="reviews__toggle  slider__toggle" for="reviews-input-2">2</label>
      <label class="reviews__toggle  slider__toggle" for="reviews-input-3">3</label>
    </div>
    <a class="reviews__write  btn" href="#">Оставить свой</a>
  </div>
</section>