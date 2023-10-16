provider "proxmox" {
    pm_tls_insecure     = var.pm_tls_insecure
    pm_api_url          = var.pm_api_url
    pm_api_token_id     = var.pm_api_token_id
    pm_api_token_secret = var.pm_api_token_secret
}

variable "default_nic_bridge" {
    type        = string
    default     = "vmbr1"
}

variable "servers" {
    type        = map(any)
    description = "server list to provision, must include: service, core count, memory, disk_size, vm name, ip cidr, gw, vlan, "
}

variable "clone" {
    type        = string
    description = "template name to clone"
}

variable "tablet" {
    type        = bool
    default     = false
}

variable "searchdomain" {
    type        = string
}

variable "pm_tls_insecure" {
    type        = bool
    default     = false
}

variable "pm_parallel" {
    type        = number
    default     = 4
}

variable "pm_api_url" {
    type        = string
}

variable "pm_api_token_id" {
    type        = string
}

variable "pm_api_token_secret" {
    type        = string
    sensitive   = true
}

variable "target_node" {
    type        = string
}

variable "cloud_init_user" {
    type        = string
}

variable "cloud_init_user_password" {
    type        = string
    sensitive   = true
}

variable "cloud_init_user_ssh_public_key" {
    type        = string
}