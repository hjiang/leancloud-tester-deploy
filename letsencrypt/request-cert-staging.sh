if [ -z "$DOMAIN" ]; then
  echo "Please set DOMAIN"
  exit 1
fi

sudo docker run -it --rm \
-v /docker-volumes/etc/letsencrypt:/etc/letsencrypt \
-v /docker-volumes/var/lib/letsencrypt:/var/lib/letsencrypt \
-v "/docker-volumes/var/log/letsencrypt:/var/log/letsencrypt" \
-p 80:80 \
certbot/certbot \
certonly --standalone \
--register-unsafely-without-email --agree-tos \
--staging \
-d $DOMAIN
