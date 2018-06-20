provider "aws"{
	access_key = ${var.access_key}
	secret_key = ${var.secret_key}
	region = ${var.region}
}

resource "aws_instance" "web"{
	ami = ${var.ami_id}
	count = ${var.number_of_instance}
	key_name = ${var.key_name}
	instance_type = ${var.instance_type}
	subnet_id = ${var.subnet_id}
	user_data = ${file(var.user_data)}
}