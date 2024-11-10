# /bin/sh

./certbot/renew_certs.sh

./reload_nginx.sh


# certbot_cert=/etc/letsencrypt/live/$SERVER_NAME/cert.pem
# certbot_key=/etc/letsencrypt/live/$SERVER_NAME/privkey.pem

# nginx_cert=/path/to/nginx/ssl/certificate.pem
# nginx_key=/path/to/nginx/ssl/key.pem

# if [ "$certbot_cert" -nt "$nginx_cert" ]
# then
#     echo "Updating certificate..."
#     cp $certbot_cert $nginx_cert
#     cp $certbot_key $nginx_key
#     echo "Reloading nginx..."
#     ./reload_nginx.sh
#     echo "Done!"
# else
#     echo "Certificate is already up-to-date."
# fi
