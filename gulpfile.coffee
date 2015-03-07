gulp = require 'gulp'
stylus = require 'gulp-stylus'
livereload = require 'gulp-livereload'

livereload start: true 

gulp.task 'stylus', ->
  gulp.src './stylus/kickstart.styl'
    .pipe stylus compress: true
    .pipe gulp.dest __dirname
    .pipe livereload()

gulp.task 'watch', ->
  livereload.listen
  gulp.watch [ 'stylus/*.styl' ], ['stylus']
   
gulp.task 'default', ['stylus', 'watch']