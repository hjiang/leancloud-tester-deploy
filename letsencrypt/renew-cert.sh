docker run -it --rm \
  -v /docker-volumes/etc/letsencrypt:/etc/letsencrypt \
  -v /docker-volumes/var/lib/letsencrypt:/var/lib/letsencrypt \
  -v /docker-volumes/var/log/letsencrypt:/var/log/letsencrypt \
  certbot/certbot renew
