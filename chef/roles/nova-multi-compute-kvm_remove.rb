name "nova-multi-compute-kvm_remove"
description "Remove Nova kvm Role"
run_list(
  "recipe[nova::remove_compute]"
)
default_attributes()
override_attributes()
