#!/bin/sh
SCORE=0
PASS=0
tc=10
ppt=100/tc

count=$(grep -o "sails" package.json | wc -l)
if [ $count != 0 ];
then PASS=$((PASS + 1))
fi;

count=$(grep -o "sails-disk" package.json | wc -l)
if [ $count != 0 ];
then PASS=$((PASS + 1))
fi;

count=$(grep -o "istanbul" package.json | wc -l)
if [ $count != 0 ];
then PASS=$((PASS + 1))
fi;

counts=$(grep -o "repository" package.json | wc -l)
count=$(grep -o "git" package.json | wc -l)
if [ $counts != 0 ] && [ $count != 0 ];
then PASS=$((PASS + 1))
fi;

count=$(grep -o "start" package.json | wc -l)
counts=$(grep -o "node app.js" package.json | wc -l)
if [ $counts != 0 ] && [ $count != 0 ];
then PASS=$((PASS + 1))
fi;

count=$(grep -o "MIT" package.json | wc -l)
if [ $count != 0 ];
then PASS=$((PASS + 1))
fi;

count=$(grep -o "devDependencies" package.json | wc -l)
counts=$(grep -o "should" package.json | wc -l)
if [ $counts != 0 ] && [ $count != 0 ];
then PASS=$((PASS + 1))
fi;

count=$(grep -o "mocha" package.json | wc -l)
if [ $count != 0 ];
then PASS=$((PASS + 1))
fi;

count=$(grep -o "name" package.json | wc -l)
counts=$(grep -o "sails-app" package.json | wc -l)
if [ $count != 0 ] && [ $counts != 0 ];
then PASS=$((PASS + 1))
fi;

count=$(grep -o "supertest" package.json | wc -l)
if [ $count != 0 ];
then PASS=$((PASS + 1))
fi;

SCORE=$(($PASS * ppt))
echo "FS_SCORE:$SCORE%"
