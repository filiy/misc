#vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code -y

#gcloud
tee -a /etc/yum.repos.d/google-cloud-sdk.repo << EOM
[google-cloud-sdk]
name=Google Cloud SDK
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg
       https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOM

dnf install google-cloud-sdk -y

#az
rpm --import https://packages.microsoft.com/keys/microsoft.asc

sh -c 'echo -e "[azure-cli]
name=Azure CLI
baseurl=https://packages.microsoft.com/yumrepos/azure-cli
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/azure-cli.repo'

dnf install azure-cli -y 	

# rtm
wget https://www.rememberthemilk.com/download/linux/fedora/21/x86_64/rememberthemilk-1.2.9-1.x86_64.rpm
dnf install -y rememberthemilk-1.2.9-1.x86_64.rpm

#terraform
wget https://releases.hashicorp.com/terraform/0.13.4/terraform_0.13.4_linux_amd64.zip
unzip terraform_0.13.4_linux_amd64.zip
mv terraform /usr/bin

#vault
wget https://releases.hashicorp.com/vault/1.5.4/vault_1.5.4_linux_amd64.zip
unzip vault_1.5.4_linux_amd64.zip
mv vault /usr/bin

#slack
wget https://downloads.slack-edge.com/linux_releases/slack-4.10.0-0.1.fc21.x86_64.rpm
dnf install slack-4.10.0-0.1.fc21.x86_64.rpm -y


#openshift
wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-install-linux.tar.gz
tar -xf openshift-install-linux.tar.gz
mv openshift-install /usr/bin

wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux.tar.gz
tar -xf openshift-client-linux.tar.gz
mv oc kubectl /usr/bin

# OBS
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf install obs-studio -y

#vlc
dnf -y install vlc

#zoom
wget https://zoom.us/client/latest/zoom_x86_64.rpm
dnf install -y zoom_x86_64.rpm

#bluejeans
wget https://swdl.bluejeans.com/desktop-app/linux/2.17.0/BlueJeans_2.17.0.11.rpm
dnf install BlueJeans_2.17.0.11.rpm -y 

dnf install -y podman screen skopeo buildah jq glances ansible git cockpit keepassx chromium remmina audacity transmission iptraf falkon gimp libreoffice numix-gtk-theme powertop tlp gnome-system-monitor redshift redshift-gtk iio-sensor-proxy

#firefox: adblock numixtheme googlecanada
