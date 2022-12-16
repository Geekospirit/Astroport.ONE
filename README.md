# Préambule
Quand pourrons nous sortir de ce Méchant Cloud qui nous profile, nous scrute, nous analyse... Pour au final nous faire consommer.
Je n'ai pas suivi la formation d’ingénieur réseau pour fabriquer ça!
Alors j'ai fait autre chose.

Astroport est contruit sur IPFS pour former nos Cloud personnels échangés entre amis d'amis à l’abri des algorithmes de l'IA et du datamining sauvage qui règne ici bas.
L'avantage de ce système, une consommation énergétique divisé par 100, une répartition des données qui permet de fonctionner déconnecté, un système d'information pair à pair inaltérable, inviolable.
S'il vous plaît arrêtons cet Internet Supermarché de nous même...
C'est une bibliothèque du savoir à la base.

## http://astroport.com
Avec cette technologie, nous devenons chacun hébergeur et fournisseur d'accès, souverain monétaire et médiatique.
Avec cette technologie, nous établissons une "Crypto Nation" dont la carte relie les territoires au delà des frontières et des pays.

Astroport ONE est l'ambassade d'un monde fait de toiles confiances interconnectées.

# Astroport.ONE

Il s'agit d'un Jeu de société grandeur nature qui consiste à répertorier, inventer, enseigner, diffuser les meilleures façons d'habiter la planète Terre.
Ce programme introduit des données multimédia (page web, audio, vidéo) en tant que chaines de données (blockchain) inscrites dans le réseau IPFS
que les joueurs échangent au travers des Oasis.


# INSTALLATION (Debian/Ubuntu/Mint ou Xbian)

```
bash <(wget -qO- https://git.p2p.legal/qo-op/Astroport.ONE/raw/branch/master/install.sh)
```

# LANCEMENT

## ./start.sh

Gestion des Astronautes, de leurs VISA et VOEUX en mode CLI

```
~/.zen/Astroport.ONE/start.sh
```
Lancement API (1234) et MAP (12345)

MODE AVENTURE : Activez votre VISA Astronaute sur une Station !

```
~/.zen/Astroport.ONE/adventure/adventure.sh
```

Trouvez le moyen d'accéder à votre "Station Astroport" en explorant les environs du premier de ce nom.

# INSTALLATION (Docker)

```
sudo apt install git make docker.io
sudo adduser $USER docker

## REBOOT

cd ~/.zen/Astroport.ONE
make
make install
```

Plus de connexion officielle.
L'UTILISATEUR devient un JOUEUR, en semant son propre IPFS, en utilisant un Docker sur un nœud Astroport géré par un autre JOUEUR.

Ainsi, les AMIS peuvent héberger d'autres AMIS.

# TW

PLAYER support@qo-op.com

https://ipfs.copylaradio.com/ipns/support.qo-op.com.localhost.copylaradio.com

# TW

Selon le modèle de votre TW,

L'utilisation du cryptosystème signifie que tout hôte possédant une clé privée peut modifier "quelque chose", la clé publique étant l'adresse de cette "chose". Quand on se concentre sur le hachage des données comme le fait IPFS, on peut stocker n'importe quoi partout.

Astroport.ONE attache une clé (2 pass phrase NaCl generattion) et un email à un modèle TW. Chaque ordinateur sert l'API sur le port 1234. Il peut héberger plusieurs clés PLAYER et gérer leurs TW.

Le projet reproduit le "[protocole Scuttlebut](https://scuttlebot.io/more/protocols/secure-scuttlebutt.html)", d'où emerge le réseau Ŋ1, Ŋ2,... une fois généralisé à toute clef IPFS enchaînées par un mappage "Web of Trust", créant ainsi un service d'hébergement partagé "peer to peer".

Chaque jour, à 20h12, tous les noeuds synchronisent leur TW en fonction des niveaux de confiance exprimés. Le niveau de confiance est défini en échangeant des étoiles via l'application https://gchange.fr.

**Nous utilisons [la Ğ1](https://monnaie-libre.fr/) comme "la meilleure invention d'une crypto-monnaie"**

N'importe qui (avec une connexion par fibre optique) peut créer un nœud chez lui, inviter des amis et partager des "tiddlers" selon leurs "G1Voeu".
Vous pouvez rejoindre le swam#0 officiel d'Astroport, en devenant bootstrap et hôte dans https://astroport.copylaradio.com TestNet "DNS Round Robin".

Qma9zvrYHGcUPisLKBcG9U9sktThX5VfVci8jfM8D9RspT

Bien entendu, le mieux est que chacun héberge et publie ses propres données sur son ordinateur "localhost" (pas de délégation de clé privée dans ce cas), de sorte que le protocole de réplication Astroport Ŋ1 peut être utilisé à tout moment. Mais il est préférable de garder une heure de connexion commune afin que les hôtes soient tous disponibles pour un torrent bit massif.

TW est la première application disponible pour les personnes décentralisées.
L'utilisateur peut écrire des notes personnelles, et quelques "tiddlers de commande" pour activer la copie des tiddlers entre les TW d'amis et exécuter des pré et/ou post traitements.

# 20H12

[20H12.sh](/qo-op/Astroport.ONE/src/branch/master/20h12.sh)

Ce rendez-vous permet à toutes les Stations de raffraichir leurs TW.
Cette horaire garantie à la "Blockchain" d'être à jour au maximum.

Une Stattion branché sur un panneau solaire et une batterie adéquate, peut fonctionner OnGrid et OffGrid


# - ESSAYEZ IPFS - UN SOCKAGE INALTERABLE ET INTELLIGENT

### "The Barefoot Architect" de Johan Van Lengen.

Lignes de commandes

```
ipfs ls Qme6a6RscGHTg4e1XsRrpRoNbfA6yojC6XNCBrS8nPSEox/
ipfs cat QmbfVUAyX6hsxTMAZY7MhvUmB3AkfLS7KqWihjGfu327yG > /tmp/vdoc.pub_the-barefoot-architect.pdf && xdg-open /tmp/vdoc.pub_the-barefoot-architect.pdf
```
Après un passage par [ajouter_media.sh](/qo-op/Astroport.ONE/src/branch/master/ajouter_media.sh)

Vos données son stockées [dans des Tiddlers](https://ipfs.copylaradio.com/ipns/k51qzi5uqu5dioeckikst5f8jw1tbljom6acjbw9zerl3671921krs4nm1531r#:[tag[G1Films]])

### Foret Enchantée - PROJET ASTROPORT.pdf

https://ipfs.copylaradio.com/ipfs/QmUtGpGeMZvwp47ftqebVmoFWCmvroy5wEtWsKvWvDWJpR

# API

## Hybride et Asynchrone

API du système


En utilisant netcat comme "serveur web minimal", la première page que renvoi le serveur est un rendez-vous vers la prochaine adresse IP et port où trouver la réponse à l'appel de l'API.

Comme un client qui commande, à qui on attribue un point relai qu'il devra contrôler lui même pour en connaitre la livraison.

chaque passerelle de l'essaim sert toujours la même page (voir "templates/index.http")

https://astroport.copylaradio.com, informe où trouver la suite qui permet de découvrir la suite.

ici pour informer de l'état de la commande (OK, ERROR)
```
<meta http-equiv="refresh" content="12; url='http://_ASTROIP_:_ASTROPORT_'" />

```
http://_ASTROIP_:_ASTROPORT_

ici pour récupérer les éventuels colis
```
<a href="http://_ASTROIP_:8080/ipns/_APID_" target="json">
```
http://_ASTROIP_:8080/ipns/_APID_/

_APID_ est la clef IPNS qui contient l'arborescence "json" en lecture

Exemple pour l'application "G1Voeu" https://ipfs.copylaradio.com/ipns/12D3KooWL2FcDJ41U9SyLuvDmA5qGzyoaj2RoEHiJPpCvY8jvx9u

Application "messaging"
https://astroport.copylaradio.com/?salt=toto&pepper=toto&messaging=on

Pour écrire une application on pourra utiliser "jsipfs"

https://js.ipfs.tech/
<script src="https://cdn.jsdelivr.net/npm/ipfs-core/dist/index.min.js"></script>

Ajoutez l'appel API "testcraft" pour enregistrer vos json
?salt=toto&pepper=toto&testcraft=on&nodeid=_IPFDNODEID_&DATAID=_IPDSID_

https://astroport.copylaradio.com/?salt=toto&pepper=toto&testcraft=on&nodeid=12D3KooWK1ACupF7RD3MNvkBFU9Z6fX11pKRAR99WDzEUiYp5t8j&dataid=QmZXo87nn34i54HhuMrbuXM5fKXymhV3Zj9exeZDK6s4WD

```
# APP = g1pub, messaging, testcraft, ....
http://127.0.0.1:1234/?salt=${SALT}&pepper=${PEPPER}&${APP}=?&...
```
[12345.sh](/qo-op/Astroport.ONE/src/branch/master/12345.sh)

```
IPFSNODEID JSON CACHE
DATA ~/.zen/tmp/${IPFSNODEID}/${ASTRONAUTENS}/${TYPE}/${MOATS}.data.json
INDEX ~/.zen/tmp/${IPFSNODEID}/${TYPE}.json
```

# TIDDLYWIKI

Les données produites par chaque clef sont stockées en tant que tiddlers dans des Tiddlywiki.
Le tag "voeu" déclenche la transformation du tiddler en "G1Voeu".
Son Titre  devient un tag qui permet d'échanger les tiddlers correspondant au même voeu que ses TW amis.


## COME TO TALK TW ? https://talk.tiddlywiki.org

```
# TiddlyWiki #
sudo apt install npm
sudo npm install -g tiddlywiki
added 1 package, and audited 2 packages in 10s
found 0 vulnerabilities
```
Proposez vos "Templates"

---

## LOOPY

> [Simulateur Astronaute/Voeux](https://ncase.me/loopy/v1.1/?data=[[[3,646,229,0.5,%22Astronaute%22,5],[4,806,372,0.16,%22G1Voeu%22,3],[5,449,133,0.83,%22G1Talent%22,1],[6,928,124,0.5,%22Astronaute%22,0],[7,1055,293,0.5,%22Astronaute%22,0],[8,883,587,0.5,%22Astronaute%22,0],[10,691,54,0.5,%22G1Voeu%22,3]],[[3,5,82,1,0],[3,4,-87,1,0],[6,4,83,1,0],[4,5,176,1,0],[8,8,85,1,12],[8,4,-45,1,0],[7,4,34,1,0],[5,3,49,1,0],[7,7,101,1,225],[6,6,113,1,-84],[3,3,90,1,75],[5,4,-293,1,0],[3,10,34,1,0]],[],10%5D)

> [Essaim Astroport.ONE](https://ncase.me/loopy/v1.1/?data=[[[1,419,351,1,%22Astroport.ONE%22,3],[2,506,530,1,%22Terrien%22,5],[3,499,95,1,%22IPFS%22,1],[4,272,225,1,%22Astroport.ONE%22,3],[5,620,297,0.16,%22Astroport.ONE%22,4],[7,927,69,0.66,%22Astroport.ONE%22,3],[8,798,175,0.66,%22Astroport.ONE%22,3]],[[2,1,94,-1,0],[1,2,89,1,0],[2,5,-122,1,0],[5,3,58,1,0],[3,5,25,1,0],[4,3,117,1,0],[3,4,-152,1,0],[1,3,60,1,0],[3,1,-18,1,0],[7,3,-44,1,0],[3,7,15,1,0],[8,3,37,1,0],[3,8,-47,1,0]],[[798,557,%22https%253A%252F%252Fipfs.copylaradio.com%253A1234%250A(salt%2520%252F%2520pepper%2520%252F%2520email)%2520%253D%2520TW%2520%252B%2520AstroBot%2520API%22],[256,141,%22Station%2520Officielle%250A(Bootstrap%2520%252B%2520RoundRobin%2520DNS)%22],[868,332,%22D%25C3%25A9l%25C3%25A9gation%2520de%2520clef%250A(Tiers%2520de%2520confiance)%22]],9%5D)



# TODO
* Ajouter des worlists au choix par oasis https://diceware.readthedocs.io/en/stable/wordlists.html


## Stargazers over time

[![Stargazers over time](https://starchart.cc/papiche/Astroport.ONE.svg)](https://starchart.cc/papiche/Astroport.ONE)
