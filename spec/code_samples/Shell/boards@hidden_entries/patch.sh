curl --request PATCH \
  --url https://www.directfreight.com/api/boards/hidden_entries \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --header 'end-user-token: SOME_STRING_VALUE' \
  --data '{"entry_id":["<ADD STRING VALUE>"]}'