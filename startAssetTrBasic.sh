#!/bin/bash

pushd network

./startnetwork.sh

sleep 5

./createchannel.sh

sleep 5

./setAnchorPeerUpdate.sh

sleep 5

./deployCC.sh

popd
# ccp pk(ca의 인증서 일부)를 자동으로 수정하도록 함
pushd application/ccp

./ccp-generate.sh

popd

push application

rm -rf wallet

popd 
