name "nova-multi-compute-qemu_remove"
description "Remove Nova qemu Role"
run_list(
  "recipe[nova::remove_compute]"
)
default_attributes()
override_attributes()
