from novaclient import OpenStack

nova = OpenStack (USERNAME, PASSWORD, AUTH_URL)
nova.servers.list()
