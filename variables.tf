variable "domain" {
  description = "(Required) Domain where selenium will be hosted. Example: selenium.mycompany.com"
}

variable "namespace" {
  description = "(Optional) Namespace that will be created to house all resources"
  default     = "selenium"
}

variable "hub_image" {
  description = "(Optional) https://hub.docker.com/r/selenium/hub"
  default     = "selenium/hub"
}

variable "chrome_image" {
  description = "(Optional) https://hub.docker.com/r/selenium/node-chrome"
  default     = "selenium/node-chrome"
}

variable "hub_cpu" {
  description = "(Optional) https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment#cpu"
  default     = "1024"
}

variable "hub_memory" {
  description = "(Optional) https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment#memory"
  default     = "2048"
}

variable "node_cpu" {
  description = "(Optional) https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment#cpu"
  default     = "256"
}

variable "node_memory" {
  description = "(Optional) https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment#memory"
  default     = "512"
}

variable "chrome_replicas" {
  description = "(Optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#desired_count"
  default     = "1"
}

variable "hub_config" {
  description = "(Optional) Additional hub environment variables"
  default     = {}
}

variable "node_config" {
  description = "(Optional) Additional node environment variables"
  default     = {}
}
