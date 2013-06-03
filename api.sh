#!/bin/bash
token=391a2659517d4b9781b05e45eb15f8e5
tenantId=aaba123ae4df4e1da83681d42553907a
#f31
tenantId=8585fee3fc42461bbd8f2e2d4c2f70e5
#f32
tenantId=4ba1075b88734c769006bc6840683fbd 
tenantId=d5eaa0eec79e45728b4c2720ba6489d2

host=10.5.147.228
host=fg2
#localhost
username=admin
password=password

echo $host

# test service catalog
#curl -s -X POST http://$host:35357/v2.0/tokens \
    #-d '{"auth": {"passwordCredentials": {"username":"admin", "password":"password"}, "tenantName":"admin"}}' \
    #-H "Content-type: application/json" 
    #-d '{"auth": {"passwordCredentials": {"username":"$username", "password":"$password"}, "tenantName":"admin"}}' \
    #-H "Content-type: application/json" | jq .

# get token
#curl -d '{"auth":{"passwordCredentials":{"username": "admin", "password": "password"}}}' -H "Content-type: application/json" http://$host:5000/v2.0/tokens
#curl -d '{"auth":{"passwordCredentials":{"username": "admin", "password": "password"}, "tenantId":""}}' -H "Content-type: application/json" http://$host:5000/v2.0/tokens
#curl -d '{"auth":{"passwordCredentials":{"username": "admin", "password": "password"}, "tenantId": "4ba1075b88734c769006bc6840683fbd"}}' -H "Content-type: application/json" http://$host:5000/v2.0/tokens
#curl -d '{"auth":{"passwordCredentials":{"username": "admin", "password": "password"}, "tenantId": "$tenantId"}}' -H "Content-type: application/json" http://$host:5000/v2.0/tokens

# get tenant id
#curl -H "X-Auth-Token:$token" http://$host:5000/v2.0/tenants

# get endpoint list
#curl -k -X 'POST' -v http://$host:5000/v2.0/tokens -d '{"auth":{"passwordCredentials":{"username": "admin", "password":"password"}, "tenantId":"4ed43001453a478eadbe101353fd175c"}}' -H 'Content-type: application/json'
#curl -k -X 'POST' -v http://$host:5000/v2.0/tokens -d '{"auth":{"passwordCredentials":{"username": "$username", "password":"$password"}, "tenantId":"$tenantId"}}' -H 'Content-type: application/json'

# get instance list
#xauthtoken="X-Auth-Token:$token"
#echo $xauthtoken
curl -v -H "X-Auth-Token:dc1f6a61fa184bc48937c6efc7e0bab7" http://$host:8774/v2/$tenantId/servers
#curl -v -H "$xauthtoken" http://localhost:8774/v2/$tenantId/servers
#curl -v -H "X-Auth-Token:\$token" http://localhost:8774/v2/$tenantId/servers
#curl -v -H "X-Auth-Token:aaba123ae4df4e1da83681d42553907a" http://$host:8774/v2/4ed43001453a478eadbe101353fd175c/servers
#curl -v -H "X-Auth-Token:2b1ddd8af4944345b18eb4d96c3cfccf" http://10.5.147.228:8774/v2/4ed43001453a478eadbe101353fd175c/servers

# get image-list
#curl -v -H "X-Auth-Token:$token" http://$host:8774/v1.1/$tenantId/images
#curl -v -H "X-Auth-Token:$token" http://$host:8774/v2/$tenantId/images
#curl -v -H "X-Auth-Token:$token" http://$host:8774/$tenantId/images
#curl -v -H "X-Auth-Token:$token" http://$host:8774/v2.0/$tenantId/images

echo

