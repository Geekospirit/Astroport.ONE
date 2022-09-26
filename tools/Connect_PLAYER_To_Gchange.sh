#!/bin/bash
# Run After PLAYER.entrance.sh
################################################################################
MY_PATH="`dirname \"$0\"`"              # relative
MY_PATH="`( cd \"$MY_PATH\" && pwd )`"  # absolutized and normalized
ME="${0##*/}"
######################################################################### CONNECT PLAYER WITH GCHANGE
# Check who is .current PLAYER
PLAYER=$(cat ~/.zen/game/players/.current/.player 2>/dev/null) || ( echo "noplayer" && exit 1 )
PSEUDO=$(cat ~/.zen/game/players/.current/.pseudo 2>/dev/null) || ( echo "nopseudo" && exit 1 )
G1PUB=$(cat ~/.zen/game/players/.current/.g1pub 2>/dev/null) || ( echo "nog1pub" && exit 1 )

ASTRONAUTENS=$(ipfs key list -l | grep -w "$PLAYER" | cut -d ' ' -f 1)

########################################################################
echo "CREATING $PLAYER GCHANGE+ PROFILE"
########################################################################
$MY_PATH/jaklis/jaklis.py -k ~/.zen/game/players/$PLAYER/secret.dunikey -n "https://data.gchange.fr" set --name "Astronaute $PSEUDO" --avatar "/home/$USER/.zen/Astroport.ONE/images/logo.png" --site "https://astroport.com/ipns/$ASTRONAUTENS" #GCHANGE+
[[ ! $? == 0 ]] && echo "GCHANGE PROFILE CREATION FAILED" && echo "Action Manuelle " $MY_PATH/jaklis/jaklis.py -k ~/.zen/game/players/$PLAYER/secret.dunikey -n "https://data.gchange.fr" set --name "Astronaute $PSEUDO" --avatar "/home/$USER/.zen/Astroport.ONE/images/logo.png" --site "https://astroport.com/ipns/$ASTRONAUTENS" #GCHANGE+

########################################################################
#echo "CREATING $PLAYER CESIUM+ PROFILE"
########################################################################
$MY_PATH/jaklis/jaklis.py -k ~/.zen/game/players/$PLAYER/secret.dunikey -n "https://g1.data.presles.fr" set --name "Astronaute $PLAYER" --avatar "/home/$USER/.zen/Astroport.ONE/images/logo.png" --site "http://127.0.0.1:8080/ipns/$ASTRONAUTENS" #CESIUM+
[[ ! $? == 0 ]] && echo "CESIUM PROFILE CREATION FAILED" && echo "Action Manuelle " $ $MY_PATH/jaklis/jaklis.py -k ~/.zen/game/players/$PLAYER/secret.dunikey -n "https://g1.data.presles.fr" set --name "Astronaute $PLAYER" --avatar "/home/$USER/.zen/Astroport.ONE/images/logo.png" --site "http://127.0.0.1:8080/ipns/$ASTRONAUTENS" #CESIUM+

########################################################################

########################################################################
echo "SCANNING MY GCHANGE FRIENDS"
########################################################################
################## CHECKING WHO GAVE ME STARS
################## BOOTSTRAP LIKES THEM BACK
################## SEND ipfstryme MESSAGES to FRIENDS
rm -f ~/.zen/tmp/friend_of_mine
## Getting Gchange  liking_me list
~/.zen/Astroport.ONE/tools/timeout.sh -t 20 ~/.zen/Astroport.ONE/tools/jaklis/jaklis.py -k ~/.zen/game/players/$PLAYER/secret.dunikey -n "https://data.gchange.fr" stars | jq -r '.likes[].issuer' | uniq > ~/.zen/tmp/liking_me

## Adding RANDOM bootstrap to liking_me list
~/.zen/Astroport.ONE/tools/ipfs_to_g1.py $(cat ~/.zen/astrXbian/A_boostrap_nodes.txt | grep -Ev "#" | rev | cut -d '/' -f 1 | rev | shuf | head -n 1) >> ~/.zen/tmp/liking_me

for liking_me in $(cat ~/.zen/tmp/liking_me | sort | uniq);
do
    [[ "$liking_me" == "" ]] && continue ## Protect from empty line !!

    ipfsnodeid=$(~/.zen/Astroport.ONE/tools/g1_to_ipfs.py $liking_me)
    echo "Reading stars.level from Stations IPNS Capsules."

##### CHECKING IF WE LIKE EACH OTHER (AVOID LIKING MYSELF)
    ~/.zen/Astroport.ONE/tools/timeout.sh -t 20 ~/.zen/Astroport.ONE/tools/jaklis/jaklis.py -k ~/.zen/game/players/$PLAYER/secret.dunikey -n "https://data.gchange.fr" stars -p $liking_me > ~/.zen/tmp/Gstars.json
    ## ZOMBIE PROTECTION
    [[ "$?" == "0" && ! -s ~/.zen/tmp/Gstars.json ]] && rm -Rf ~/.zen/game/players/$PLAYER/FRIENDS/$liking_me && echo "$liking_me is a ZOMBIE..." && continue

    friend_of_mine=$(cat ~/.zen/tmp/Gstars.json | jq -r '.yours');
    if [[ "$friend_of_mine" != "null" && "$liking_me" != "$G1PUB" ]]
    then
        # ADD $liking_me TO MY ipfs FRIENDS list
        echo "$liking_me is my FRIEND"
        mkdir -p ~/.zen/game/players/$PLAYER/FRIENDS/$liking_me

        # REFRESH & PUBLISH stars friends map
        stars="$(cat ~/.zen/tmp/Gstars.json | jq -r '.yours.level')"
        if [[ "$stars" == "null" || "$stars" == "" ]]; then
            rm -Rf ~/.zen/game/players/$PLAYER/FRIENDS/$liking_me
            echo "$friend_of_mine NO STAR !! Removing $liking_me"
            ## TODO : remove "ipfs pin" in "~/.zen/PIN/"
            continue ## REMOVE NO GOOD FRIENDS (no star)
        fi
        cp ~/.zen/tmp/Gstars.json ~/.zen/game/players/$PLAYER/FRIENDS/$liking_me/ && rm -f ~/.zen/tmp/Gstars.json
        echo "$stars" > ~/.zen/game/players/$PLAYER/FRIENDS/$liking_me/stars.level && echo "***** $stars STARS *****"

        echo "***** Convert $liking_me to ipfsnodeid *****"
        ipfsnodeid=$(~/.zen/Astroport.ONE/tools/g1_to_ipfs.py $liking_me)
        echo ${ipfsnodeid} > ~/.zen/game/players/$PLAYER/FRIENDS/$liking_me/ipfsnodeid
    fi

    sleep $((1 + RANDOM % 2)) # SLOW DOWN
done


exit 0
