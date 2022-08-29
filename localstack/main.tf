resource "aws_dynamodb_table" "dogs" {
  name           = "dogs"
  read_capacity  = "20"
  write_capacity = "20"
  hash_key       = "ID"

  attribute {
    name = "ID"
    type = "S"
  }

  provisioner "local-exec" {
    command = "aws dynamodb list-tables --endpoint-url=http://localhost:4566  --region=ap-southeast-2"
    interpreter = ["PowerShell", "-Command"]
  }

}
