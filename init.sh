sudo pip install --upgrade django
sudo pip install --upgrade gunicorn
sudo unlink /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/hello.py /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn restart
sudo pkill gunicorn
sudo gunicorn -b 0.0.0.0:8080 hello:app &
#sudo gunicorn --pythonpath ask -b 0.0.0.0:8000 ask.wsgi:application &
sudo gunicorn -b 0.0.0.0:8000 ask.wsgi:application &
