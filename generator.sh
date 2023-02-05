git init
git submodule add git@github.com:bgord/bgord-scripts.git
touch .gitignore
./bgord-scripts/toolbox/merge-gitignore.sh
npm init -y
./bgord-scripts/toolbox/setup-only-allow.sh
./bgord-scripts/toolbox/setup-eslint.sh
./bgord-scripts/toolbox/setup-commitlint.sh
./bgord-scripts/toolbox/setup-husky.sh
npm install -D typescript@4.8.4
cp ./bgord-scripts/templates/tsconfig.json .
mkdir .github
cp ./bgord-scripts/workflows/deploy-project.yml .github/
cp ./bgord-scripts/workflows/codeql-analysis.yml .github/
mkdir scripts
cp ./bgord-scripts/templates/local-project-start.sh scripts
cp ./bgord-scripts/templates/staging-project-build.sh scripts
./bgord-scripts/toolbox/setup-html.sh .
mkdir frontend
mkdir static
touch static/.gitkeep
cp ./bgord-scripts/templates/index.tsx frontend/
npm install @bgord/design@0.27.48
npm install @bgord/frontend@github:bgord/bgord-frontend
npm install preact@10.6.4
npm install react@npm:@preact/compat@17.0.3
npm install react-dom@npm:@preact/compat@17.0.3
npm install -D esbuild@0.14.11
npm install -D serve@14.1.1
