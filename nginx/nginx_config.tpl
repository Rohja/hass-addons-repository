server {
    listen       80;
    listen  [::]:80;
    server_name  _;

    #access_log  /var/log/nginx/host.access.log  main;

    ##LOCATIONS##

    location / {
        root   /usr/share/nginx/html;
        index  index.html index.htm;
    }

    #error_page  404              /404.html;

    error_page   500 502 503 504  /50x.html;
    location = /50x.html {
        root   /usr/share/nginx/html;
    }
}
