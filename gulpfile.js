'use strict';

var autoprefixer = require('gulp-autoprefixer');
var csso = require('gulp-csso');
var del = require('del');
var gulp = require('gulp');
var rename = require('gulp-rename');
var htmlmin = require('gulp-htmlmin');
var runSequence = require('run-sequence');
var sass = require('gulp-sass');
var uglify = require('gulp-uglify');

// Set the browser that you want to support
const AUTOPREFIXER_BROWSERS = [
  'ie >= 10',
  'ie_mob >= 10',
  'ff >= 30',
  'chrome >= 34',
  'safari >= 7',
  'opera >= 23',
  'ios >= 7',
  'android >= 4.4',
  'bb >= 10'
];

// Gulp task to minify CSS files
gulp.task('styles', function () {
  return gulp.src('./css/airspace.css')
    // Auto-prefix css styles for cross browser compatibility
    .pipe(autoprefixer({browsers: AUTOPREFIXER_BROWSERS}))
    // Minify the file
    .pipe(csso())
	// Rename output file 
	.pipe(rename({
            suffix: '.minified'
        }))
    // Output
    .pipe(gulp.dest('./css/'))
});

// Gulp task to minify JavaScript files
gulp.task('scripts', function() {
  return gulp.src(['./js/main.js', './js/plugins.js'])
    // Minify the file
    .pipe(uglify())
    // Output
    .pipe(gulp.dest('./js/minified/'))
});