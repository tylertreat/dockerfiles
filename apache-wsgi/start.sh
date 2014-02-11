#!/bin/bash

mv app.vhost /etc/apache2/sites-available/default
apachectl -D FOREGROUND -k start

