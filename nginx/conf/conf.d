server {
    listen 80;
    listen [::]:80;
    server_name botsender.tw1.ru www.botsender.tw1.ru;
    server_tokens off;
    location /.well-known/acme-challenge/ {
        root /var/www/certbot;
    }
    location / {
        return 301 https://botsender.tw1.ru$request_uri;
    }
}