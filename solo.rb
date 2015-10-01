
  root = File.absolute_path(File.dirname(__FILE__))

  file_cache_path root
  cookbook_path   root + "/cookbooks"
  role_path       root + "/roles"
  data_bag_path   root + "/data-bags"
  json_attribs    root + "/node.json"

  # Recommend to protect against man-in-the-middle attacks
  ssl_verify_mode :verify_peer

