extends Node

var network = NetworkedMultiplayerENet.new()
var port = 1909
var max_players = 100

var player_state_collection = {}

func _ready():
	StartServer()
func StartServer():
	network.create_server(port, max_players)
	get_tree().set_network_peer(network)
	print("Server started")	
	
	network.connect("peer_connected", self, "_Peer_Connected")
	network.connect("peer_disconnected", self, "_Peer_Disconnected")
	
func _Peer_Connected(player_id):
	print("User " + str(player_id) + " Connected")
	
	
func _Peer_Disconnected(player_id):
	print("User " + str(player_id) + " Disconnected")
	player_state_collection.erase(player_id)

remote func ReceivePlayerState(player_state):
	var player_id = get_tree().get_rpc_sender_id()
	if player_state_collection.has(player_id):
		if player_state_collection[player_id]["T"] < player_state["T"]:
			player_state_collection[player_id] = player_state
	else:
		player_state_collection[player_id] = player_state
		
func SendWorldState(world_state):
	print(world_state)
	rpc_unreliable_id(0, "ReceiveWorldState", world_state)
