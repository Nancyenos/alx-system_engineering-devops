# Manifest file: kill_process.pp

exec { 'killmenow_process':
  command     => 'pkill killmenow',
  path        => '/usr/bin',
  provider => 'shell',
}

