case node['platform']
when "ubuntu"
  default[:git][:package] = node['platform_version'].to_f <= 10.04 ? 'git-core' : 'git'
else
  default[:git][:package] = "git"
end