server {
	listen 3000;

	location / {
		root /usr/share/nginx/html;
		index index.html index.htm;
		try_files $uri $uri/ /index.html;
	}	
}
