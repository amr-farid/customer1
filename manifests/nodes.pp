node  /^tc-\d+$/ {
  file  {'/tmp/hello' :
     content  =>  "Hello, Ya Man  \n",
  }
}
