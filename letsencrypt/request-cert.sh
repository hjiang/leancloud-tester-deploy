if [ -z "$EMAIL" ]; then
  echo "Please set EMAIL"
  exit 1
fi

if [ -z "$DOMAIN" ]; then
  echo "Please set DOMAIN"
  exit 1
fi

docker run -it --rm \
  -v /docker-volumes/etc/letsencrypt:/etc/letsencrypt \
  -v /docker-volumes/var/lib/letsencrypt:/var/lib/letsencrypt \
  -v /docker-volumes/var/log/letsencrypt:/var/log/letsencrypt \
  -p 80:80 \
  certbot/certbot \
  certonly --standalone \
  --email "$EMAIL" --agree-tos --no-eff-email \
  -d $DOMAIN
