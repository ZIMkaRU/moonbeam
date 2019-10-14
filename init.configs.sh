#!/bin/bash

cp config/moonbeam.redis.conf.json.example config/moonbeam.redis.conf.json
cp config/moonbeam.mongo.conf.json.example config/moonbeam.mongo.conf.json
cp config/moonbeam.conf.json.example config/moonbeam.conf.json
cp config/mongo.pubtrades.conf.json.example config/mongo.pubtrades.conf.json

sed -i -e "s/\"host\": .*,/\"host\": \"redis\",/g" config/moonbeam.redis.conf.json
sed -i -e "s/\"mongoUrl\": .*,/\"mongoUrl\": \"mongodb:\/\/mongo\",/g" config/moonbeam.mongo.conf.json
sed -i -e "s/\"mongoUrl\": .*,/\"mongoUrl\": \"mongodb:\/\/mongo\",/g" config/mongo.pubtrades.conf.json

echo "Configs are ready"
