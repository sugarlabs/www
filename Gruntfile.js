module.exports = function(grunt) {
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.initConfig({
        cssmin: {
          target: {
            files: {
                'css/airspace.minified.css': ['css/airspace.css']
            }
          }
        },
        uglify: {
            my_target: {
                files: {
                    'js/minified/main.js': ["js/main.js"],
                    'js/minified/plugins.js': ["js/plugins.js"],
                }
            }
        },
        watch: {
            styles: {
                files: ['css/airspace.css'], // which files to watch
                tasks: ['cssmin'],
                options: {
                    nospawn: true
                }
            },
            scripts: {
                files: ['js/main.js', 'js/plugins.js'], // which files to watch
                tasks: ['uglify'],
                options: {
                    nospawn: true
                }
            },
        }
    });
    grunt.registerTask('default', ['watch']);
    grunt.registerTask('compile', ['uglify', 'cssmin']);
};
