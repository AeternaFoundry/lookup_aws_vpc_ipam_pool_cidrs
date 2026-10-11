data "aws_vpc_ipam_pool_cidrs" "vpc_ipam_pool_cidrs_lookup" {
  for_each = var.vpc_ipam_pool_cidrs_lookup

  ipam_pool_id = each.value.ipam_pool_id
  region       = each.value.region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

