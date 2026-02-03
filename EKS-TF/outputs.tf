output "cluster_name" {
  description = "The name of the EKS cluster"
  value       = aws_eks_cluster.eks_cluster.name
}

output "cluster_endpoint" {
  description = "The endpoint for the EKS control plane"
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "cluster_certificate_authority_data" {
  description = "The Kubernetes cluster certificate authority data"
  value       = aws_eks_cluster.eks_cluster.certificate_authority[0].data
  sensitive   = true
}

output "cluster_iam_role_arn" {
  description = "The ARN of the IAM role for the EKS cluster"
  value       = aws_iam_role.eks_cluster_role.arn
}

output "node_group_iam_role_arn" {
  description = "The ARN of the IAM role for the EKS node group"
  value       = aws_iam_role.eks_node_group_role.arn
}

output "node_group_name" {
  description = "The name of the EKS node group"
  value       = aws_eks_node_group.eks_node_group.node_group_name
}

output "cloudwatch_log_group_name" {
  description = "The name of the CloudWatch log group"
  value       = aws_cloudwatch_log_group.eks_logs.name
}

output "oidc_provider_arn" {
  description = "The ARN of the OIDC provider"
  value       = aws_iam_openid_connect_provider.eks_oidc_provider.arn
}

output "configure_kubectl" {
  description = "Command to configure kubectl to connect to the cluster"
  value       = "aws eks update-kubeconfig --name ${aws_eks_cluster.eks_cluster.name} --region ${var.aws_region}"
}

output "deployment_commands" {
  description = "Commands to deploy the Super Mario application"
  value = [
    "kubectl apply -f deployment.yaml",
    "kubectl apply -f service.yaml",
    "kubectl apply -f horizontal-pod-autoscaler.yaml",
    "kubectl apply -f network-policy.yaml",
    "# Optional: kubectl apply -f service-monitor.yaml"
  ]
}

output "access_command" {
  description = "Command to get the LoadBalancer URL"
  value       = "kubectl get services mario-service"
}
