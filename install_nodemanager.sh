#!/bin/sh

#Проверка наличия файла скрипта
ls ./nodemanager && \
#Проверка наличия файла systemd
ls ./nodemanager.service && \
echo "Set file permissions" && \
chmod 0764 ./nodemanager && echo "Ok" && \
echo "Transfer the script" && \
mv ./nodemanager /usr/local/bin/ && echo "Ok" && \
echo "Transfer the file service" && \
mv ./nodemanager.service /etc/systemd/system && echo "Ok" && \
echo "Reloading the systemctl daemon" && \
systemctl daemon-reload && echo "Ok" && \
echo "Enable Autorun Script" && \
systemctl enable nodemanager && echo "Ok" && \
echo "Script installation completed successfully"