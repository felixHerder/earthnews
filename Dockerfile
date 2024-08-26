FROM node:20

WORKDIR /usr/src/app

COPY . .

RUN <<EOF
    npm ci 
    npm run build
    npm i -g serve 
EOF

CMD ['serve', '-p', '8080', 'dist' ]
