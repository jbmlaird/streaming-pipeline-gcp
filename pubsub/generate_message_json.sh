set -euo pipefail

USER_ID=$1
TYPE=$2
TITLE=$3
ARTIST=$4

[[ -z $USER_ID ]] && [[ -z $TYPE ]] && [[ -z $TITLE ]] && [[ -z $ARTIST ]] && echo "UserId, Type, Title and Artist must supplied. Usage: ./generate_message_json user_id type title artist" && exit 99

while :
do
  gcloud pubsub topics publish track-stream --message="{user_id: \"${USER_ID}\", type: \"${TYPE}\", title: \"${TITLE}\", artist: \"${ARTIST}\", timestamp: \"$(date +%s)}\""
  sleep 1
done
