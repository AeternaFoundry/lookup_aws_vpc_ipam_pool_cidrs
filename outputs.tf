output "vpc_ipam_pool_cidrs_lookup_id" {
  description = "Map of id values across all vpc_ipam_pool_cidrs_lookup, keyed the same as var.vpc_ipam_pool_cidrs_lookup"
  value       = { for k, v in data.aws_vpc_ipam_pool_cidrs.vpc_ipam_pool_cidrs_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vpc_ipam_pool_cidrs_lookup_filter" {
  description = "Map of filter values across all vpc_ipam_pool_cidrs_lookup, keyed the same as var.vpc_ipam_pool_cidrs_lookup"
  value       = { for k, v in data.aws_vpc_ipam_pool_cidrs.vpc_ipam_pool_cidrs_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "vpc_ipam_pool_cidrs_lookup_ipam_pool_cidrs" {
  description = "Map of ipam_pool_cidrs values across all vpc_ipam_pool_cidrs_lookup, keyed the same as var.vpc_ipam_pool_cidrs_lookup"
  value       = { for k, v in data.aws_vpc_ipam_pool_cidrs.vpc_ipam_pool_cidrs_lookup : k => v.ipam_pool_cidrs if v.ipam_pool_cidrs != null && length(v.ipam_pool_cidrs) > 0 }
}
output "vpc_ipam_pool_cidrs_lookup_ipam_pool_id" {
  description = "Map of ipam_pool_id values across all vpc_ipam_pool_cidrs_lookup, keyed the same as var.vpc_ipam_pool_cidrs_lookup"
  value       = { for k, v in data.aws_vpc_ipam_pool_cidrs.vpc_ipam_pool_cidrs_lookup : k => v.ipam_pool_id if v.ipam_pool_id != null && length(v.ipam_pool_id) > 0 }
}
output "vpc_ipam_pool_cidrs_lookup_region" {
  description = "Map of region values across all vpc_ipam_pool_cidrs_lookup, keyed the same as var.vpc_ipam_pool_cidrs_lookup"
  value       = { for k, v in data.aws_vpc_ipam_pool_cidrs.vpc_ipam_pool_cidrs_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

