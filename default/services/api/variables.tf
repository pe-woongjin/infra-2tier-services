# ######################
# COMMON
# ######################
variable "environment" {
  type = string
}

variable "resrc_prefix_nm" {
  type = string
}


# ######################
# Subnet
# ######################
# api subnet
variable "api_sn_list" {
  type = list(map(string))
}


# ######################
# Launch Template
# ######################
# api launch template
variable "api_lt" {
  type = map(string)
}


# ######################
# Route 53
# ######################
# route 53 host name
variable "hosts" {
  type = map(string)
}


# ######################
# Output
# ######################
variable "pri-rt-ids" {
  description = "private route-table ids"
}

variable "alb-listener443" {
  description = "alb listener"
}


# ######################
# Imported data
# ######################
variable "vpc_id" {
  type = string
}

variable "ec2_role_name" {
  type = string
}

variable "cd_role_name" {
  type = string
}