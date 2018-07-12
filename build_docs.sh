#!/usr/bin/env bash

cd docs
rm index.html
rm -rf development/
rm -rf staging/
rm -rf production/
mkdir -p development/
mkdir -p staging/
mkdir -p production/
asciidoctor -r asciidoctor-diagram src/index.adoc -D ./
asciidoctor -r asciidoctor-diagram src/development/*.adoc -D ./development/
asciidoctor -r asciidoctor-diagram src/staging/*.adoc -D ./staging/
asciidoctor -r asciidoctor-diagram src/production/*.adoc -D ./production/
