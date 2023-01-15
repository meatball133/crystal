#!/bin/bash

# Test the spec files.
# Regenerate the spec files from the liquid template and check that the newly generated spec is the same as the old spec.

# error prints an error to STDERR and exits.

if [ -z "$1" ] ; then
    echo "usage: ./bin/run-in-docker.sh exercise-slug "
    exit 1
fi

slug="$1"

cat "./exercises/practice/${slug}/.meta/template.ecr" > "./bin/templates/template.ecr"

if [ $# -eq 2 ] ; then
    crystal ./bin/generator.cr "${slug}" "${2%/}" || exit 1
else
    crystal ./bin/generator.cr "${slug}" || exit 1
fi
