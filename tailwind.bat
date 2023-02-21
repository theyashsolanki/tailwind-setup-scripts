@echo off

REM index.html

if not exist index.html (
echo ^<!DOCTYPE html^>> index.html
echo ^<html lang="en"^>>> index.html
echo ^<head^>>> index.html
echo    ^<meta charset="UTF-8"^>>> index.html
echo    ^<meta http-equiv="X-UA-Compatible" content="IE=edge"^>>> index.html
echo    ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>>> index.html
echo    ^<title^>Document^</title^>>> index.html
echo    ^<link rel="stylesheet" href="main.css"^>>> index.html
echo ^</head^>>> index.html
echo ^<body^>>> index.html
echo    ^<h1^ class="text-3xl font-bold underline"^>>> index.html
echo       Hello world!>> index.html
echo    ^</h1^>>> index.html
echo    ^<script^ src="index.js"^>^</script^>>> index.html
echo ^</body^>>> index.html
echo ^</html^>>> index.html
)

REM postcss.config.js
echo ^module.exports = ^{> postcss.config.js
echo  ^plugins: ^{>>postcss.config.js
echo    ^tailwindcss: {}^,>>postcss.config.js
echo    ^autoprefixer: {}^,>>postcss.config.js
echo  ^}>>postcss.config.js
echo ^}>>postcss.config.js

REM index.js
if not exist index.js (
echo console.log("Hello World!")>index.js
)

REM main.css
echo ^@tailwind base;>main.css
echo ^@tailwind components;>>main.css
echo ^@tailwind utilities;>>main.css

REM package.json
echo {>package.json
echo   "scripts": {>>package.json
echo     "start": "vite">>package.json
echo   },>>package.json
echo   "dependencies": {>>package.json
echo     "vite": "^4.1.3">>package.json
echo   },>>package.json
echo   "devDependencies": {>>package.json
echo     "autoprefixer": "^10.4.13",>>package.json
echo     "postcss": "^8.4.21",>>package.json
echo     "tailwindcss": "^3.2.7">>package.json
echo   }>>package.json
echo }>>package.json

REM tailwind.config.js
echo ^module.exports = {>tailwind.config.js
echo   content:^ ["*"]^,>>tailwind.config.js
echo   theme: {>>tailwind.config.js
echo     extend: {},>>tailwind.config.js
echo   },>>tailwind.config.js
echo   plugins: [],>>tailwind.config.js
echo ^}>>tailwind.config.js

npm i vite && npm install -D tailwindcss postcss autoprefixer && npx tailwindcss init && npm start




