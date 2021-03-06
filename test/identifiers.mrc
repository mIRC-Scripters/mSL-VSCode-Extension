alias identifiers {
  ; the following examples were taken from: https://en.wikichip.org/wiki/mirc/identifiers
  ; A
  echo -a $0
  echo -a $1foo2bar vs $1 $+ foo123bar and $1$2 vs $1 $+ $2 and $3test and $1-x2 but $5test is null
  echo -a $!
  echo -a This is a really long $&
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
  ; ADIIRC 'A' IDENTIFIERS
  echo -a on *:ADMIN:*:echo -ag The nick opped is $admnick
  echo -ag $adiircdir\Scripts
  echo -a $adiircexe
  echo -a $adiircini
  echo -a Translation for 'Commands' is $adilang(Commands)
  echo -a $album
  echo -a $appbits
  echo -a $artist
  echo -a $audio
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
  ; ADIIRC 'B' IDENTIFIERS
  echo -a True if running on battery: $battery - If running on bettery, returns percentage left otherwise 100: $batteryp
  echo -a Returns the bitrate of the currently playing song: $bitrate
  echo -a Returns the toolbar button name during a menu event: $bname
  echo -a Returns true if 'Make certain part of messages bold' is enabled: $boldify - $boldify(I am bold)
  echo -a Returns the date the AdiIRC version was built in YYYY/MM/DD format: $builddate
  echo -a Returns current download bandwidth speed in human readable format on selected network adapter: $bwdown
  echo -a Returns current download bandwidth speed in bytes on selected network adapter: $bwdownb
  echo -a Return network adapter name of the network adapter to monitor bandwidth, if no network adapter is defined, returns $null : $bwname
  echo -a Returns numbers of bytes received in human readable format on selected network adapter: $bwrec
  echo -a Returns numbers of bytes received in byte format on selected network adapter: $bwrecb
  echo -a Returns numbers of bytes sent in human readable format on selected network adapter: $bwsent
  echo -a Returns numbers of bytes sent in byte format on selected network adapter: $bwsentb
  echo -a Returns the connection (LAN) speed on selected network adapter: $bwspeed
  echo -a Returns current upload bandwidth speed in human readable format on selected network adapter: $bwup
  echo -a Returns current upload bandwidth speed in bytes on selected network adapter: $bwupb
  ; C
  echo -a $calc(3 + 5)
  echo -a $calc(3 * 4 * (3 + 5)))
  echo -a $calc(10 % 3)
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
  echo -a $comcall(WShell, cbthread, Run, 1, bstr*, $mircdirfoo.vbs, int, 1, bool, 1)
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
  ; ADIIRC 'C' IDENTIFIERS
  echo -a Accurate result for extremely large integers: $calcint( ((2 ^ 256) - 1) * ((2 ^ 256) +1) )
  echo -a Returns the calling alias for the current script: $calias - $calias(2).fname
  echo -a Returns the comment field of the currently playing song: $comment
  echo -a Returns cpu cache in bytes for 1 core: $cpucache
  echo -a Returns numbers of cpu's and cores: $cpucount
  echo -a Returns cpu identifier: $cpuident
  echo -a Returns current cpu load in percentage: $cpuload - the current load for the 3rd core is $cpuload(3)
  echo -a Returns cpu frequency in megahertz: $cpumhz
  echo -a Returns cpu name: $cpuname
  echo -a Returns cpu vendor identifier: $cpuvendor
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
  echo -a $dir="select dir" c:\
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
  ; ADIIRC 'D' IDENTIFIERS
  echo -a $decrypt(%text, test) - deprecated
  echo -a Returns total free disk space from all drives in human readable format: $diskfree
  echo -a Used to generate disk menu. Returns Driveletter (Diskname) freespace/totalspace:/diskinfo driveletter - $diskmenu(1) - returns number of disks : $diskmenu(0) - deprecated
  echo -a Returns total disk space from all drives in human readable format: $disktotal
  echo -a Returns main window docked status. (Left/Right/Top/Bottom/None): $dock
  echo -a Returns $true if any dockpanel is visible except Treebar, otherwise $false : $dockpanels
  echo -a Higlight is $iif($dockpanels(Highlight), Visible, Hidden)
  echo -a Returns the .NET (dotnet) version AdiIRC is currently running on: $dotnet
  echo -a Returns the download name during a on DOWNLOAD event: $download - Number of downloads: $download(*,0)
  echo -a on *:DOWNLOAD:*:echo -ag Download of $download($download).url was $iif($downloaderr,not ok,ok)
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
  ; ADIIRC 'E' IDENTIFIERS
  echo -a Print number of Editbox history items for the active window: $editboxhistory($active, 0)
  echo -a Print number of emoticons: echo -ag $emoticons(0) - Hello $iif($emoticons(Hello), is, is not) an emoticon.
  echo -a Generates encoding menu. Returns encodingname:/encoding encodingnumber: $encodingmenu(0) - $encodingmenu(1)
  var %text $encrypt(Hello World, test) | echo -a Is deprecated in favor of the blowfish plugin...
  if ($eventtarget(join, #) == 1) echo -s $nick joins #
  var %output = $exec(cmd.exe, h, /c dir $qt($adiircdir))
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
  ; ADIIRC 'F' IDENTIFIERS
  echo -a Returns the mpeg frequency of the currently playing song: $frequency
  echo -a Returns the full title of the currently playing song, usually in $artist - $title format: $fulltitle
  ; G
  echo -a $get(0) - echo -a $get(3).pc
  echo -a on *:FILESENT:*:if ($getdir($filename) == $nofile($filename)) echo -a Note: $filename was sent from the DCC GET folder for that filename.
  echo -a $getdot(@picwin,X,Y)
  echo -a $gettok(a-b-c-d-e,2,45) - The current month is $gettok($asctime,2,32)
  echo -a $gmt($ctime) is the same as $asctime($calc($ctime + $timezone  ) ) - $gmt is same as $calc( $ctime + $timezone )
  echo -a $group(0)
  ; ADIIRC 'G' IDENTIFIERS
  echo -a Returns the genre of the currently playing song: $genre
  echo -a Returns the name of the first graphics card found: $gfx - Returns the name of the 2nd graphics card found: $gfx(2)
  echo -a Returns the amount of vram in megabytes from the first graphics card found: $gfxram - Returns the amount of vram in megabytes from the 2nd graphics card found: $gfxram(2)
  echo -a Returns your current idle time on all connections in seconds: $globalidle
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
  ; ADIIRC 'H' IDENTIFIERS
  echo -a Converts a hex color into $rgb decimal format: echo -ag $hexcolor(FF0000) - returns in rrr,ggg,bbb value: $hexcolor(FF0000).rgb
  ; I
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
  echo -a $inmidi - $inmidi.length - $inmidi.fname - $inmidi.pos - $inmidi.pause
  echo -a mIRC is currently listing bans for $chan(1): $iif($chan(1).banlist == $inmode,yes,no)
  echo -a $inmp3
  echo -a on *:INPUT:*:echo -a $!inpaste: $inpaste
  echo -a $inpoly(%x,%y,%a1,%a2,%b1,%b2,%c1,%c2)
  echo -a $input(Type something for me,e)
  echo -a $inrect(50,50,10,10,100,100)
  echo -a $inroundrect(50,50,10,10,100,100,5,5)
  echo -a $insong - $insong.length - $insong.fname - $insong.pos - $insong.pause
  echo -a $instok(one two three, four,4, 32)
  echo -a $int(1.9)
  echo -a $intersect(%x,%y,%x1,%y1,%x2,%y2,%x3,%y3,rr)
  echo -a $inwave - $inwave.length - $inwave.fname - $inwave.pos - $inwave.pause
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
  ; ADIIRC 'I' IDENTIFIERS
  echo -a on *:TEXT:*:*:echo -ag The ident of the user is $ident
  echo -a $inick(0)
  echo -a Insert 'wo' at position 6: $insert(hello rld, wo, 6)
  echo -a Used to generate invite menu. Returns 'Invite nick to channel:/invite nick channel' $invitemenu(N)
  echo -a There are $ircv3caps(0) caps available, the first one is $ircv3caps(1) and $iif($ircv3caps(1).enabled, it's, it's not) enabled
  echo -a Program $iif($iswine,is,is not) running in Wine.
  ; K
  echo -a on *:KEYDOWN:@:*:echo User pressed key $keyval , keychar $keychar in $active (key repeating: $keyrpt $+ )
  echo a- on *:KICK:#:.notice $knick You were kicked from $chan by $nick for the following reason: $iif($1-,$1-,No reason given)
  ; ADIIRC 'K' IDENTIFIERS
  echo -a $kblayout
  echo -a Caps lock is $iif($keylocked(CapsLock), on, off)
  ; L
  echo -a on *:ACTIVE:*:echo -a * Active window is now $active $+ . Previous active window was $lactive
  echo -a $lactivecid - $lactivewid
  echo -a $left(abcdefg, 4) - $left(abcdefg, -3)
  echo -a $leftwin - $leftwincid - $leftwinwid
  echo -a $len(ONE)
  echo -a $level(*!*@mirc.com)
  echo -a $!lf is the same as $!chr(10) : $iif($lf == $chr(10),yes,no)
  echo -a $line($chan(1),1)
  echo -a $lines(versions.txt)
  echo -a $link(0)
  echo -a $lock(tray)
  echo -a $locked
  echo -a $lof($mircexe)
  echo -a $log(50) - $log10(50)
  echo -a $logdir
  echo -a $logstamp - $logstampfmt
  echo -a $shortfn($mircdir) -> $longfn($shortfn($mircdir))
  echo -a $longip(158.152.50.239) - $longip(2660774639)
  echo -a $lower(testÕ)
  timer $+ $rand(11111,99999) 1 1 noop | echo -a $ltimer
  ; ADIIRC 'L' IDENTIFIERS
  echo -a Returns connection lag to current active IRC server in milliseconds: $lag
  echo -a Returns the last quit message sent to the associated server: $lquitmsg
  echo -a Returns the mpeg layer of the currently playing song: $layer
  echo -a Returns the length of the currently playing song in XX:XX format: $length
  echo -a Lineheight for Consolas 10 is $lineheight(Consolas, 10)
  echo -a Return a list of all nicks in the channel: $loop(1, $nick(#, 0), $nick(#, \1))
  ; M
  echo -a on *:text:*:#:echo -a $maddress - $maddress(*,1)
  echo -a $mask(nick!user@host,7)
  echo -a on *:text:*:#:echo -a $matchkey
  echo -a $matchtok(one two three, e, 0, 32) - $matchtok(one two three, e, 2, 32)
  echo -a $matchtokcs(one two thrEe, E, 0, 32) - $matchtokcs(one Two Three, T, 2, 32)
  echo -a $maxlenl - $maxlenm - $maxlens
  echo -a $md5($mircexe,2)
  echo -a $me
  echo -a Used in a menu definition e.g. menu nicklist,channel --> $iif($menu == nicklist,...)
  echo -a $menubar
  echo -a Used in a menu definition e.g. menu nicklist,channel --> $iif($menu == channel && $menucontext == treebar,...)
  echo -a Used in a menu definition e.g. menu nicklist,channel,@win,@other --> $iif($menutype == custom,$iif($menu == @other,stuff,otherstuff))
  echo -a $mid(abcdefghij,2,3) - $mid(abcdefghij,2) - $mid(abcdefghij,-6,2) - $mid(abcdefghij,3,-2) - $mid(abcdefghij,3,0)
  echo -a $mididir
  echo -a $mircdir
  echo -a $mircexe
  echo -a $mircini
  var %i 33 | var %f | while (%i isnum 33-126) { var %f %f $+ $chr(%i) | inc %i } | echo -a orig: %f | echo -a mkfn: $mkfn(%f)
  var %i 33 | var %f | while (%i isnum 33-126) { var %f %f $+ $chr(%i) | inc %i } | echo -a orig: %f | echo -a mklogfn: $mklogfn(%f)
  var %i 33 | var %f | while (%i isnum 33-126) { var %f %f $+ $chr(%i) | inc %i } | echo -a orig: %f | echo -a mknk: $mknickfn(%f)
  echo -a $mnick
  echo -a on *:op:#:echo -a $mode(0)
  echo -a on *:op:#:echo -a $modefirst - $modelast
  echo -a $modespl
  echo -a $mp3($insong.fname).artist
  echo -a $mp3dir
  echo -a $msfile( $sysdir(profile)  ) / $sfstate / $msfile(0) / $msfile(1)
  echo -a $asctime($msgstamp, "[HH:nn:ss]") $text
  echo -a $msgtags(0)
  ; ADIIRC 'M' IDENTIFIERS
  echo -a Returns free ram in megabytes format: $memfree
  echo -a Returns free ram in percentage format: $memfreep
  echo -a Returns total amount of installed ram in megabytes format: $memtotal
  echo -a Adds a icon to a menu item: $menuicon($adiircexe,1)
  echo -a Returns the motherboard manufacturer and version name: $motherboard
  echo -a Returns $1- in a consecutive spaced line. Same as $parms : $msgx
  echo -a Returns $true if event sounds are muted from /mute otherwise $false : $muted
  echo -a Returns the mpeg version of the currently playing song: $mversion
  ; N
  echo -a on *:dns: echo -a $naddress
  echo -a Nick in on event: $nick - Total users: $iif($active ischan,$nick(#,0))
  echo -a $nickmode
  echo -a You clicked: $iif($input(Click no to see the result.,yv) == $no,no,yes)
  echo -a $network
  echo -a $nofile($mircexe) - $nopath($mircexe)
  echo -a $nopnick($chan,1) - $nhnick($chan,1) - 
  echo -a ON ME:^*:NICK:echo $chan You are now ==> $newnick | haltdef
  var %ini $qt($mircini) echo -a %ini | echo -a $noqt(%ini)
  var %n 5 | echo -a $not(%n) $base($not(%n),10,16) - 4294967290 FFFFFFFA
  echo -a $notags(te\spd=5\st)
  echo -a = $+ $nick equals =$nick in on chat events
  echo -a Notify is turned $iif($notify,on,off) - $notify(0)
  if ($? != $null) echo -a you entered $v1
  echo -a raw *:*:echo -a $numeric
  echo -a $numtok(a-b-c-d-e,45) - $numtok(x1xxxx2x3x4x,120) - $numtok(1x2X3x4,120)
  echo -a $nvnick($chan,1)
  ; ADIIRC 'N' IDENTIFIERS
  echo -a There is $nadmnick(#,0) non admin users - First non admin nick is $nadmnick(#,1)
  echo -a Returns $true if Nickcolumn is enabled, otherwise $false - $nickcolumn
  echo -a There is $nonick(#,0) non owner users - First non owner nick is $nonick(#,1)
  ; O
  echo -a You clicked: $iif($input(Click ok to see the result.,ov) == $ok,ok)
  echo -a $online - $onlineserver - $onlinetotal
  echo -a $onpoly(%n1,%n2,%x1,%y1,%xN1,%yN1,%x2,%y2,%xN2,%yN2)
  echo -a ON *:OP:#:echo -a $opnick
  echo -a $or(14,27) - 31
  echo -a $ord(3)
  echo -a $os
  ; ADIIRC 'O' IDENTIFIERS
  echo -a Returns the Nth color index of the internal color list as a $rgb value: Get the Editbox color: Editbox color is $ocolor(30).rgb
  echo -a on *:OWNER:*:echo -ag The nick opped is $onick - There is $onick(#,0) owner users
  echo -a Returns "32" on 32 bit windows, and "64" on 64 bit version of windows: $osbits
  echo -a Returns the windows build number: $osbuild
  echo -a Returns the windows edition: $osedition
  echo -a Returns number of seconds since last keystroke or mouse movement: $osidle
  echo -a Returns the date windows was installed in unix timestamp format: $osinstalldate
  echo -a Returns the major windows version number: $osmajor
  echo -a Returns the minor windows version number: $osminor
  echo -a Returns the name of the windows version. (Windows 7, Windows 8 etc): $osname
  echo -a Returns the windows service pack version: $osservicepack
  echo -a Returns the version number of the operating system: $osversion
  ; P
  echo -a $len($1-) -- $len($parms)
  echo -a on *:parseline:*:*:echo -a $parseline - $parsetype - $parseutf
  echo -a $pi
  echo -a $pic(C:\K.png)
  echo -a $play(0)
  echo -a $pnick
  echo -a $portable
  echo -a $portfree(6667)
  echo -a The path-less filename is $mid($mircexe, $calc(1 + $pos($mircexe,\, $count($mircexe,\) ) ) )
  echo -a $poscs(DEADBEEF,E,0)
  echo -a $prefix
  echo -a $prop
  echo -a $protect
  echo -a $puttok(a-b-c-d-e-f,TEST,3,46)) - a-b-TEST-d-e-f
  ; ADIIRC 'P' IDENTIFIERS
  echo -a Returns $true if $regex() supports pcre and if it's enabled and the proper visual c++ libraries are installed, otherwise $false : $pcre
  echo -a Returns the percent left of the currently playing song: $percentl
  echo -a Returns the percent played of the currently playing song: $percentp
  echo -a Returns the play counter of the currently playing song: $playcount
  echo -a Returns the current selected media player: $player
  echo -a Returns the window handle to the current running media player: $playerhandle
  echo -a Returns information about running plugins: $plugins(0) - $plugins(1).name
  echo -a Returns the playlist position of the currently playing song: $position
  echo -a $powmod(2,111,1907) same as $calcint( (2^111) % 1907)
  echo -a Returns the CTCP message prefix format from Options -> Messages -> Prefix Ctcp: $prefixctcp
  echo -a Returns the emote message prefix format from Options -> Messages -> Prefix Emote: $prefixemote - $prefixemote(#,$me)
  echo -a Returns the system message prefix format from Options -> Messages -> Prefix System: $prefixsys
  echo -a Returns the user message prefix format from Options -> Messages -> Prefix User: $prefixuser - $prefixuser(#,$me)
  echo -a Returns a text progress bar (**---) of the currently playing song: $progress
  ; Q
  var %ini $qt($mircini) | echo -a %ini | echo -a $qt(%ini)
  echo -a $query(0)
  ; ADIIRC 'Q' IDENTIFIERS
  echo -a Returns a random quit message if enabled, otherwise the default quit message: $quitmessage
  echo -a Returns $true if the quick connect dialog is shown on start up, otherwise $false : $quickconnect
  ; R
  echo -a Do I wish to answer that? $iif(1 == $rand(0,1),yes,no - random upper case from A through Z: $r(A,Z)
  var %i 999999 , %t $ticks | while (%i) { noop $rands(0,999999999) | dec %i } | echo -a ms: $calc($ticks - %t)
  echo -a on *:dns:echo -a $raddress $!raddress has been replaced by $!dns().addr
  echo -a on *:text:*:#:echo -a RAWBYTES: $rawbytes - RAWMSG: $rawmsg
  echo -a $read(versions.txt,nt,3)
  echo -a $readini($mircini,n,chanfolder,n0)
  noop $read($mircini,tnw,*mirc*) | echo -a $readn
  echo -a $regex($str(a,2700),/(?<=a*)/) $regerrstr
  echo -a $regex(test,%test)
  echo -a $regex(abcd,/[a-z]/g) $regex(test,This is a test message,/(is|es)/g) $regml(test,0) - $regmlex(test,4,1)
  var %a | echo -a $regsub(abcd,/[a-z]/g,1,%a)
  var %a | echo -a $regsubex(abcd,/([a-z])/g,-\n \1-)
  if ($remote & 1) echo -a ctcps are enabled
  if ($remote & 2) echo -a events are enabled
  if ($remote & 4) echo -a raws are enabled
  echo -a $remove($getdir,$mircdir) - $remove(aAabcdaaA,a) - $removecs(aAabcdaaA,a)
  echo -a $remtok(one two three, two, 32) - one three - $remtokcs(one two three twO, twO, 32) - one two three
  echo -a $replace(Abcdabcd, a,b, a,c ) - bbcdbbcd - $replacex(1234, 1,2, 2,3, 3,4 ) - 2344
  echo -a $replacex(abc,ab,c,cc,d) vs $replace(abc,ab,c,cc,d)
  echo -a $reptok(one two three, two, four, 32) - one four three
  echo -a $reptokcs(one two three twO, twO, four, 32) - one two three four
  echo -a $result
  echo -a The RGB color number for #7 (olive) is $color(7) with R,G,B values $rgb($color(7))
  echo -a $right(abcdefg, 4) - defg
  echo -a $rnick($chan,0)
  echo -a $round(4.98472,3)
  ; ADIIRC 'R' IDENTIFIERS
  echo -a Returns random colors option as bitflag: 0 = Off, 1 = Message, 2 = Nicklist - Random colors $iif($randomcolors & 1, is, is not) enabled for messages!
  echo -a Returns the track rating (**---) of the currently playing song: $rating
  echo -a Returns raw server line for events: $rawmsgx (Same as $rawmsg but as consecutive spaced line.)
  echo -a Returns your "Real Name" on the current active connection: $realname 
  ; S
  echo -a This returns $true $samepath( $mircexe , $nopath($mircexe) )
  echo -a $scid(0)
  echo -a $scon(0)
  echo -a This is script: $script and scripts loaded: $script(0)
  echo -a $scriptdir - $scriptline - $scriptdirTEMP\hashtable.hsh - $custom($scriptdirTEMP\test.txt) - $custom2($scriptdirTEMP\test.txt,%var)
  echo -a $sdir($mircdir,"choose a folder!,Ok!)
  echo -a $sdir="select dir" c:\
  echo -a $send(0) - $send(2).pc
  echo -a $!server = $server - total servers for dalnet: $server(0,Dalnet)
  echo -a $serverip
  echo -a $servertarget
  echo -a $sfile($mircdir,"choose a file!,Ok!)
  echo -a $sha1($mircexe,2) - $sha256($mircexe,2) - $sha384($mircexe,2) - $sha512($mircexe,2)
  echo -a $shortfn($longfn($mircdir))
  echo -a show = $show
  echo -a on *:signal:test:echo -a $signal
  var %e 2.718281 | var %angle $calc( 30 * $pi / 180)   | echo -a $sinh(%angle) same as $calc( ((%e ^ %angle) - (%e ^ (0 - %angle) )) /2 )
  var %angle 30 | echo -a $sinh(%angle).deg same as $sinh( $calc( %angle * $pi / 180) ) except for rounding
  echo -a on *:text:*:#:echo -a $site
  echo -a $sline(0)
  echo -a $snick(0)
  echo -a $snicks
  echo -a $snotify
  echo -a $sock(*,1)
  echo -a on *:sockread:name:if ($sockerr) return | var %a |  if (!$sockbr) return | if (%a == something) echo -a ok
  echo -a on *:sockread:*:echo -a $sockname
  echo -a $sorttok(C a c b A B,32,a) - $sorttokcs(C a c b A B,32,a)
  if ($insong) return $sound($insong.fname).artist
  echo -a $speak(0)
  echo -a $sqrt(3) is the same as $calc(3^.5)
  echo -a $sreq
  echo -a $ssl
  echo -a $sslcertsha1
  echo -a $sslcertsha256
  if (($server) && (+* iswm $port)) echo -a current SSL connection is $iif($sslcertvalid,valid,invalid)
  echo -a $ssldll - $ssllibdll - $sslready - $sslversion
  echo -a on *:start:echo -s $starting
  echo -a $status
  echo -a $str(Yes,3)
  echo -a on *:TEXT:*:#channelname:var %i $CheckForBadWords($strip($1-))
  echo -a on *:text:*:#:echo -a $stripped
  echo -a Used in a menu definition: $iif($server == $null,$style(2)) Server Info
  echo -a Used in a menu definition: $submenu($id($1))
  echo -a $switchbar
  echo -a $sysdir(music)
  ; ADIIRC 'S' IDENTIFIERS
  echo -a Returns the name of the first screen found: $screen - Print number of screens $screen(0) - Print the name of the first screen found: $screen(1)
  echo -a Returns the bit depth of the first screen found: $screenb - Print the bith depth of the first screen found: $screenb(1)
  echo -a Returns the height of the first screen found: $screenh - Print the height of the first screen found: $screenh(1)
  echo -a Returns the refresh rate of the first screen found: $screenhz - Print the refresh rate of the first screen found: $screenhz(1)
  run $qt($screenshot(screenshot.png, pa))
  echo -a Returns the width of the first screen found: $screenw - Print the width of the first screen found: $screenw(1)
  echo -a Returns $true if /scripts is enabled, otherwise $false : $scripts
  echo -a $iif($servervars(CHANTYPES),channel types for this server is $servervars(CHANTYPES),channel types was not found)
  echo -a $sha2(Hello world,0,1) - deprecated
  echo -a Returns the filesize of the currently playing song: $size
  echo -a Used to generate slaps menu. Returns slaptext:/slap nick N - $slapsmenu(0, nick)
  echo -a Returns the full title of the currently playing song, usually in $artist - $title format : $song
  echo -a Returns the full file path of the currently playing song: $songpath
  echo -a $spellcheck(wrod, 1)
  echo -a Returns the SHA1 hash of the remote certificate used by the current server: $sslcertremotesha1
  echo -a Returns the SHA256 hash of the remote certificate used by the current server: $sslcertremotesha256
  echo -a Returns $true if Statusbar is visible, otherwise $false : $statusbar - $statusbar(1).name
  ; T
  echo -a There are 2x pi radians in a circle, so a radian is $calc(360 / (2*$pi) ) degrees
  var %i 30 | echo -a $tan(%i).deg is the same as $tan( $calc(%i * $pi / 180) ) except for rounding
  echo -a $tanh(1).deg
  echo -a ON *:CLOSE:*:$iif(!$window(@windowWatcher),window @windowWatcher) | echo @windowWatcher Window Closed: $target $+ .
  echo -a $tempfn
  var %ticks = $ticks, %x = 10000 | while (%x) { dec %x } | echo -a 10,000 empty iterations took: $calc($ticks - %ticks) ms.
  echo -a $time
  echo -a $iif($input(test,evk1) == $timeout,timedout)
  echo -a $timer(0)
  echo -a $timestamp
  echo -a $timestampfmt
  echo -a $timezone
  echo -a $tip(test,test,test)
  echo -a $tips
  echo -a $titlebar
  echo -a $token(a-b-c-d-e,2,45) - returns b - replaced by $!gettok()
  echo -a $toolbar - $toolbar(0)
  echo -a $totp(Secret case-sensitive Pass Key,$ctime,sha512,9,3600)
  echo -a $treebar
  echo -a $iif($isfile($mircexe) == $true,true,false)
  echo -a $trust(0)
  ; ADIIRC 'T' IDENTIFIERS
  echo -a Returns the title of the currently playing song: $title
  echo -a on *:TOPIC:#:echo -ag Topic was changed to $topic in channel #
  echo -a Text is $topicbox($active) selstart is $topicbox($active).selstart selend is $topicbox($active).selend
  echo -a Returns the total track count of the currently selected playlist: $totaltracks
  echo -a Returns the track number of the currently playing song: $track
  ; U
  echo -a ON *:TEXT:*:#:echo -a User level triggered: $ulevel
  echo -a $ulist(*,,0)
  tokenize 32 $!me | timer -ho 1 0 echo -a $unsafe($1-)
  echo -a $upper(ab)
  echo -a $uptime(system,0) is the same as $ticks - mIRC has been running for $uptime(mirc,2)
  echo -a $url - $url(0)
  echo -a $urlget(https://github.com/solbu/Peace-and-Protection/archive/v4.22.8.zip ,gf,peace-and-protection-v4-22-8.zip,noop)
  echo -a $usermode
  echo -a $utfdecode(Ã©) - $utfencode(é)
  ; ADIIRC 'U' IDENTIFIERS
  echo -a Days since computer was last (re)started: $updays
  echo -a Returns $true if AdiIRC is updating itself, otherwise $false : $updating
  echo -a Hours since computer was last (re)started: $uphours
  echo -a Minutes since computer was last (re)started: $upmins
  echo -a Returns the username set in Server list or specified in the /server command for current connection: $username
  ; V
  if (a != b) echo -a $v1 - $v2
  echo -a $var(%myscript*,0)
  echo $vc(0) - $vcmd(0)
  echo -a $vcmdstat - $vcmdver
  echo -a $version
  echo -a ON *:VOICE:#:echo -a $vnick
  echo -a $vol(master)
  ; ADIIRC 'V' IDENTIFIERS
  echo -a Returns the volume in percent of the current selected media player: $volume
  echo -a Returns a text volume bar (**---) of the currently selected media player: $volumeb
  echo -a Returns the volume in percent of the current selected media player: $volumep
  ; W
  echo -a $wavedir - has been replaced by $!sound(wave)
  echo -a $wid
  echo -a $width(test,verdana,15)
  echo -a on *:text:*:#:echo -a $wildsite
  echo -a $wildtok(one two three,t*e,1,32) - returns three
  echo -a $wildtokcs(one two three twO, t*O,1,32) - returns twO
  echo -a $window - $window(0)
  echo -a $wrap($1-,verdana,10,$calc(%w - 10),1,%a)
  ; ADIIRC 'W' IDENTIFIERS
  echo -a Prints the cpu l2 cache: $wmiquery(SELECT * FROM Win32_Processor, L2CacheSize)
  ; X
  echo -a $xor(21,9) - returns 28
  ; Y
  echo -a $iif($input(Click yes to see the result.,yv) == $yes,yes,no)
  ; ADIIRC 'Y' IDENTIFIERS
  echo -a Returns the year of the currently playing song: $year
  ; Z
  echo -a $zip(test.zip,cp,testdir\test1.txt,foo bar)
  ; ADIIRC 'Z' IDENTIFIERS
  echo Returns any errors of a zip/unzip operation during a on ZIP or on UNZIP event: $ziperr
}