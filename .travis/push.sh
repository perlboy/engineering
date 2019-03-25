#!/bin/bash

setup_git() {
	git config --global user.email "travis@travis-ci.org"
	git config --global user.name "Travis CI"
}

setup_ghpages_repo() {
	git clone https://${GH_TOKEN}@github.com/ConsumerDataStandardsAustralia/engineering output > /dev/null 2>&1
	cd output
	git checkout gh-pages || git checkout --orphan gh-pages
	find -maxdepth 1 ! -name .git ! -name . | xargs rm -rf
	cd ..
}

copy_html() {
  docker run $IMAGE_NAME tar -c -C /opt/engineering/build html | tar x
  shopt -s dotglob; cp html/* ./output/
}

commit_website_files() {
  cd output
  git add -A .
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin-pages https://${GH_TOKEN}@github.com/ConsumerDataStandardsAustralia/engineering > /dev/null 2>&1
  git push --quiet --set-upstream origin-pages gh-pages 
}

if [ "$TRAVIS_BRANCH" == "master" ]; then
	setup_git
	setup_ghpages_repo
	copy_html
	commit_website_files
	upload_files
fi
