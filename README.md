#Livy dev server

A simple Docker executable image for Livy client apps development purpose.

> Requirements

```
$>cd livy-dev-server
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

You should see the Livy UI.

> TODO:

- Enable spark ui and map port.

