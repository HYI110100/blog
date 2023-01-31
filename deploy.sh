set -e

npm run build

cd public

git init
git add -A
git commit -m 'deploy'

git push -f https://github.com/HYI110100/blog.git master:gh-pages

cd -
