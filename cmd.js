const fsExtra = require('fs-extra');
const path = require('path');

fsExtra.copy(
    '/src',
    path.join('/dst', process.env.dstPath),
    {overwrite: process.env.overwrite === 'true'},
    err => {
        if (err) {
            console.log(err.message);
            process.exit(1);
        }
    }
);