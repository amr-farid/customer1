node  /^tc-\d+$/ {
  file  {'/tmp/hello' :
     source  =>  "puppet:///modules/puppet/papply.sh",
  }
}

