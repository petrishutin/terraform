output "id" {
  value       = google_container_cluster.primary.id
  description = "The id of kubernetes cluster"
}

#output "cluster_username" {
#  value = google_container_cluster.primary.master_auth[0].username
#}

#output "cluster_password" {
#  value = google_container_cluster.primary.master_auth[0].password
#}

output "endpoint" {
  value = google_container_cluster.primary.endpoint
}

#output "instance_group_urls" {
#  value = google_container_cluster.primary.instance_group_urls
#}

output "node_config" {
  value = google_container_cluster.primary.node_config
}

output "node_pools" {
  value = google_container_cluster.primary.node_pool
}