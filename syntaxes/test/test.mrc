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
  echo -a ON *:UNBAN:#: $chr(123) msg # Oh, look! $banmask was just removed from the channel banlist. $chr(125)
  echo -a $base(123.456,10,10,6,2)
  echo -a version is $version $+ $iif($beta,. $+ $beta)
  bset -t &var 1 test wavmIRC32WAV test | echo -a space beginning pos1: $bfind(&var,1,32) / space beginning pos11: $bfind(&var,11,32) / finds string '32' instead of chr(32) $bfind(&var,1,32).text / case-sensitive: $bfind(&var, 1, $asc(W) $asc(A) $asc(V) ) / case-insensitive: $bfind(&var,1,WAV).text / case-sensitive: $bfind(&var,1,WAV).textcs / not found: $bfind(&var,1,abc).text
  echo -a $bindip(0) - echo -a $bindip(192.168.1.1).name - $bindip(1).ip - $bindip(1).loopback
  var %n 10 | echo -a $base(%n,10,2,32) | echo -a $str(-,24) $+ 87654321 | echo -a $base($bitoff(%n,2),10,2,32) $base(1000,2,10)
  var %n 10 | echo -a $base(%n,10,2,32) | echo -a $str(-,24) $+ 87654321 | echo -a $base($biton(%n,3),10,2,32) $base(1110,2,10)
  echo -a $bits
  echo -a ON *:BAN:#: $chr(123) if ($bnick) $chr(123) msg # Looks like $bnick has been banned. $chr(125) $chr(125)
  bset -ta &var 1 chlo $+ $chr(232) / $utfencode(chlo $+ $chr(232) )  | echo -a $bvar(&var,1-) // $bvar(&var,1-).text
  echo -a $bytes(317889213,b) - $bytes(10000000000,g).suf
  ; C
  echo -a $calc(3 + 5) - echo -a $calc(3 * 4 * (3 + 5))) - echo -a $calc(10 % 3)
  echo -ag $caller
  echo -a $iif($input(Click cancel to see the result.,nv) == $cancel,Pressed Cancel, Pressed Yes or No)
  echo -a $cb - $cb(0)
  echo -a ON *:SERV:!folder:msg =$nick Current Folder: $cd
  echo -a $ceil(3.14)
  echo -a Channel: $chan - Topic: $chan(%c).topic - Modes: $chan(%c).mode - Key: $iif($chan(%c).key,$v1,No key set)
  echo -a $chanmodes
  echo -a $channel(3).mode
  echo -a $chantypes
  echo -a $chat(1).ip - $chat(1).stamp
  echo -a $chr(63)
  echo -a $cid
  echo -a ON *:TEXT:*:#:echo -a Event level triggered: $clevel
  echo -a $click(@ban,0) - $click(@ban,$click(@ban,0)) used for example in a menu defintion within a picture window
  echo -a $cmdbox
  echo -a $cmdline
  echo -a $cnick(1).color
  echo -a $color(action) - $color(action).dd
  echo -a $com(Locator,ConnectServer,3, dispatch* Services) - $com(Services, InstancesOf,3,string,Win32_Processor,dispatch* Instances) - $com(Instances).result
  echo -a $comcall(WShell, cbthread, Run, 1, bstr*, $mirdirfoo.vbs, int, 1, bool, 1)
  echo -a Total common channels: $comchan(myFriend,0) --- Is opped on $comchan(myFriend,1) $+ : $comchan(myFriend,1).op
  echo -a $comchar
  echo -a $comerr
  echo -a $compact
  echo -a $compress(versions.txt)
  echo -a $bytes($comval(Instances, 1, AdapterRAM)).suf
  echo -a $cos(30).deg is the same as $cos( $calc(30 * $left($pi,8) / 180) )
  echo -a $cosh(30).deg
  echo -a Result: $count(My string to match,str) - Result: $countcs(My string to match,t)
  echo -a $input(The word "will" $+ $cr $+ will be on a newline)
  echo -a abc $crc(abc,0) / ABC $crc(ABC,0)
  echo -a $creq
  echo -a $input(And then the word "suddenly" $+ $crlf $+ suddenly appeared on a new line!)
  echo -a $ctime - $ctime(Thursday 2003-01-09 21:16)
  echo -a The timer name was: $ctimer (timer name that returns is always lowercase)
  echo -a ON *:INPUT:*:echo -a $ctrlenter
  ; D
  echo -a $date - $date(1234567890,yyyy-mm)
  echo -a $day
  echo -a $daylight
  echo -a $dbuh
  echo -a $dbuw
  echo -a $dccignore(0) - $dccignore(*.exe) - $dccignore($dccignore(0))
  echo -a $dccport
  echo -a My other mIRC is $dde(mirc, connected) to $dde(mirc, server)
  echo -a $ddename
  echo -a $iif($debug,$v1,None)
  echo -a $decode(SGVsbG8gV2lraUNoaXAgdXNlciE=,m)
  echo -a $decompress(versions.txt)
  echo -a $deltok(a b,1,32)
  echo -a on *:dialog:*:*:*:echo -a $devent
  echo -a $dialog(0)
  echo -a on *:dialog:*:*:*:echo -a $did $did($did).state
  echo -a $didreg($dname,$did,regexp,N)
  echo -a $didtok($dname,$did,44)
  echo -a $didwm($dname,$did,*.exe,N)
  ; ask SykO about supporting the following syntax:
  ; Old- currently not in msl.tmLanguage.json-but still supported by mIRC!
  echo -a $dir='select dir' c:\
  ; New
  echo -a $sdir($mircdir,"choose a folder!,Ok!)
  echo -a $disk(0)
  echo -a Default user level: $dlevel
  echo -a $dll(name.dll,procname,data)
  echo -a $dllcall(name.dll,alias,procname,data)
  echo -a ON *DIALOG:*:init:0:echo -a $dname
  echo -a ON *:DNS:echo -a $iif($1,$iif($dns(1).nick,$v1 has been resolved to) Hostmask: $dns(1).addr IP: $dns(1).ip,Could not resolve DNS query.)
  echo -a $iif($dqwindow & 1,enabled,not enabled)
  echo -a $duration(38711810) - echo -a $duration(64wks 1hr 16mins 50secs)
  ; E
  echo -a $ebeeps
  echo -a $editbox(Status Window) - Selection start: $editbox(Status Window).selstart --- Selection end: $editbox(Status Window).selend
  echo -a $email
  echo -a $emailaddr
  echo -a $encode(Hello there! This will be encoded using Mime.,m)
  echo -a There are $envvar(0) environment variables, on the $envvar(username) account
  echo -a $error
  var %prefix_ $+ $me value | echo -a $eval($+(%,prefix_,$me),2)
  echo -a $evalnext($!me)
  echo -a ON *:TEXT:*:#:echo -a Event triggered: $event
  echo -a $eventid
  echo -a $exists(mirc.ini)
  echo -a ON *:EXIT:echo -a mIRC is $iif($exiting,$iif($exiting == 1,exiting,restarting),not exiting)
  ; F
  echo -a $iif($isfile($mircexee) == $false,false,true)
  echo -a $feof
  echo -a $ferr
  echo -a $fgetc(1)
  echo -a $file($mircini).ctime
  echo -a ON *:FILERCVD:*:echo -a Received filename: $filename $iif($nick,from $nick - ,from) Address: $address
  echo -a previous filter result shows zero $filtered | filter -fk versions.txt noop */* - mirc * | echo -a filter found $filtered matching lines in versions.txt
  echo -a $finddir($mircdir,script*,0)
  echo -a $finddir($mircdir,*,0,0,echo -a $finddirn : $1-)
  echo -a Versions.txt $iif($findfile($mircdir,versions.txt,1,1),is,isn't) in the same folder as $nopath($mircini)
  echo -a $findfile($mircdir,*,0,0,echo -a $findfilen : $1-)
  echo -a $findtok(one two three, two, 32) - $findtokcs(one two three twO, twO, 32)
  echo -a echo -a $fline($chan(1),*mirc*) $flinen
  echo -a $floor(9.318)
  echo -a $font(0)
  fopen test $qt($mircini) | echo -a > $fread(test) $fopen(test).pos | fclose test
  echo -a $fromeditbox
  echo -a $fserv(0) - $fserv(1).cd - $fserve(0) - $fserve(1).cd
  echo -a on *:text:*:#:echo -a $fulladdress
  echo -a $fulldate
  echo -a $fullname
  echo -a $fullscreen
  ; G
  echo -a $get(0) - echo -a $get(3).pc
  echo -a on *:FILESENT:*:if ($getdir($filename) == $nofile($filename)) echo -a Note: $filename was sent from the DCC GET folder for that filename.
  echo -a $getdot(@picwin,X,Y)
  echo -a $gettok(a-b-c-d-e,2,45) - The current month is $gettok($asctime,2,32)
  echo -a $gmt($ctime) is the same as $asctime($calc($ctime + $timezone  ) ) - $gmt is same as $calc( $ctime + $timezone )
  echo -a $group(0)
  ; H
  echo -a $halted
  echo -a The hash is $hash(test,32)
  echo -a $height(test,verdana,15)
  ; $hfile --> $sfile
  hadd -m test test test | echo -a $hfind(test,test,1) | hfree test
  hadd -m test test test | echo -a $hget(test,test) | hfree test
  echo -a $highlight - $highlight(0)
  echo -a $hmac(message 1,key,sha1,0)
  hadd -m test test ok | echo -a $hmatch(test,*es*,0) | hfree test
  echo -a ON *:HELP:#:echo -a $hnick
  echo -a $host
  ; 2 line scenario below
  echo -a ON ^*:HOTLINK:*hoverme*:*:if ($1 == hoverme) return | halt
  echo -a ON *:HOTLINK:*hoverme*:*:echo -a Hotlink: $1 - Hotlink line: $hotline
  ; $hotlinepos --> $hotlink(word).pos $hotlink(line).pos
  echo -a $hotlinepos
  echo -a on *:HOTLINK:*:*:echo -a $hotlink(match)
  echo -a $hotp($str(z,65),0,sha512,9) should be 187092660
  ; $hregex --> $hfind
  hadd -m test testkey testvalue | echo -a key: $hregex(test,/.*(es).*/,1) | hfree test
  var %a 3 | var %b 4 | echo -a $hypot(%a,%b) is the same as $sqrt( $calc( %a ^2 + %b ^2 ) )
  : I
  echo -a on *:dns:echo -a $iaddress
  echo -a IAL is: $ial - $ial(*,0)
  echo -a $ialchan(*,$chan,0)
  echo -a $ibl(#,0)
  echo -a $idle
  echo -a $iel(#,0)
  if (a != b) echo -a $ifmatch - $ifmatch2
  echo -a Ignore is: $ignore - $ignore(0)
  echo -a $iif(0,$custom1(true1),$custom2(false2)) / $v1 $v2
  echo -a $iil(#,0)
  echo -a $inellipse(50,50,10,10,100,100)
  echo -a $ini($mircini,0) - $initopic($mircini,0)
  echo -a $inmidi
  echo -a mIRC is currently listing bans for $chan(1): $iif($chan(1).banlist == $inmode,yes,no)
  echo -a $inmp3
  echo -a on *:INPUT:*:echo -a $!inpaste: $inpaste
  echo -a $inpoly(%x,%y,%a1,%a2,%b1,%b2,%c1,%c2)
  echo -a $input(Type something for me,e)
  echo -a $inrect(50,50,10,10,100,100)
  echo -a $inroundrect(50,50,10,10,100,100,5,5)
  echo -a $insong
  echo -a $instok(one two three, four,4, 32)
  echo -a $int(1.9)
  echo -a $intersect(%x,%y,%x1,%y1,%x2,%y2,%x3,%y3,rr)
  echo -a $inwave - $inwave.length
  echo -a Currently handling a who reply for chan $chan(1): $iif($chan(1).inwho == $inwho,yes,no)
  echo -a $ip
  echo -a $iptype(5.6.7.8)
  echo -a $iql(#,0)
  echo -a $isadmin
  echo -a $isalias(join)
  echo -a $base(5,10,2) $isbit(5,2)
  echo -a $isdde(mIRC)
  echo -a $isdir($mircdir) - $isdir($mircdirtest)
  echo -a $isfile($mircexe) - $isfile($mircdirtest.txt)
  echo -a $isid
  echo -a $islower(abcdefg) - $islower(abcdefG)
  echo -a $istok(CONNECT JOIN,$event,32)
  echo -a $istokcs(hello HELLO hEllO,hEllO,32) - $istokcs(hello HELLO HELLo,helLO,32)
  echo -a $isupper(ABCDEFG) - $isupper(ABCDEFg)
  echo -a $isutf(é) $isutf($utfencode(é)) $isutf(plain)
}
#group end