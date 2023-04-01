if [ "${EUID}" -ne 0 ]; then
    echo "You need to run this script as root"
    exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
    echo "OpenVZ is not supported"
    exit 1
fi

wget https://github.com/miftachuda/Autovps/raw/master/sshws-only/sshws.sh && chmod +x sshws.sh && ./sshws.sh
rm -f ./sshws.sh