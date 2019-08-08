if [[ -z "$1" ]]; then
  echo "Please enter a git commit message."
  exit
fi

# git checkout source
# git add .
# git commit -am "$1"
# git push origin source
# echo "Source Found"
# bundle exec jekyll build
# cd _site
git add .
git commit -am "$1"
git remote add origin https://github.com/unorderedlist/static-site
git push origin projects -f
cd ..
echo "Site successfully build and pushed to GitHub."
