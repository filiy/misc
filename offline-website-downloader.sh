#!/bin/bash

domain=$1
#openshift.com

website=$2
#https://docs.openshift.com/container-platform/4.1

wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --domains $domain --no-parent $website
