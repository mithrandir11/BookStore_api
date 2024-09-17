echo "Running pre-build script for Laravel..."

# run octane

export DEBIAN_FRONTEND=noninteractive;
apt-get update;
apt-get install php8.2-dev -y --allow-unauthenticated;
sudo apt-get install php-pear
pecl install swoole;
printf "extension=swoole.so\n" > /etc/php/8.2/mods-available/swoole.ini;
phpenmod -v 8.2 swoole;




# other needed commands
# ...

echo "Pre-build script for Laravel finished."