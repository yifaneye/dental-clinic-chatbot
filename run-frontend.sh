#!/bin/sh

printf '\nStarted preparing frontend'
git clone https://github.com/yifaneye/dental-clinic-chatbot-frontend.git interface
cd interface || exit
npm install
npm run-script build
printf '\nFinished preparing frontend'
printf '\nDental Clinic Chatbot will be ready at http://localhost:5004'
serve -s build -p 5004
