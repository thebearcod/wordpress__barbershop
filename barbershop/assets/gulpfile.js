var gulp = require('gulp');
var plumber = require("gulp-plumber");
var less = require('gulp-less');
/*POSTCSS делает автопрефиксы*/
var postcss = require("gulp-postcss");
var autoprefixer = require("autoprefixer");
/*Минификация CSS*/
var minify = require("gulp-csso");
/* POSTCSS-плагин Оптимизация медиавыражений*/
//var mqpacker = require("css-mqpacker");
/*Отдельный плагин для переименования файла*/
var rename = require("gulp-rename");
var server = require("browser-sync").create();

gulp.task('css', function () {
  return gulp.src('less/style.less')
    .pipe(plumber())
    .pipe(less())
    .pipe(postcss([
      autoprefixer({browsers: [
        "last 2 versions"
      ]}),
    ]))
    .pipe(gulp.dest('css'))
    .pipe(minify())           /*минифицируем style.css*/
    .pipe(rename("style.min.css")) /*вызываем переименование*/
    .pipe(gulp.dest("css"))   /*еще раз кидаем в /css*/
    .pipe(server.stream());
});

// gulp.task("server", function () {
//   server.init({
//     server: "/",
//     notify: false,
//     open: true,
//     cors: true,
//     ui: false
//   });

  gulp.task("server", function () {
    server.init({
        proxy: "wp-test"
    });


  gulp.watch("less/**/*.less", gulp.series("css"));
  gulp.watch("../**/*.php").on("change", server.reload);
});

gulp.task("start", gulp.series("css", "server"));
