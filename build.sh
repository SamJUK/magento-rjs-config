php bin/magento maintenance:enable

# Set Production Mode
php bin/magento deploy:mode:set production

# Deploy Static Content
php bin/magento setup:static-content:deploy

# Loop over all the locals @TODO: extend to cover area/namespace/theme
for locale in ./pub/static/frontend/Magento/luma/*; do
    
    # Move Static Content
    rm -rf "${locale}_source";
    mv "$locale" "${locale}_source";

    # Compile the bundles
    r.js -o build.js baseUrl="${locale}_source" dir="${locale}"
done


php bin/magento maintenance:disable

php bin/magento cache:clean;