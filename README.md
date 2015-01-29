REDHAWK Web docker
==========

What is REDHAWK Web?
-----
The REDHAWK Web docker image contains an example application (rtl-demo) demonstrating a web front end for a full REDHAWK application.  Using an RTL USB digitizer, or through the provided simulator, the user may tune, demodulate, and stream FM audio via the web UI.  Plotting of wideband, narrowband, and demodulated signals is accomplished through [SigPlot](https://github.com/Axios-Engineering/sigplot).

REDHAWK Web also contains the Admin Console which is a standalone tool used to navigate a REDHAWK domain, launch waveforms, change properties, and plot ports.

How to use this image  
-----

The image can be pulled from the [Docker Hub Registry](https://registry.hub.docker.com/u/axios/redhawk-web/).

The image may be run as a detached container:

    docker run --detach=true -p 80:80 axios/redhawk-web

Or run interactivily, placing the user into a bash shell:

    docker run -it -p 80:80 axios/redhawk-web /shell.sh

In the examples above, the -p flag maps the host machines port 80 to port 80 of the container meaning to view the redhawk-web page, navigate to [http://localhost](http://localhost) in your hosts web browser.

A modern web browswer is required for redhawk-web with Google Chrome the recommended and tested choice.

As of redhawk-web v1.1, a simulator device is bundled with the image so an RTL device is not necessary. However, if an RTL is present on the host system it may be mounted into the container:

    docker run -it -privileged -p 80:80 -v /dev/bus/usb:/dev/bus/usb axios/redhawk-web /shell.sh

