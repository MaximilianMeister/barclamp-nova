name "nova-multi-compute-vmware_remove"
description "Remove Nova vmware Role"
run_list(
  "recipe[nova::remove_compute]"
)
default_attributes()
override_attributes()
