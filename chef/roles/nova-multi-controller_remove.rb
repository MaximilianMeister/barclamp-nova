name "nova-multi-controller_remove"
description "Remove Nova Controller Role"
run_list(
  "recipe[nova::remove_controller]"
)
default_attributes()
override_attributes()
