resource "aws_db_instance" "pch_mydb" {
  allocated_storage =10
  engine ="mysql"
  engine_version = "5.7"
  instance_class = "db.t2.micro"
  name = "mydb"
  identifier = "mydb"
  username = "admin"
  password = "It12345!"
  parameter_group_name = "default.mysql5.7"
  availability_zone = "ap-northeast-2a"
  db_subnet_group_name = aws_db_subnet_group.pch_dbsn.id
  vpc_security_group_ids  = [aws_security_group.pch_websg.id]
  skip_final_snapshot = true
  tags = {
    "Namw" = "pch-mydb"

  }
}

resource "aws_db_subnet_group" "pch_dbsn" {
    name = "pch-db-group"
    subnet_ids = [aws_subnet.pch_pria.id,aws_subnet.pch_pric.id]
    tags = {
      Name = "pch-dbsb-group"

    }
  
}