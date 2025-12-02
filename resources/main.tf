resource "aws_instance" "web" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"

  tags = {
    Name = "Test"
  }
}


resource "aws_route53_record" "www" {
  zone_id = "Z02346551HC8AOL8EM1LW"
  name    = "Aditya"
  type    = "A"
  ttl     = 300
  records = [aws_instance.web.private_ip]
}
