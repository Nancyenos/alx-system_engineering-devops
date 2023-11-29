# Manifest file: kill_process.pp

exec { 'killmenow_process':
  command     => 'pkill -f killmenow',
  path        => '/bin:/usr/bin',
  refreshonly => true,
}

# Ensure the process is initially started (optional)
exec { 'start_killmenow_process':
  command     => '/path/to/your/killmenow_script',  # Replace with the actual path
  path        => '/bin:/usr/bin',
  creates     => '/path/to/your/killmenow_script',  # Replace with the actual path
  before      => Exec['killmenow_process'],
}

