 resource "aws_instance" "ec2-instance1" {
   ami = "ami-06b21ccaeff8cd686"
   instance_type = "t2.micro"

   tags = {                                
     Name = "demo-server1"
}
}


resource "aws_instance" "ec2-Instance2" {
  provider      = aws.west
  ami           = "ami-0cf4e1fcfd8494d5b"  # AMI for us-west-1
  instance_type = "t2.micro"

  tags = {                                
    Name = "demo-server2"
}
}