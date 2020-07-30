cd "$(dirname "$0")"
git clone https://github.com/jlpoelma/rdflib.js.git
cd rdflib.js
git checkout cors_proxy_fix
npm install
rm -f webpack.config.js
cp ../webpack.config.js ./
npm run build:browser
mv dist/rdflib.min.js dist/index.js
rm -f ../../addon/index.js
mv dist/index.js ../../addon
cd ..
rm -d -r -f rdflib.js
