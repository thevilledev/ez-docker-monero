# ez-docker-monero

Easy way to set up your own full Monero (XMR) node.

Includes Docker configuration and a wrapper script to interact with the wallet. No need to install any extra build tools into your OS.

# Prequisites

Build requires multi-stage support from Docker, so version >= 17.05 is required.

# Running

First clone this repo.

```
$ git clone https://github.com/vtorhonen/ez-docker-monero.git
$ cd ez-docker-monero
```

Run it.

```
$ sudo docker-compose up -d
```

By default the container starts running `monerod`. See `docker-entrypoint.sh`.

You can tail container logs and see where blockchain sync is going:

```
$ sudo docker logs --follow ezdockermonero_monero_1
2017-07-26 20:27:03.105	    7ff33cd97740	INFO 	global	contrib/epee/src/mlog.cpp:145	New log categories: *:WARNING,net:FATAL,net.p2p:FATAL,net.cn:FATAL,global:INFO,verify:FATAL,stacktrace:INFO
2017-07-26 20:27:03.105	    7ff33cd97740	INFO 	global	src/daemon/main.cpp:282	Monero 'Wolfram Warptangent' (v0.10.3.1-release)
2017-07-26 20:27:03.105	    7ff33cd97740	INFO 	global	src/daemon/protocol.h:55	Initializing cryptonote protocol...
2017-07-26 20:27:03.105	    7ff33cd97740	INFO 	global	src/daemon/protocol.h:60	Cryptonote protocol initialized OK
```

# Interacting with the wallet

Once your node is up and running you can create yourself a wallet:

```
$ sudo ./monero-cli.sh
```

More information about that can be found from [the official docs](https://getmonero.org/resources/user-guides/monero-wallet-cli.html).


