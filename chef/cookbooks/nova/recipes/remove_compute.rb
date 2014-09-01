resource = "nova"
main_role = "compute"
role_name = "#{resource}-multi-#{main_role}-#{node[:nova][:libvirt_type]}"

unless node["roles"].include?(role_name)
  barclamp_role role_name do
    service_name node[resource][main_role]["service_name"]
    action :remove
  end

  # delete all attributes from node
  node.delete(resource)

  node.save
end
