resource "aws_instance" "ecomm-web-instance" {
  ami           = "ami-06f4d01597a96dac8"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.ecomm-pub-sn.id
  vpc_security_group_ids = [aws_security_group.ecomm-pub-sg.id]
  key_name = "itzpraveenz"
  user_data = file ("ecomm.sh")
  
  tags = {
    Name = "pub-sg"
  }
}