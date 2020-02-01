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

}
#group end