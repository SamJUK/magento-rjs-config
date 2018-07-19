php bin/magento maintenance:enable

# Set Production Mode
php bin/magento deploy:mode:set production

# Deploy Static Content
php bin/magento setup:static-content:deploy

# Loop over all the locals @TODO: extend to cover area/namespace/theme
for namespace in ./pub/static/frontend/*; do
    for theme in ${namespace}/*; do
        for locale in ${theme}/*; do
            # Move Static Content
            rm -rf "${locale}_source";
            mv "$locale" "${locale}_source";

            # Compile the bundles
            r.js -o build.js baseUrl="${locale}_source" dir="${locale}"
        done
    done
done


php bin/magento maintenance:disable

php bin/magento cache:clean;