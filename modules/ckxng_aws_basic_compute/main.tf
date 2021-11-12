# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami
# Find the latest Ubuntu 20.04 image owned by Canonical local to this region
data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }

    owners = ["099720109477"] # Canonical
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "instance" {
    ami           = data.aws_ami.ubuntu.id
    instance_type = var.aws_instance_type
    user_data     = base64gzip(var.user_data)
    key_name      = aws_key_pair.ssh_key.key_name

    # Optional
    subnet_id              = var.aws_subnet_id # uses default subnet of default vpc if null
    vpc_security_group_ids = var.vpc_security_group_ids # uses default sg of default vpc if null

    root_block_device {
        volume_type = "gp3" # faster and cheaper than gp2(default)
    }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip
resource "aws_eip" "eip" {
    instance = aws_instance.instance.id
    vpc      = true
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair
resource "aws_key_pair" "ssh_key"{
    public_key = var.ssh_authorized_keys
}