resource "aws_instance" "pub-1" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  user_data = <<-EOF
        #!/bin/bash
        sudo apt update -y
        sudo apt install apache2             
        sudo systemctl start apache2
        sudo systemctl enable apache2
        echo "hello terraform happy new year" > /var/www/html/index.html
      EOF
  tags = {
    Name = "TF-server-public"
  }
}