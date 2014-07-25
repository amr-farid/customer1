node  'tc-31' { 
  file  {'/tmp/hello' : 
     content =>  "Hello,  World\n",
  }
}
