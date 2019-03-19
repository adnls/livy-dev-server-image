# Livy dev server

A simple Docker executable image for Livy client apps development purpose.

> Requirements

```
$>git clone https://github.com/adnls/livy-dev-server-image.git
$>cd livy-dev-server-image
```

> Build

```
$>sudo docker build -t livy-dev-server .
```

> Run

```
$>sudo docker run -d -p 8998:8998 livy-dev-server
```

> Check

Open your web browser and go to http://localhost:8998
