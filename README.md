# PHP CLI Docker Image

![Docker Stars](https://img.shields.io/docker/stars/eworkssk/php-cli?style=for-the-badge)
![Docker Pulls](https://img.shields.io/docker/pulls/eworkssk/php-cli?style=for-the-badge)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/eworkssk/php-cli/latest?style=for-the-badge)
![Docker Image Version](https://img.shields.io/docker/v/eworkssk/php-cli?label=PHP%20Version&style=for-the-badge)

## Pull
```
docker pull eworkssk/php-cli:latest
```
or for use in production environment:
```
docker pull eworkssk/php-cli:8.0
```

## Usage
You don't have to pass the executable name as part of the command, only parameters.
By default, image executes this command: `php -m`.
```
docker run --rm eworkssk/php-cli
```
To run a custom script, simply mount it into `/scripts` and run it!
```
docker run -v $(pwd):/scripts --rm eworkssk/php-cli script.php
```
If you need, you can override the default entrypoint:
```
docker run --entrypoint /path/to/executable --rm eworkssk/php-cli
```

## List of installed PHP extensions
```
[PHP Modules]
bcmath
bz2
calendar
Core
csv
ctype
curl
date
decimal
dom
exif
fileinfo
filter
ftp
gd
geospatial
gettext
gnupg
hash
http
iconv
imagick
imap
inotify
intl
json
libxml
mbstring
mcrypt
mysqli
mysqlnd
oci8
openssl
pcre
PDO
pdo_mysql
PDO_OCI
pdo_sqlite
Phar
posix
raphf
readline
redis
Reflection
session
SimpleXML
soap
sockets
sodium
SPL
sqlite3
ssh2
standard
tokenizer
vips
xml
xmlreader
xmlwriter
yaml
Zend OPcache
zip
zlib
zstd

[Zend Modules]
Zend OPcache
```

## List of installed additional software
```
curl
ghostscript
jq
poppler-utils
rclone
ssh
unzip
zip
xz-utils
```
