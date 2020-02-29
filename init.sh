mkdir public
mkdir uploads
cd public
mkdir img
mkdir css
mkdir js
sudo rm -rf /etc/ngix/sites-enabled
sudo cp -f /home/box/web/etc/nginx.conf /etc/nginx
sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart 
sudo /etc/init.d/nginx restart
sudo gunicorn -b 0.0.0.0:8080 hello.py
