echo "Running pre-start script for Laravel..."

# run octane
export DEBIAN_FRONTEND=noninteractive;
php artisan octane:install --server=swoole
# other needed commands
# ...

echo "Pre-start script for Laravel finished."