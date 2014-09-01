name "nova-multi-compute-xen_remove"
description "Remove Nova xen Role"
run_list(
  "recipe[nova::remove_compute]"
)
default_attributes()
override_attributes()
