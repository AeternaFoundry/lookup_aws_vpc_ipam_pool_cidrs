variable "vpc_ipam_pool_cidrs_lookup" {
  description = <<EOT
Map of vpc_ipam_pool_cidrs_lookup, attributes below
Required:
    - ipam_pool_id
Optional:
    - region
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    ipam_pool_id = string
    region       = optional(string)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

