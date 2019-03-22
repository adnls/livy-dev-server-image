# Livy dev server

A simple Docker executable image for Livy client apps development purpose.

This image is shipped with the famous titanic dataset stored under /data as 'titanic3.csv'.

### Requirements

```
$>git clone https://github.com/adnls/livy-dev-server-image.git
$>cd livy-dev-server-image
```

### Build

```
$>sudo docker build -t livy .
```

### Run

```
$>sudo docker run -d -p 8998:8998 livy
```

### Check

Go to http://localhost:8998
