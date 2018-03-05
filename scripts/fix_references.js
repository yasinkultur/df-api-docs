#!/usr/bin/node
'use strict'
require('shelljs/global');
var fs = require('fs');
var YAML = require('js-yaml');
var filename = process.argv[2];

//now load that file
var swagger = YAML.safeLoad(fs.readFileSync(filename, 'utf-8'));

console.log('Saving unmodified yaml:' + filename + '-unmodified');
fs.writeFile(filename + '-unmodified', YAML.safeDump(swagger, {indent: 2, lineWidth: -1, noRefs: false}), (err) => {
        if (err) 
                {
                console.log('ERROR WRITING: ' + filename + '-unmodified');
                console.log(err);
                console.log(process.cwd());
                }
        });


Object.keys(swagger).forEach(function(level1) {
        //toplevels console.log(level1);
        Object.keys(swagger[level1]).forEach(function(level2) {
                //methods console.log(level2);
                Object.keys(swagger[level1][level2]).forEach(function(level3) {
                        //get/post/delete  console.log(level3);
                        if(swagger[level1][level2][level3]['parameters']) 
                                {
                                var x = 0;
                                swagger[level1][level2][level3]['parameters'].forEach(function(level5) {
                                        if(level5.name == 'end-user-token')
                                                {
                                                //swagger[level1][level2][level3]['parameters'][x] = { '$ref': '#/parameters/end-user-token' };
                                                swagger[level1][level2][level3]['parameters'].splice(x,1);
                                                swagger[level1][level2][level3]['parameters'].unshift({ '$ref': '#/parameters/end-user-token' });
                                                //swagger[level1][level2][level3]['parameters'].push({ '$ref': '#/parameters/end-user-token' });
                                                }
                                        x++;
                                        });
                                }
                });
        });
});

console.log('Saving modified yaml:' + filename + '-modified');
fs.writeFile(filename + '-modified', YAML.safeDump(swagger, {indent: 2, lineWidth: -1, noRefs: false}), (err) => {
        if (err) 
                {
                console.log('ERROR WRITING: ' + filename + '-modified');
                console.log(err);
                console.log(process.cwd());
                }
        });
