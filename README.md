# paserverwindows
Docker Windows image with PAServer installed and running. For RadStudio Tokyo Release 3 (10.2.3)
It is based on microsoft/windowsservercore image

# patched
Contains paserver patch (http://cc.embarcadero.com/item/30837) to version '10.3.1.15'

# Usage:
* docker pull andremussche/paserverwindows
* docker run -d -h mypaserver andremussche/paserverwindows

Docker repo: https://hub.docker.com/r/andremussche/paserverwindows

Example project: https://yeiei.net/en/debugging-delphi-applications-inside-a-windows-docker-container/
