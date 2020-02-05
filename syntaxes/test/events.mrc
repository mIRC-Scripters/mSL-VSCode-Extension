; the following examples were taken from: https://en.wikichip.org/wiki/mirc/on_events
ON *:ACTION:* slap *:#:msg # $nick $+ ! Why would you slap anyone?!?!?
ON *:ACTION:*:?:msg $nick Well, I have no idea why I'm responding to this automatically, $nick $+ . You said: $1-
on *:NOTICE:thesecretcommand:?:{
  .notice $nick Congratulations! You have entered the secret command!
  .notice $nick Please accept these free 500 points...
  hinc -m $+(points.,$network) $wildsite 500
}
on 5:NOTICE:*op #*:?:{
  if ($istok(op dop,$1,32)) {
    if ($me !ison $2) { .notice $nick I am not on that channel. }
    elseif ($me !isop $2) { .notice $nick I am not opped in that channel. } 
    else mode $2 $iif($1 == op,+o,-o) $nick
  }
}
on *:NOTICE:This nickname is registered*:TheUsualNick:{
  if ($nick == NickServ) { ns identify M`/p@SsW0r|) }
}
on *:text:!help:#:{
  notice $nick For Help just state your question and pastebin any relevant code.
}
on *:text:!color &:?:{
  var %color = $gettok(white black red blue brown yellow orange green, $rand(1, 8), 32)
  msg $chan $2's random color is: %color $+ .
}
on $*:text:/^!test$/i:#:{
  msg $chan Test Worked!
}
on *:text:$(*slaps $me $+ *):#:{
  describe $chan Slaps $nick with dried-up sandwich!
}
on *:text:$(!example * $+ %match $+ *):#:{
  describe $chan This is an example, $+ $nick $+ !
}
;Assume %text is set to !cool
on *:text:%text:#:{
  msg $chan I am the coolest! 
}
on $*:text:$(/^!slaps $me $+ /Si):#:{
  describe $chan Slaps $nick with dried-up sandwich!
}
;let %chan equal #mSL,#help,#support
on *:text:!hi:%chan:{
  notice $nick Hello!
}
; use local identifier $channels to work
alias -l channels { return #mSL,#help,#support }
on *:text:!hi:$($channels):{
  notice $nick Hello!
}
; Listen for any window becoming active,
; then display information about that window and the previous active window
 
ON *:ACTIVE:*:echo -a * $active is now active, took over for $lactive
ON *:INPUT:*: {
  if ($1 == ^scripts) {
    echo -a There are $script(0) script(s) loaded.
    haltdef
  }
}
on 1:TABCOMP:#mIRC:/echo event: $event target: $target line: $1-
ON *:AGENT:echo -s agent $agentname finished talking
ON *:APPACTIVE:echo -a * mIRC now has an appactive status of $appactive $+ .
; Echo the server and network
; names to the active window
ON *:CONNECT:echo -a Server: $server -- Network: $network
; Join a single channel,
; #myChannel, upon successful connection
 
ON *:CONNECT:join #myChannel
; Stop mIRC from reconnecting
; after a connection failure.
ON *:CONNECTFAIL:echo -s connection to $servertarget failed: $1- | disconnect
; Echo network, and time
; when mIRC disconnected
ON *:DISCONNECT:echo -a Disconnected from $network on $asctime(dddd mmmm $+(ddoo,$chr(44), yyyy)) at $asctime(hh:mmtt) $+ . Server disconnect reason: $1-
ON *:DNS:echo -a $iif($1,$iif($dns(1).nick,$v1 has been resolved to) Hostmask: $dns(1).addr IP: $dns(1).ip,Could not resolve DNS query.)
ON *:EXIT:noop $input(Goodbye!,o,Bye Window)
ON *:UNLOAD:noop $input(So sorry to see you unload me!,oi,Script Unloaded!)
ON *:LOAD:noop $input(Thanks for loading my script!,oi,Script Loaded!)
ON *:MIDIEND:echo -a $nopath($filename) has ended
ON *:MP3END:echo -a $nopath($filename) has ended
ON *:PLAYEND:echo -a * $filename has just finished playing.
ON *:songend:echo -a $nopath($filename) has ended
ON *:WAVEEND:echo -a $nopath($filename) has ended
ON ^*:NICK: {
  echo $comchan($newnick,1) * $nick |==> $newnick
 
  ; Halt the default mIRC message
  haltdef
}
ON ME:^*:NICK: {
  echo $comchan($newnick,1) You are now ==> $newnick
 
  ; Halt the default mIRC message
  haltdef
}
ON ^*:NICK:{
  var %i $comchan($newnick,0)
  while (%i) {
    echo -ctg nick $chan(%i) * # $iif($nick == $me,Your nick # is now,$nick is now known as) $newnick
    dec %i
  }
 ; You can precede HALTDEF with a semi-colon to compare this messages with the default
 haltdef
}
ON *:NOSOUND:msg $nick Unfortunately, I do not have: $filename
ON *:NOTIFY:notice $nick Hey there! Glad to see you again!
ON *:PING: {
  echo -a Server PING: $1-
  haltdef
}
ON ^*:PING:{ echo -ctgs info2 Ping? Pong! | haltdef }
ON *:PONG: {
  echo -a Server PONG: $1-
  haltdef
}
on ^*:PONG:{ echo -ctgs info * PONG from $1 $+ : $2 | haltdef }
ON ^*:QUIT: {
  echo -a * $nick just disconnected from $network
  haltdef
}
on ^*:QUIT:{
  var %i $comchan($nick,0)
  while (%i) {
    echo -ctg quit $chan(%i) * $nick $+($chr(40),$address,$chr(41)) Quit $iif($1,$+($chr(40),$1-,$chr(41))) 
    dec %i
  }
  haltdef
}
on *:START:{
  var %c $chr(124) server -m
  editbox -a //server irc.swiftirc.net %c irc.dal.net %c irc.efnet.org
}
on *:START:{
  if (!$hget(ircpoints)) { hmake ircpoints }
  if ($file(ircpoints.hsh).longfn) { hload ircpoints $v1 }
}
ON ^*:USERMODE: {
  echo -a * You have set new usermodes: $1-
  haltdef
}
on >=2:BAN:#mIRC:/msg $chan $nick banned $banmask (legal)
on 1:BAN:#mIRC:/msg $chan $nick banned $banmask (illegal)
ON *:BAN:#:msg # Looks like the address $banmask has just been added to this channel's ban list.
ON *:BAN:#myChannel,#myOtherChannel:msg # Wow, so $iif($bnick,$bnick just got in trouble,$banmask was just added to the channel's ban list) $+ .
ON *:UNBAN:#:msg # Hey, look, the address $banmask was just removed from the channel's ban list!
ON *:HELP:#:msg # Congratulations, $hnick $+ ! You are now a helper thanks to $nick $+ .
ON *:DEHELP:#:msg # Sorry to see the helper privilege removed from $hnick $+ .
ON *:DEOP:#:msg # Oh no, $opnick has had their operator privilege removed :(
ON *:SERVEROP:#:msg # Congratulations, $opnick $+ ! The server, $nick $+ , just made you an operator!
ON *:OP:#:msg # Congratulations, $opnick $+ ! $nick has made you a channel operator!
ON *:DEOWNER:#:msg # $nick $+ : You're not an owner of # anymore? :-o
ON *:OWNER:#:msg # $opnick $+ : Congratulations on becoming an owner of # $+ !
ON *:DEVOICE:#:msg # Uh oh, looks like $vnick no longer has a voice, thanks to $nick $+ .
ON *:VOICE:#:msg # $vnick now has a voice, thanks to $nick $+ .
ON *:INVITE:#:echo -a $nick has extended an invite to $chan
ON *:INVITE:#:join $chan
ON *:JOIN:#:msg # Welcome to # $+ , $nick $+ !
ON ME:*:KICK:#:join #
ON *:KICK:#: {
  .notice $knick You were kicked from $chan by $nick for the following reason: $iif($1-,$1-,No reason given)
}
ON @*:SERVERMODE:#:notice # $nick has modified the channel modes to: $1-
ON @*:MODE:#:notice # $nick has modified the channel modes to: $1-
ON ME:*:PART:#:echo # You have left # $+ .
ON *:PART:#:msg # So sorry to see you go, $nick $+ !
ON ^*:RAWMODE:*: {
  echo $target * RAWMODE: $1-
  haltdef
}
ON *:TOPIC:#:action $chan approves of this new topic!
ON *:TOPIC:#:action $chan approves of this new topic!
ON *:CHAT:!time:msg =$nick The current time is: $time(hh:nntt)
ON *:CTCPREPLY:VERSION*:echo -a $nick $+ 's IRC client is: $1-
ON *:ERROR:*full*:echo -s This server is most-likely full. Server sent error: $1-
ON *:ERROR:*ban*:echo -s You're most-likely banned from this server. Server sent error: $-
ON *:FILERCVD:*:echo -a Received filename: $filename
ON *:FILERCVD:*:echo -a Received filename: $filename $iif($nick,from $nick - ,from) Address: $address
ON *:FILESENT:*:echo -a Successfully sent $filename $iif($nick,to $nick - ,to) Address: $address
ON *:GETFAIL:*:echo -a Failed to receive $filename $iif($nick,from $nick - ,from) Address: $address
ON *:SENDFAIL:*:echo -a Failed to send $filename $iif($nick,to $nick - ,to) Address: $address
on ^*:logon:*:echo -a Connecting to $server through the $network network...
on ^*:logon:*:noop $input(Successfully connected to: $server $+ !,io,Connection Successful)
ON *:SERV:!time:msg =$nick The current time is: hh:nntt
ON *:SERV:!folder:msg =$nick Current Folder: $cd
ON *:signal:*:echo -s $signal -- $1-
ON ^*:SNOTICE:*: {
  echo -a * Server notice: $1-
  haltdef
}
ON *:SOCKCLOSE:*: {
  echo -a ::=> $sockname Connection to $sock($sockname).ip on port $sock($sockname).port closed by the remote host!
}
on *:socklisten:name:{
  if (!$sockerr) sockaccept myprefix $+ $ticks
  else {
    echo -s An error occured while trying to accept a connection: $sock($sockname).wsmsg
  }
}
on *:sockopen:example:{
 
  ;if an error occurred ($sockerr is not 0)
  if ($sockerr) {
    if ($sockerr == 3) {
      echo -s An error occurred while trying to connect: $sock($sockname).wsmsg
    }
    elseif ($sockerr == 4) {
      echo -s Error resolving hostname
    }
  }
 
  ;no error occurred ($sockerr was 0)
  else {
    ;perform commands after establishing a connection.
    ;usually this involves making a request for a webpage as shown below:
    sockwrite -n $sockname GET / HTTP/1.1
    sockwrite -n $sockname Host: www.example.com
    sockwrite -n $sockname Connection: close
    sockwrite    $sockname $crlf
  }
}
on *:sockread:example:{
 
  ;if an error occurred ($sockerr is not 0)
  if ($sockerr) {
    echo -s An error occurred: $sock($sockname).wsmsg
  }
 
  ;no error occurred ($sockerr was 0)
  else {
 
    ;perform commands related to reading the data
 
    ;declare %r as a local variable for use in /sockread
    var %r
 
    ;read a line into %r from the buffer (this variable is subject to mIRC's Line Length Limit - see the /sockread page for more information)
    sockread %r
 
    ;do things with %r, such as checking its value or extracting parts to output later
 
  }
}
on *:sockwrite:socket:{
;check that all the data has been sent on the socket
  if ($sock(socket).sq == 0) {
    ;if we must close the socket
    if (%closesocket == 1) sockclose socket
  }
}
on *:sockwrite:socket:{
  ;if we sent all of the previous content
  if ($sock(socket).sq == 0) {
    if ($fread(handle,16384,&tosend) > 0) sockwrite socket &tosend
    else ;we're done sending the content
  }
}
on *:udpread:name:{
  if ($sockerr) { echo -s An error occured while trying to read data: $sock($sockname).wsmsg | return }
  else {
    sockread %a
    echo -s rcvd: %a
  }
}
on *:udpwrite:name:{
  if ($sockerr) { echo -s An error occured while trying to read data: $sock($sockname).wsmsg | return }
}
alias vctest {
 if ($vcmdver == $null) halt
 vcmd -c on
 vcadd connect Dalnet, connect Efnet, connect Undernet, connect IRCnet
 vcadd Part Channel, Disconnect, List Commands, Moo Cow
}
on 1:vcmd:connect*:*:server $2
on 1:vcmd:part channel:*:if ($active ischan) part $active
on 1:vcmd:disconnect:*:quit
on 1:vcmd:list commands:*:vcmd -l
on 1:vcmd:moo cow:*:splay moo.wav
on 1:vcmd:*:*:echo You said: $1-
ON ^*:WALLOPS:*: {
  echo -a [[ $asctime ]] ==> WALLOP From $nick :: Message:
  haltdef
}
ON *:OPEN:?:!yourserver:msg $nick Current IRC Server: $server $+ .
ON *:CLOSE:=:notice $nick Hey, thank you so much for the chat!
ON *:CLOSE:*: {
  $iif(!$window(@windowWatcher),window @windowWatcher)
  echo @windowWatcher Window Closed: $target $+ .
}
ON *:DCCSERVER:Send:echo User $nick ( $+ $address $+ ) is attempting to send: $filename
ON *:DCCSERVER:Send:if ($right($filename,4) == .exe) { echo -a User $nick just tried to send a file with an .exe extension. It has been declined. | halt }
ON *:DCCSERVER:Chat:echo User $nick ( $+ $address $+ ) is attempting to initiate a DCC Chat.
ON *:DIALOG:mouseListener:mouse:*: {
  did -ra $dname 3 $mouse.x
  did -ra $dname 5 $mouse.y
}
ON *:DIALOG:whatEvents:*:*: {
  did -ra $dname 2 $devent
  did -ra $dname 4 $did
  did -ra $dname 6 $iif($did == 0,NA,$iif($did($did),$v1,$iif($did($did).sel,$v1,$iif($did($did) == 0,0,NA))))
  did -ra $dname 10 $did(9).state
}
ON *:HOTLINK:*hoverme*:*:echo -a $1 was just hovered!
on ^*:HOTLINK:*help*:#:{
 if ($1 == helpme) return
 halt
}
on *:HOTLINK:*:*:echo clicked word $1 in line $hotline $hotlinepos
ON *:KEYDOWN:@myWindow:38,42,55,78:echo -a $keyval
alias keyDownTest {
  window -p $+ $iif($window(@myWindow),ra) @myWindow 550 300 250 105
}
ON *:KEYDOWN:@myWindow:*: {
  clear @myWindow
  drawtext @myWindow 1 3 3 Key value: $iif($keyval,$v1,NA)
  drawtext @myWindow 1 3 25 Key character: $iif($keychar,$v1,NA)
  drawtext @myWindow 1 3 47 @myWindow Repeating: $keyrpt
}
alias keyUpTest {
  window -p $+ $iif($window(@myWindow),ra) @myWindow 550 300 250 83
}
ON *:KEYUP:@myWindow:*: {
  clear @myWindow
  drawtext @myWindow 1 3 3 Key value: $iif($keyval,$v1,NA)
  drawtext @myWindow 1 3 25 Key character: $iif($keychar,$v1,NA)
}
on *:parseline:out:PRIVMSG *Hello:echo -a $parseline
on *:parseline:out:PRIVMSG *Hello?:echo -a $parseline
on *:parseline:out:PRIVMSG *Hello*:echo -a $parseline
on *:parseline:out:PRIVMSG *Hello?:echo -a $parseline
on *:parseline:out:PRIVMSG & ?Hello?:echo -a $parseline
on *:parseline:out:$(PRIVMSG & :Hello?):echo -a $parseline
on $*:parseline:out:/^PRIVMSG [^ ]+ :Hello./:echo -a $parseline

raw 319:*:{
  ; $1 = <myname>
  ; $2 = <nick>
  ; $3 = <[mode]#channel 1>
  ; $4 = <[mode]#channel 2>
  ; $5 = <[mode]#channel 3>
  ; $6 ...
}
raw 319:*:{
  ;We indicated that the event should trigger on the server's numeric value of 319
  if (%whois. [ $+ [ $2 ] ]) {
    ;In the if statement we check if we actually /whoised this user 
    msg %whois. [ $+ [ $2 ] ] [WHOIS] $2 is on $3-.
    unset %whois. $+ $2
  } 
}
raw cap:* ack sasl *:{ }
raw cap:* ls *:{ }
raw authenticate:*:{ }
ctcp *:test:?:ctcpreply $nick success
ctcp *:version:?:ctcpreply $nick mIRC 12.5!!
