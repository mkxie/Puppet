node "svm6.llnl.gov" {

file { '/etc/hosts':
    source => "/etc/puppet/manifests/hosts",
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode => "644",}

file { '/etc/resolv.conf':
    source => "/etc/puppet/manifests/resolv.conf",
    ensure => "file",
    owner => "root",
    group => "root",
    mode => "644",}

package { 'git':
    ensure => "latest",}

} #End node svm6.llnl.gov
