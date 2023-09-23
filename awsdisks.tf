# EBS Volume / HDD
resource "aws_ebs_volume" "tf-ebs" {
  availability_zone = "eu-west-2a"
  size              = 5

  tags = {
    Name = "TF-HDD"
  }
}