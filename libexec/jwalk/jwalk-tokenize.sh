#!/bin/sh

sed -e $'
  s/\\\\"/\t/g
  s/"[^"]*"/\\\n&\\\n/g
' |

sed -e $'
  /".*"$/ !{
    s/[][,:}{}]/\\\n&\\\n/g
  }
  s/\t/\\\\"/g
' |

sed -e $'
  s/^[ \t]*//
  /^$/d
'