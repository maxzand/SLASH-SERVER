extends Node

var network = NetworkedMultiplayerENet.new()
var port = 1911
var max_servers = 1

func _ready():
	StartServer()
func StartServer():
	network.create_server(port, max_servers)
	get_tree().set_network_peer(network)
	print("Authentication server started")	
	
	network.connect("peer_connected", self, "_Peer_Connected")
	network.connect("peer_disconnected", self, "_Peer_Disconnected")
	
func _Peer_Connected(gateway_id):
	print("Gateway " + str(gateway_id) + " Connected")
	
func _Peer_Disconnected(gateway_id):
	print("Gateway " + str(gateway_id) + " Disconnected")

remote func authenticate_player(username, password, player_id):
	print("authentication request received")
	var gateway_id = get_tree().get_rpc_sender_id()
	var result
	print("Starting authentication")
	if not PlayerData.PlayerIDs.has(username):
		print("User not recognized")
		result = false
	elif not PlayerData.PlayerIDs[username].Password == password:
		print("Incorrect Password")
		result = false
	else:
		print("Successful Authentication")
		result = true 
	print("authentication result send to gatewat server")
	rpc_id(gateway_id, "AuthenticationResults", result, player_id)
	
