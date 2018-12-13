FROM microsoft/windowsservercore
LABEL maintainer="andre.mussche@gmail.com"

ADD install_paserver.bat /paserver/install_paserver.bat
ADD http://altd.embarcadero.com/releases/studio/19.0/PAServer/Release3/setup_paserver.exe /paserver
WORKDIR /paserver
RUN install_paserver.bat

# patch (http://cc.embarcadero.com/item/30837) to version '10.3.1.15'
ADD paserver.exe /paserver/paserver.exe
ADD paserver-update.bat /paserver/paserver-update.bat
WORKDIR /paserver
RUN paserver-update.bat

EXPOSE 64211
CMD ["/Program Files (x86)/Embarcadero/PAServer/19.0/paserver.exe"]
