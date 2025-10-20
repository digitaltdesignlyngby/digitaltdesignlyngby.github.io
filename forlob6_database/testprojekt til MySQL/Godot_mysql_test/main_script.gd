extends Control

# Declare member variables here. Examples:
var http_request : HTTPRequest = HTTPRequest.new()
const SERVER_URL = "http://localhost:8080/godot/db_test.php"
const SERVER_HEADERS = ["Content-Type: application/x-www-form-urlencoded", "Cache-Control: max-age=0"]
var request_queue : Array = []
var is_requesting : bool = false



# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	add_child(http_request)
	http_request.connect("request_completed", Callable(self, "_http_request_completed"))
	
	


func _process(delta):
	
	if is_requesting:
		return
		
	if request_queue.is_empty():
		return
		
	is_requesting = true
	_send_request(request_queue.pop_front())
	
	
			
	
func _http_request_completed(_result, _response_code, _headers, _body):
	is_requesting = false
	if _result != http_request.RESULT_SUCCESS:
		printerr("Error w/ connection: " + str(_result))
		return
	
	var response_body = _body.get_string_from_utf8()
	
	var test_json_conv = JSON.new()
	test_json_conv.parse(response_body)
	var response = test_json_conv.get_data()
	
	if response['error'] != "none":
		printerr("We returned error: " + response['error'])
		return
	
	
	var user_data = response['response']
	var data_size = response['datasize']
	
	#$TextEdit.set_text(response_body)
	$TextEdit.set_text("")
	
	if data_size > 1:
		test_json_conv.parse(user_data)
		user_data = test_json_conv.get_data()
		for n in data_size:
			#print(user_data[str(n)]['player_name'])
			$TextEdit.set_text($TextEdit.get_text() + "\n" + str(user_data[str(n)]['player_name']) + "\t\t" + str(user_data[str(n)]['score']))
	elif data_size == 1:
		#print(user_data['player_name'])
		$TextEdit.set_text(str(user_data['player_name']) + "\t\t" + str(user_data['score']))
	else:
		#print("No data")
		$TextEdit.set_text("No data")

	
	
func _send_request(request: Dictionary):
	var client = HTTPClient.new()
	var data = client.query_string_from_dict({"data" : JSON.stringify(request['data'])})
	var body = "command=" + request['command'] + "&" + data
	
	var err = http_request.request(SERVER_URL, SERVER_HEADERS, HTTPClient.METHOD_POST, body)
	
	if err != OK:
		printerr("HTTPRequest error: " + String(err))
		return
		
	print("Requesting...\n\tCommand: " + request['command'] + "\n\tBody: " + body)
	
	
func _submit_score():
	var user_name = $PlayerName.get_text()
	var score = $Score.get_text()
	var command = "add_score"
	var data = {"username" : user_name, "score" : score}
	request_queue.push_back({"command" : command, "data" : data})
	
func _get_scores():
	var command = "get_scores"
	var data = {"score_ofset" : 0, "score_number" : 10}
	request_queue.push_back({"command" : command, "data" : data})

func _get_player():
	var user_id = $ID.get_text()
	var command = "get_player"
	var data = {"user_id" : user_id}
	request_queue.push_back({"command" : command, "data" : data})
