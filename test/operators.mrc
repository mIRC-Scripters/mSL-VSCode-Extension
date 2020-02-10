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

alias testing {
  if (v1 == v2) noop
  elseif (v1 < v2) noop
  elseif (v1 > v2) noop
  elseif (v1 <= v2) noop
  elseif (v1 >= v2) noop
  elseif (v1 // v2) noop
  elseif (v1 \\ v2) noop
  elseif (v1 & v2) noop
  elseif (v1 isin v2) noop
  elseif (v1 isincs v2) noop
  elseif (v1 iswm v2) noop
  elseif (v1 iswmcs v2) noop
  elseif (v1 isnum v2) noop
  elseif (v1 isletter v2) noop
  elseif (v1 isalnum v2) noop
  elseif (v1 isalpha v2) noop
  elseif (v1 islower v2) noop
  elseif (v1 isupper v2) noop
  elseif (v1 === v2) noop
  elseif (v1 ison v2) noop
  elseif (v1 isop v2) noop
  elseif (v1 ishop v2) noop
  elseif (v1 isvoice v2) noop
  elseif (v1 isreg v2) noop
  elseif (v1 ischan v2) noop
  elseif (v1 isban v2) noop
  elseif (v1 isquiet v2) noop
  elseif (v1 isaop v2) noop
  elseif (v1 isavoice v2) noop
  elseif (v1 isignore v2) noop
  elseif (v1 isprotected v2) noop
  elseif (v1 isnotify v2) noop
  elseif (v1 isadmin v2) noop
  elseif (v1 isowner v2) noop
  elseif (v1 isquiet v2) noop
  elseif (v1 isurl v2) noop
  elseif (!%var) noop
  elseif (!v1 == v2) noop
  elseif (!$true) noop
  elseif (!&test) noop
}