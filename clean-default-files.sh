#!/bin/bash

set -e

FILES=(
    ".styleci.yml"
    "app/Http/Controllers/Auth"
    "database/factories/UserFactory.php"
    "database/migrations/*.php"
    "package.json"
    "package-lock.json"
    "public/.htaccess"
    "public/robots.txt"
    "public/favicon.ico"
    "public/css"
    "public/js"
    "public/web.config"
    "resources/css"
    "resources/js"
    "resources/sass"
    "resources/views"
    "routes/web.php"
    "server.php"
    "tests/Feature/ExampleTest.php"
    "tests/Unit/ExampleTest.php"
    "webpack.mix.js"
)
for FILE in "${FILES[@]}"; do
    # Just remove the .created from the directories
    echo "${FILE}"
    rm -rf ${FILE}
done
