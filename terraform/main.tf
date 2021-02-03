
provider "aws" {
        region = "us-east-1"
        profile = "user_aws"
        access_key = "access_key"
        secret_key = "secret_key"
        token = "token"
}

resource "aws_instance" "techlab_handersonc"{
        ami =  var.amis["us-east-1"]
        instance_type = var.instance_name


        tags = {
                Name = "ec2-handersonc"
        }

	vpc_security_group_ids = ["${aws_security_group.handersonc_acesso_ssh.id}"]
}

resource "aws_dynamodb_table" "handersonc_origem_techlab2" {
        name           = "handersonc-origem-techlab-dynamo-table"
        billing_mode   = "PROVISIONED"
        read_capacity  = 1
        write_capacity = 1
        hash_key       = "id"

        attribute {
                name = "id"
                type = "S"
        }
}

resource "aws_dynamodb_table" "handersonc_destino_techlab2" {
        name           = "handersonc-destino-techlab-dynamo-table"
        billing_mode   = "PROVISIONED"
        read_capacity  = 1
        write_capacity = 1
        hash_key       = "id"

        attribute {
                name = "id"
                type = "S"
        }


}
