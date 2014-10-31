include java
include maven
include nodejs

class { "::mongodb::globals":
  manage_package_repo => true
}
class { "::mongodb::server":
  bind_ip => ['0.0.0.0']
}
mongodb::db { 'database':
  user          => 'user',
  password => 'pwd',
}
package { 'grunt':
  provider => 'npm',
  require  => Class['nodejs']
}
package { 'grunt-cli':
  provider => 'npm',
  require  => Class['nodejs']
}
package { 'bower':
  provider => 'npm',
  require  => Class['nodejs']
}