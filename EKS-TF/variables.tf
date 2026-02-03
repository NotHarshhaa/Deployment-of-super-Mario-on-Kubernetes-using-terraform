variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "EKS_CLOUD"
}

variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "ap-south-1"
}

variable "eks_version" {
  description = "EKS Kubernetes version"
  type        = string
  default     = "1.29"
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
  default     = "Node-cloud"
}

variable "instance_types" {
  description = "EC2 instance types for node group"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 4
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "disk_size" {
  description = "Disk size in GiB for worker nodes"
  type        = number
  default     = 30
}

variable "ssh_key_name" {
  description = "SSH key pair name for node access"
  type        = string
  default     = "eks-key"
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "Production"
}

variable "project_name" {
  description = "Project name for tagging"
  type        = string
  default     = "Super Mario EKS Deployment"
}

variable "enable_logging" {
  description = "Enable EKS control plane logging"
  type        = bool
  default     = true
}

variable "log_retention_days" {
  description = "CloudWatch log retention in days"
  type        = number
  default     = 14
}
