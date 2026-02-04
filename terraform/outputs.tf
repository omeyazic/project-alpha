output "control_plane_ip" {
  description = "IP address of control plane node"
  value       = multipass_instance.k3s_control.ipv4
}

output "worker_ip" {
  description = "IP address of worker node"
  value       = multipass_instance.k3s_worker.ipv4
}

output "connection_info" {
  description = "SSH connection information"
  value = {
    control_plane = "multipass shell ${multipass_instance.k3s_control.name}"
    worker        = "multipass shell ${multipass_instance.k3s_worker.name}"
  }
}
