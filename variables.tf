variable "iap_web_iam_bindings" {
  description = <<EOT
Map of iap_web_iam_bindings, attributes below
Required:
    - members
    - role
Optional:
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    members = set(string)
    role    = string
    project = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

