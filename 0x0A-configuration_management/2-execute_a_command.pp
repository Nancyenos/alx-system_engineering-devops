# Manifest file: kill_process.pp

exec { 'killmenow_process':
  command  => 'pkill -f killmenow',
  path     => '/bin:/usr/bin',
  provider => 'shell',
}
