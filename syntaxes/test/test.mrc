/**
*
* Documentation comment block.
*
* @author Kedyn Macedonio
* @version 0.1.0
*
*/

/*

Normal multi-line comment block.

*/

; Simple single line comment.

; Mixed single line comment.

#group on

alias test
alias -l test
alias test {
  if () noop
  elseif () noop
  else noop
  while () noop

  %test
  &test
}

alias identifiers {
  ; the following examples were taken from: https://en.wikichip.org/wiki/mirc/identifiers
  ; A
  echo -a $0
  echo -a $1foo2bar vs $1 $+ foo123bar and $1$2 vs $1 $+ $2 and $3test and $1-x2 but $5test is null
  echo -a $!
  echo -a This is a really long$&
    line that is broken up because $&
    mIRC supports it! The cool thing is $&
    that mIRC will also format these $&
    indentations within the script editor!
  echo -a $*
  echo -a A $+ B $++ C
  echo -a $?="Type something for me"
  echo -a $?*="Enter Password:"
  echo -a $?!="Do you like chocolate?"
  echo -a $?3
  echo -a $+(%x, %y, $day)
  echo -a $abook(*,0) - $abook(*,1).picture
  echo -a $abs(-7)
  echo -a %i degrees / cosine $cos(%i).deg / acos $acos( $cos(%i).deg ).deg
  echo -a $active $activecid $activewid
  echo -a Today in mm/dd/yyyy format is $adate - today in dd/mm/yyyy format is $date - $date(1234567890,yyyy-mm)
  echo -a $address - $address(nick,2)
  echo -a $addtok(a,b,32) - $addtokcs(A,a,32)
  echo -a $agent(0) - $agentname - $agentstat - $agentver
  echo -a $alias(myfile.mrc)
  echo -a $and(14,27)
  echo -a $anick
  echo -ga $ansi2mirc(this is probably $chr(27) $+ [32mgreen $+ $chr(27) $+ [0m.)
  echo -a $aop - $aop(0) - $aop(*testhost.com).network
  echo -a $appactive - $appstate
  echo -a A is $asc(A) and a is $asc(a)
  echo -a $asctime
  echo -a $asin(5) - $sin(5)
  echo -a In right triangle where opposite side is 3 and adjacent is 4, angle is $atan( $calc(3/4) ).deg degrees
  echo -a $tan(30).deg is the same as $tan( $calc(30 * $pi / 180) ) except for rounding
  echo -a $auto
  echo -a $avoice - $avoice(0) - $avoice(*testhost.com).network
  echo -a $away
  echo -a $awaymsg
  echo -a $awaytime
  ; B
  echo -a $banlist(#,0) - $banlist(#,1).by - $banlist(#,1).date - $banlist(#,1).ctime
  echo -a $banmask returns the current user banmask in either an on ban or on unban event
  echo -a $base(123.456,10,10,6,2)
  echo -a version is $version $+ $iif($beta,. $+ $beta)
  bset -t &var 1 test wavmIRC32WAV test | echo -a space beginning pos1: $bfind(&var,1,32) / space beginning pos11: $bfind(&var,11,32) / finds string '32' instead of chr(32) $bfind(&var,1,32).text / case-sensitive: $bfind(&var, 1, $asc(W) $asc(A) $asc(V) ) / case-insensitive: $bfind(&var,1,WAV).text / case-sensitive: $bfind(&var,1,WAV).textcs / not found: $bfind(&var,1,abc).text
  echo -a $bindip(0) - echo -a $bindip(192.168.1.1).name - $bindip(1).ip - $bindip(1).loopback
  var %n 10 | echo -a $base(%n,10,2,32) | echo -a $str(-,24) $+ 87654321 | echo -a $base($bitoff(%n,2),10,2,32) $base(1000,2,10)
  var %n 10 | echo -a $base(%n,10,2,32) | echo -a $str(-,24) $+ 87654321 | echo -a $base($biton(%n,3),10,2,32) $base(1110,2,10)
  echo -a $bits
  echo -a $bnick returns the current nick in either an on ban or on unban event
  bset -ta &var 1 chlo $+ $chr(232) / $utfencode(chlo $+ $chr(232) )  | echo -a $bvar(&var,1-) // $bvar(&var,1-).text
  echo -a $bytes(317889213,b) - $bytes(10000000000,g).suf

}
#group end