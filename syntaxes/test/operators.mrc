alias example {
  var %x = 5
  ;5 * 5 = 25
  %x = %x * 5
  echo -a %x
 
  ;remainder of 25 / 9 = 7
  var %y = %x % 9
  echo -a %y
 
  ;25 + 7 - 2 = 30
  %x = $calc(%x + %y - 2)
  echo -a %x
}

alias example2 {
  ;true (3 a multiple of 9)
  if (3 // 9) echo yes!
  ;false
  if (4 < 4) echo no
  ;00001010 = 10
  ;00000100 = 4
  ;00000000 = 0
  ;true, we used the '!' to negate the operator
  if (10 !& 4) echo yes
}
alias example3 {
  var %x = Hello!
  if (?ell?? iswm %x) echo true
  ;false, because of '!'
  if (%x isalpha) echo no
  %x = 5
  if (%x isnum 1-10) echo true
  if (%x isnum)  echo true
}

alias example4 {
  ;am I on #mIRC
  if (#mIRC ischan) echo yes
  ;is that ban on #mSL's internal ban list?
  if (*!*@example.com isban #offTopic) echo yes
  ;am I an OP on #mIRC?
  if ($me isop #mIRC) echo yes
}

Alias example5 {
  ;is the host in the auto-op list
  if (dave101!*@* isaop) echo yes
 
  ;assume we have ignore all ctcps: /ignore -tw *!*@*
  ;check if *!*@* in the ignore list for CTCPs:
  if (*!*@* isignore ctcp) echo yes
}