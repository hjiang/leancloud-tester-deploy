docker run -it --rm \
-v /docker-volumes/etc/letsencrypt:/etc/letsencrypt \
-v /docker-volumes/var/lib/letsencrypt:/var/lib/letsencrypt \
-v $(pwd)/letsencrypt/letsencrypt-site:/data/letsencrypt \
-v /docker-volumes/var/log/letsencrypt:/var/log/letsencrypt \
certbot/certbot \
certonly --webroot \
--email youremail@domain.com --agree-tos --no-eff-email \
--webroot-path=/data/letsencrypt \
-d test-us-west.leancloud.tk
