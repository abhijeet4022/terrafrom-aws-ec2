# This resource creates an AWS EC2 instance for all components with CentOS 8.
resource "aws_instance" "instance" {
  ami                    = data.aws_ami.ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg
  tags                   = { Name = var.name }


  ebs_block_device {
    device_name           = "/dev/sda1"
    volume_size           = 10
    delete_on_termination = true
    tags                  = { Name = "${var.name}-os-disk" }
  }

}
