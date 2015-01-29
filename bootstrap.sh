#!/bin/bash

# This small script just starts up the services required to run RHWEB other than the redhawk-web service itself.
# omniNames, omniEvents and nginx are the required services.

service omniNames start

# Wait for omniNames to finish starting up
sleep 1

service omniEvents start

service nginx start


