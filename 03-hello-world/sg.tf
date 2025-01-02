resource "aws_security_group" "example" {

  dynamic "egress" {
    for_each = var.egress

    content {
      from_port       = egress.value.from_port
      to_port         = egress.value.to_port
      protocol        = egress.value.protocol
      prefix_list_ids = egress.value.prefix_list_ids
    }
  }

}
