if [[ -z "$1" ]]; then
  echo "Please enter a git commit message."
  exit
fi

# git checkout source
# git add .
# git commit -am "$1"
# git push origin source
echo "Source Found"
jekyll build && \
touch _site/.nojekyll && \
cd _site
git add .
git commit -am "$1"
git remote add origin https://github.com/unorderedlist/static-site
git push origin master -f
cd ..
echo "Site successfully build and pushed to GitHub."
