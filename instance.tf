resource "aws_instance" "kubernetes" {

  # reffering ami from varibale.tf file
  ami = var.ami
  # reffering instance type from varibale.tf file                                      
  instance_type = var.instance_type
  # enable public ip seeting                         
  associate_public_ip_address = true
  # create a 3 instance                             
  count = 3
  # reffering docker install script                                                    
  user_data = file("install_docker.sh")
  # refference your existing key pair name, security group, subntes
  key_name               = var.existing_key_pair_name
  vpc_security_group_ids = [aws_security_group.kubernetes.id]
  subnet_id              = aws_subnet.public.id
  # add name to the instance
  tags = {
    Name = "kubernetes-master"
  }
}