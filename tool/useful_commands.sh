#!/usr/bin/env bash

# generate doc
# dartdoc

# install http server
# pub global activate dhttpd

# open docs with http server
# dhttpd --path doc/api

# update packages
pub outdated --no-dev-dependencies --up-to-date --no-dependency-overrides

# sequence useful
dartfmt -w lib test example
dartanalyzer lib test example
pub publish --dry-run