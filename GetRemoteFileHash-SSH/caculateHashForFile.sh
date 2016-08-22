#!/bin/bash
echo -e  "Connected to \e[1m$1 \e[0m"
echo 
echo -e "Caculating HASHs for \e[1m$2 \e[0mon server \e[1m$1... \e[0m"
echo "--------------------------------------------------- Hash values ---------------------------------------------------"
echo -e "\e[91mSHA 256 Sum: \e[0m" $(sha256sum $2)
echo -e "\e[91mSHA 1 Sum: \e[0m" $(sha1sum $2)
echo -e "\e[91mMD5 Sum: \e[0m" $(md5sum $2)
echo "-------------------------------------------------------------------------------------------------------------------"
echo "Caculation Complete."
echo
echo 
