#!/bin/sh

# Setting up APT
touch '/etc/apt/apt.conf.d/proxy'
chmod 644 '/etc/apt/apt.conf.d/proxy'
echo 'Acquire::http::Proxy "http://proxy.univ-lyon1.fr:3128/";' >> /etc/apt/apt.conf.d/proxy
echo 'Acquire::https::Proxy "http://proxy.univ-lyon1.fr:3128/";' >> /etc/apt/apt.conf.d/proxy

# User custom proxy settings
touch '/etc/profile.d/export-proxy.sh'
echo 'export http_proxy="http://proxy.univ-lyon1.fr:3128/"' >> /etc/profile.d/export-proxy.sh
echo 'export https_proxy="http://proxy.univ-lyon1.fr:3128/"' >> /etc/profile.d/export-proxy.sh

# Global proxy settings
chmod 644 '/etc/environment'
echo 'http_proxy="http://proxy.univ-lyon1.fr:3128/"' >> /etc/environment
echo 'https_proxy="http://proxy.univ-lyon1.fr:3128/"' >> /etc/environment
echo 'Defaults env_keep = "http_proxy https_proxy"' >> /etc/sudoers