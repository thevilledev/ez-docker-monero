# ez-docker-monero

Easy way to set up your own full Monero (XMR) node.

Includes Docker configuration and a wrapper script to interact with the wallet. No need to install any extra build tools into your OS.

Compressed image size is about 76 MB.

# Prequisites

Build requires multi-stage support from Docker, so version >= 17.05 is required.

Use `docker-compose` to save time and energy. Not a requirement but recommended.

# Running

First clone this repo.

```
$ git clone https://github.com/vtorhonen/ez-docker-monero.git
$ cd ez-docker-monero
```

Run it. Pre-built images are downloaded from [project Dockerhub registry](https://hub.docker.com/r/vtorhonen/ez-docker-monero/).

```
$ sudo docker-compose up -d
```

By default the container starts running `monerod`. See `docker-entrypoint.sh`.

Local directory called `data` is mounted into the container directory `/root/.bitmonero` for data persistency.

You can tail container logs and see where blockchain sync is going:

```
$ sudo docker logs --follow ezdockermonero_monero_1
2017-07-26 20:27:03.105	    7ff33cd97740	INFO 	global	contrib/epee/src/mlog.cpp:145	New log categories: *:WARNING,net:FATAL,net.p2p:FATAL,net.cn:FATAL,global:INFO,verify:FATAL,stacktrace:INFO
2017-07-26 20:27:03.105	    7ff33cd97740	INFO 	global	src/daemon/main.cpp:282	Monero 'Wolfram Warptangent' (v0.10.3.1-release)
2017-07-26 20:27:03.105	    7ff33cd97740	INFO 	global	src/daemon/protocol.h:55	Initializing cryptonote protocol...
2017-07-26 20:27:03.105	    7ff33cd97740	INFO 	global	src/daemon/protocol.h:60	Cryptonote protocol initialized OK
```

# Build your own

Build the images with `sudo docker-compose build`.

# Interacting with the wallet

Once your node is up and running you can create yourself a wallet:

```
$ sudo ./monero-cli.sh
```

*Remember to store your wallet info in a safe place.*

More information about that can be found from [the official docs](https://getmonero.org/resources/user-guides/monero-wallet-cli.html).

# Feedback

Create a Github issue. Thanks!
