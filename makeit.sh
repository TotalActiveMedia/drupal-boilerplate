#!/bin/bash
git clean -dfx
drush make project.make web
cp -r web/* src/
rm -rf web/
