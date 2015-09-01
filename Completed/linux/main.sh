echo "Provisioning virtual machine..."

export DEBIAN_FRONTEND=noninteractive

echo "Installing Git"
apt-get install git -y > /dev/null


echo "Completed Provisioning virtual machine"