#!/bin/bash



user=$(whoami)

echo "Initailizing Tailwind..."

npm i vite
echo "Initailizing Tailwind..."
npm install -D tailwindcss postcss autoprefixer 
echo "Initailizing Tailwind..."
npx tailwindcss init

echo "module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  }
}" > postcss.config.js

echo "
module.exports = {
  content: ['*'],
  theme: {
    extend: {},
  },
  plugins: [],
}" > tailwind.config.js

if [[ ! -e "main.css" ]]; then
  echo "@tailwind base;
@tailwind components;
@tailwind utilities;" > main.css
fi

if [[ ! -e "index.js" ]]; then
  echo > index.js
fi

if [[ ! -e "index.html" ]]; then
  echo > index.html
fi

echo '{
  "scripts": {
    "start": "vite"
  },
  "dependencies": {
    "vite": "^4.1.1"
  },
  "devDependencies": {
    "autoprefixer": "^10.4.13",
    "postcss": "^8.4.21",
    "tailwindcss": "^3.2.6"
  }
}' > package.json


npm start




