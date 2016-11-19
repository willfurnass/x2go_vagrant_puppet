service { "network-manager":
  ensure  => "running",
}

package { "epel-release":
  ensure => present,
}

package { "openssh-server":
  ensure => present,
}
service { "sshd":
  ensure  => "running",
  require => Package["openssh-server"],
}

$x2go_pkgs = [ 'x2goserver', 'x2goserver-xsession' ]
package { $x2go_pkgs:
  ensure => present,
}

$xfce_pkgs = [ 'xfce4-settings', 'xfdesktop', 'xfce4-panel', 'xfce4-terminal', 'xfce4-session', 'xfwm4' ]
package { $xfce_pkgs:
  ensure => present,
}

group { 'users':
    ensure => 'present',
    gid    => '1000',
}

user { 'someuser':
  ensure           => 'present',
  gid              => '1500',
  home             => '/home/someuser',
  password         => '!!',
  password_max_age => '99999',
  password_min_age => '0',
  shell            => '/bin/bash',
  uid              => '1000',
}
