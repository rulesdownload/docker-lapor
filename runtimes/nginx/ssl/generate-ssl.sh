openssl genrsa -out "./default.key" 2048
chmod 644 ./default.key
openssl req -new -key "./default.key" -out "./default.csr" -subj "/CN=default/default/0=default/C=ID"
openssl x509 -req -days 365 -in "./default.csr" -signkey "./default.key" -out "./default.crt"