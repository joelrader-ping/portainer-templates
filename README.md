# Ping Identity - App Templates

This repository hosts Ping Identity application templates (**'Apps Templates'**) definitions for Portainer.

**Why:** Portainer is a web-based management console for Docker containers. Deploy Ping Identity software with only a few clicks!  
To aid in understanding how the Ping Identity Platform functions, this repository contains a set of Application Templates that are 
intended to showcase *Proof of Concept* scenarios. Documentation links/notes are on the App Templates configuration page.

## Already Have Portainer Installed? ##
Template File: https://raw.githubusercontent.com/joelrader-ping/portainer-templates/master/templates-ping.json

## How to Install Portainer ##
https://www.portainer.io/installation/

## Screenshot of Application Templates ##
![Ping App Template Screenshot](screenshot.png?raw=true "Ping App Templates")

## Installation Instructions ##
> ### Pre-Reqs ###
> * Have Docker & Docker Compose installed
> * Host has 4GB+ RAM (8GB recommended for larger app templates)


To deploy a Portainer instance with the Ping App Templates referenced by default, run the command below. This will create an Admin Console at:

<http://hostname:9000/>
*Note:Replace localhost if using an external Docker host*
 
 Default credentials: admin/2FederateM0re

    docker run -d \
    -p 9000:9000 \
    -p 8000:8000 \
    --name=portainer \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data portainer/portainer \
    -H unix:///var/run/docker.sock \
    --templates https://raw.githubusercontent.com/joelrader-ping/portainer-templates/master/templates-ping.json \
    --logo "https://raw.githubusercontent.com/joelrader-ping/portainer-templates/master/ping-logo.svg" \
    --admin-password='$2y$05$phwSg3ykaHLBDYEEpUHfFeePAlN52B5jX.EOS4GsVPtr9wd008iSO'
