class solr::config4drupal {
  require solr

  file { '/etc/solr/conf/schema.xml':
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/solr/drupal/solr-3.x/schema.xml",
    notify  => Service['tomcat6'],
  }
  
  file { '/etc/solr/conf/solrconfig.xml':
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/solr/drupal/solr-3.x/solrconfig.xml",
    notify  => Service['tomcat6'],
  }
  
  file { '/etc/solr/conf/protwords.txt':
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/solr/drupal/solr-3.x/protwords.txt",
    notify  => Service['tomcat6'],
  }
  
}