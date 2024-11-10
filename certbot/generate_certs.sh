docker-compose run -rm certbot \
    certonly \
        --dns-cloudflare \
        --dns-cloudflare-credentials ./cloudflare.ini \
        -- email $EMAIL --no-eff-email \
        -- agree-tos \
        -d $DOMAIN -d \"*.$DOMAIN\"
