module.exports = (grunt)=>{
    grunt.initConfig({
        sass: {
            dist: {
                files: [{
                    expand: true,
                    cwd: './frontend/style/',
                    src: ['main.scss'],
                    dest: './public/assets/css/',
                    ext: '.css'
                }]
            }
        }
    });


    grunt.loadNpmTasks('grunt-contrib-sass');

    grunt.registerTask('default', ['sass']);
};
