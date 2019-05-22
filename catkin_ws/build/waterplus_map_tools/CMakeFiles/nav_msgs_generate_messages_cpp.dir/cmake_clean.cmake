FILE(REMOVE_RECURSE
  "waterplus_map_tools_automoc.cpp"
  "wp_manager_automoc.cpp"
  "wp_nav_odom_report_automoc.cpp"
  "wp_nav_remote_automoc.cpp"
  "wp_nav_test_automoc.cpp"
  "wp_saver_automoc.cpp"
  "CMakeFiles/nav_msgs_generate_messages_cpp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/nav_msgs_generate_messages_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
