#!/bin/bash

source /bootstrap.sh

service redhawk-web start

su - redhawk

/bin/bash -l

