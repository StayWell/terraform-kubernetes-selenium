variable "host" {
  description = "Hostname that will be used to route traffic to selenium. Example: selenium.mycompany.com"
  default     = ""
}

variable "namespace" {
  description = "Namespace that will be created to house all resources"
  default     = "selenium"
}

variable "hub_image" {
  description = "https://hub.docker.com/r/selenium/hub"
  default     = "selenium/hub"
}

variable "chrome_image" {
  description = "https://hub.docker.com/r/selenium/node-chrome"
  default     = "selenium/node-chrome"
}

variable "hub_cpu" {
  description = "https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment#cpu"
  default     = "1024"
}

variable "hub_memory" {
  description = "https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment#memory"
  default     = "2048"
}

variable "node_cpu" {
  description = "https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment#cpu"
  default     = "256"
}

variable "node_memory" {
  description = "https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment#memory"
  default     = "512"
}

variable "chrome_replicas" {
  description = "https://www.terraform.io/docs/providers/aws/r/ecs_service.html#desired_count"
  default     = "1"
}

variable "hub_config" {
  description = "Additional hub environment variables"
  default     = {}
}

variable "node_config" {
  description = "Additional node environment variables"
  default     = {}
}
