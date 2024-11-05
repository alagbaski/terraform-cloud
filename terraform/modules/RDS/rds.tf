# This section will create the subnet group for the RDS instance using the private subnet
resource "aws_db_subnet_group" "opsmen-db-subnet-group" {
  name       = "opsmen-db-subnet-group"
  subnet_ids = var.private_subnets

  tags = merge(
    var.tags,
    {
      Name = "opsmen-rds"
    },
  )
}

# create the RDS instance with the subnets group
resource "aws_db_instance" "opsmen-rds" {
  allocated_storage      = 50
  storage_type           = "gp3"
  engine                 = "mysql"
  engine_version         = "8.0.35"
  instance_class         = "db.t3.micro"
  db_name                = "opsmendb"
  identifier             = "opsmen-database"
  username               = var.master-username
  password               = var.master-password
  parameter_group_name   = "default.mysql8.0"
  db_subnet_group_name   = aws_db_subnet_group.opsmen-db-subnet-group.name
  skip_final_snapshot    = true
  vpc_security_group_ids = var.db-sg
  multi_az               = "true"
}
