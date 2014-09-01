resource = "nova"
main_role = "controller"
role_name = "#{resource}-multi-#{main_role}"

unless node["roles"].include?(role_name)
  barclamp_role role_name do
    service_name node[resource][main_role]["service_name"]
    action :remove
  end

  # delete all attributes from node
  node.delete(resource) unless node["roles"].include?("#{resource}-multi-compute-#{node[:nova][:libvirt_type]}_remove")

  node.save
end

