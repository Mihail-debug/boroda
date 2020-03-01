mkdir public
mkdir uploads
cd public
mkdir img
mkdir css
mkdir js
sudo rm -rf /etc/ngix/sites-enabled
sudo rm -rf /etc/nginx/sites-available/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-available/default
sudo cp -f /home/box/web/etc/nginx.conf /etc/nginx
sudo cp -sf /home/box/web/hello.py /etc/gunicorn.d
sudo /etc/init.d/nginx restart
