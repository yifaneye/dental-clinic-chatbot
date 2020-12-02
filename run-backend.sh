#!/bin/sh

printf '\nStarted preparing backend'
for directory in "chatbot" "dentist" "timeslot"; do
    git clone https://github.com/yifaneye/dental-clinic-$directory-api-flask.git $directory
done
printf 'WIT_DATETIME = "20201115"\nWIT_TOKEN = "Bearer 53HIBLYU3PPCW4GI3C2KBENO6FT5KOC2"\n' > chatbot/chat/chat/v1/api/secrets.py
printf '\nFinished preparing backend'
docker-compose up
