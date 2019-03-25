#!/bin/bash

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

strip_repository() {
  git checkout origin/gh-pages
  rm -fr *
  touch .nojekyll
  docker run $IMAGE_NAME tar -c -C /opt/engineering/build html | tar x
  shopt -s dotglob; mv html/* ./
  rm -fr html
}

commit_website_files() {
  git add .
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin-pages https://${GH_TOKEN}@github.com/ConsumerDataStandardsAustralia/engineering > /dev/null 2>&1
  git push --quiet --set-upstream origin-pages gh-pages 
}

if [ "$TRAVIS_BRANCH" == "master" ]; then
	setup_git
	strip_repository
	commit_website_files
	upload_files
fi
