if [ -z "$EMAIL" ]; then
  echo "Please set EMAIL"
else
  docker run -it --rm \
    -v /docker-volumes/etc/letsencrypt:/etc/letsencrypt \
    -v /docker-volumes/var/lib/letsencrypt:/var/lib/letsencrypt \
    -v /docker-volumes/var/log/letsencrypt:/var/log/letsencrypt \
    -p 80:80 \
    certbot/certbot \
    certonly --standalone \
    --email "$EMAIL" --agree-tos --no-eff-email \
    -d test-us-west.leancloud.tk
fi
