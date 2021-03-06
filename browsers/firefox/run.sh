#!/bin/bash

#mkdir /home/browser/ffprofile

#sudo mv /download/user.js /home/browser/ffprofile/user.js

sudo chown browser:browser /home/browser/ffprofile

cd /home/browser/ffprofile
sudo chown browser:browser /home/browser/ffprofile/*
chmod 644 /home/browser/ffprofile/*

http_proxy="http://netcapsule_pywb_1:8080" wget "http://pywb.proxy/pywb-ca.pem"

certutil -A -n "PYWB" -t "TCu,Cuw,Tuw" -i ./pywb-ca.pem -d /home/browser/ffprofile

/opt/firefox/firefox --profile /home/browser/ffprofile -setDefaultBrowser --new-window "$URL" -width 1320 -height 960
