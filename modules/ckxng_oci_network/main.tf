resource "oci_core_vcn" "cluster_vcn" {
  count = var.create_vcn ? 1 : 0

  compartment_id = var.compartment_ocid
  cidr_blocks    = var.vcn_cidr_blocks
  dns_label      = var.vcn_dns_label
  display_name   = var.vcn_dns_label
  is_ipv6enabled = true
}

resource "oci_core_internet_gateway" "internet_gateway" {
  count = var.create_vcn ? 1 : 0

  compartment_id = var.compartment_ocid
  enabled        = true
  display_name   = "gw"

  vcn_id     = oci_core_vcn.cluster_vcn[0].id
  depends_on = [oci_core_vcn.cluster_vcn]
}

resource "oci_core_route_table" "route_table" {
  count = var.create_vcn ? 1 : 0

  compartment_id = var.compartment_ocid
  display_name   = "default routes"

  route_rules {
    description       = "IPv4 default route"
    network_entity_id = oci_core_internet_gateway.internet_gateway[0].id
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
  }
  route_rules {
    description       = "IPv6 default route"
    network_entity_id = oci_core_internet_gateway.internet_gateway[0].id
    destination       = "::/0"
    destination_type  = "CIDR_BLOCK"
  }

  vcn_id     = oci_core_vcn.cluster_vcn[0].id
  depends_on = [oci_core_internet_gateway.internet_gateway]
}

resource "oci_core_subnet" "cluster_subnet" {
  count = var.create_subnet ? 1 : 0

  compartment_id = var.compartment_ocid
  cidr_block     = var.subnet_cidr_block
  ipv6cidr_block = format("%s%s::/64", regex("(\\w+:\\w+:\\w+:\\w*)00:", oci_core_vcn.cluster_vcn[0].ipv6cidr_blocks[0])[0], var.subnet_ipv6_subnet)
  dns_label      = var.subnet_dns_label

  vcn_id     = var.create_vcn ? oci_core_vcn.cluster_vcn[0].id : var.vcn_ocid
  depends_on = [oci_core_vcn.cluster_vcn]
}

resource "oci_core_route_table_attachment" "subnet_route_attachment" {
  count = var.create_vcn && var.create_subnet ? 1 : 0

  subnet_id      = oci_core_subnet.cluster_subnet[0].id
  route_table_id = oci_core_route_table.route_table[0].id

  depends_on = [oci_core_route_table.route_table, oci_core_subnet.cluster_subnet]
}
