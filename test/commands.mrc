alias -l commands {
  ; the following examples were taken from: https://en.wikichip.org/wiki/mirc/commands
  ; Getting Started
  help /exit
  winhelp myhelp.chm
  ; Server Navigation
  server irc.irc.com -i nick anick
  disconnect
  join #mIRC,#help password
  hop #Bar moving on
  part #ChannelName See ya!
  partall goodbye
  quit goodbye
  list -min 5 -max 20
  links -n
  raw PRIVMSG #mIRC :Hello World!
  ; Communication
  me brings the cookie jar
  msg $chan moos back
  privmsg #channel test
  notice nick1,nick2,nick3,nick4 This message is seen by all 4 nicks
  describe $chan moos back!
  amsg It's snowing!
  ame gives away cookies
  query -n test
  qme goodbye
  qmsg goodbye
  onotice #test goodbye
  omsg goodbye
  vnotice goodbye
  vmsg goodbye
  sound myfile.wav
  ctcp #mSL VERSION
  dcc chat test
  dcc fserve 
  dcc get test
  dcc ignore on
  dcc maxcps 2
  dcc nick -s foo bar
  dcc passive on
  dcc reject 
  dcc send -c foo file.png
  dcc trust -r on
  wallchops test
  wallvoices test
  uwho jeff jeff
  ; Sockets
  sockaccept $+($sockname,$ctime)
  sockclose mySock
  socklist -t mySock*
  socklisten mySocket 31781
  sockmark sock1 $regml(1)
  sockopen -e IRC irc.freenode.org +6697
  sockpause -r mySocket
  sockread -f %a
  sockrename mySocket newSockName
  sockudp -n test 127.0.0.1 7777 test
  sockwrite -n IRC NICK Tester $+ $rand(1,100) $crlf
  ; Binary variables
  bread $qt($1) 0 $file($1).size &tempFile
  breplace &Example 101 51
  bcopy -z &example2 1 &example 11 999
  bset -t &Example 1 This is fun!
  ; Com Objects
  comclose Example
  comlist
  .comopen %name WScript.Shell
  comreg example.dll
  ; Dialog window
  dialog -md Example1 Example1
  did -ra Example1 2 This is a test!
  didtok colors 1 32 red blue orange yellow
  ; Picture windows
  drawcopy @foo 0 0 100 100 @bar 0 0
  drawdot @PicWin 1 1 10 10
  drawfill @foo 0 1 10 10
  drawline @foo 0 1 0 0 100 100
  drawpic @foo 50 50 pic.png
  drawrect @window 2 7 15 10 200 150
  drawreplace @foo 1 0
  drawrot @foo 30
  drawsave @foo pic.jpg
  drawscroll @foo -10 -10 0 0 100 100
  drawsize @foo 200 200
  drawtext -rn @mygame 0 verdana 20 30 30 the fps is: 60
  ; Files Handling
  .fopen -n h hello.txt
  flist myhandle*
  fseek -r /findthat/
  .fwrite h Hello There
  .fclose x
  ; Windows & Side Listboxes
  aline -s 3 @Foo Line B
  cline -l 4 $chan $fline($chan,$me,1,1)
  dline @Foo 2-3
  iline -s 3 @Foo 1 Line B
  rline @Foo 1 Test
  sline -a #example UhOh
  clear -s
  clearall -q
  window -dep @Example 250 250 300 300
  ghide myagent
  gload myagent default
  gmove myagent 42 42 2
  gopts -e myagent off
  gplay myagent 2
  gpoint myagent 42 42
  gqreq on
  gshow myagent 42 42
  gsize myagent 42 42
  gstop -c myagent
  gtalk -w myagent lol.wav text
  gunload myagent
  ; Hash tables
  hadd -m abbr lol laughing out load
  hdec count down
  hdel -w example a*
  hfree -sw h*
  hinc example item1 5
  hload -im1n test $nopath($mircini) colors
  hmake abbr 1000
  hsave -sB test test.dat
  ; Control flow
  break
  continue
  goto $1
  halt
  haltdef
  return $calc($1 + $2)
  returnex $+($chr(32), A, $chr(32), $chr(32), B, $chr(32), $chr(32), C, $chr(32))
  ; Variables
  dec %x 5
  inc %x 5
  set -zs %var 3
  var %result = 1, %x = $1
  unset %foobar
  unsetall
  ; User List
  auser -a 10 *!*@Example.com
  dlevel 5
  guser 20 $$1 2 $1   
  iuser *!*@example.com Uncool!
  rlevel test
  ulist <10
  flush 1,2,3
  ruser test
  ial off
  ialclear
  ialmark Ouims test
  ialfill #fill
  ; File system
  .copy $qt($v1) %dir
  flushini myini.ini
  rmdir example
  remini my.ini test
  .remove $qt(downloads\test filename.txt)
  rename E:\example.txt E:\renamed.txt
  write -dl1 Example.txt
  writeini abb.ini abbreviations rofl Rolling On the Floor, Laughing
  rmdir example
  ; Others IRC related commands
  aop -r MadGoat 2 Undernet 
  avoice -r MadGoat 2 Undernet
  ban -ku60 Mike202 Owned!
  channel #mSL
  ignore on
  leave
  mode #chan +o SykO
  parseline -it
  pop 3 test
  protect on
  pvoice 3 #chan SykO
  say goodbye
  updatenl
  abook -w Ahnk
  ajinvite off
  alias /Cookies /me Steals someone's cookies!
  anick Foo
  autojoin -d5
  background -a "C:\Users\Public\Pictures\Sample Pictures\Desert Landscape.jpg"
  beep 3 1000
  bindip on 74.123.54.13
  clipboard Hello World!
  cnick on
  color 1 $rgb(128,0,128)
  colour -s "mIRC Classic"
  creq auto
  ctcpreply $nick TIME Current time: $time(hh:nn:ss TT (ZZZ))
  ctcps off
  dccserver off
  dde -e Opera WWW_OpenURL "www.zigwap.com/mirc/"
  ddeserver on mIRCServer
  debug -p @Raw
  disable #*o*
  dll file.dll function string
  dns -46 Ouims
  dqwindow on
  ebeeps on
  exit -r
  echo -act ctcp            abc $chr(22) def $chr(15) The timestamp and this text following the Ctrl-O revert to "ctcp" colour ( $+ $colour(ctcp) $+ )
  editbox -oq ☺ $+ editbox($chan,1)
  emailaddr example@website.com
  enable #one #two #three
  events
  filter -fkcg words_alpha.txt word2hex /^([A-F]|o|l|to|for|four|s|g|t|ate|ten){1,8}$/i
  findtext SykO
  finger nick
  firewall on
  flash -b @example
  flood 200 10 2 30
  fnord
  font -d"Status Window" -8 fixedsys
  fsend on
  fserve goat 5 c:\users\level1 level1.txt
  fullname ThisIsATest
  fupdate
  groups 
  hotlink -m @helppop 
  identd on
  linesep @example
  load -rs foo.mrc
  loadbuf $lines($mircini) @test $qt($mircini)
  localinfo
  log on @test
  logview test.log
  mdi -c
  menubar off
  mnick SykO
  noop $tip(Example, Hello, Hello there)
  notify on
  pdcc ON
  perform on
  play test.txt
  playctrl
  proxy off
  queryrn foo bar
  registration
  reload -rs1 scriptfile.mrc
  remote
  renwin @foo @bar
  reseterror
  resetidle 5
  run -n notepad.exe
  savebuf 20 @test info.txt
  saveini
  scid -at1 amsg $1-
  scon -at1 amsg $1-
  setlayer 204 @Example
  showmirc -t
  signal mysignal Signal information!
  speak -sp 30 50 Hi there!
  splay -p seek 60300
  sreq +m
  strip -burc
  switchbar on
  .timer %reps 1 count-down
  .timerName %reps 1 count-down
  timestamp on Status Window
  tip -t counter %seconds $+(second, $iif(%seconds > 1, s),!)
  tips off
  titlebar $1 Position: $window($1).x $window($1).y
  tnick $me $+ |away
  tokenize 58 one:two:three
  toolbar -a Cow "Moo moo!" cow.bmp "/echo I am cow, hear my moo" @cow
  tray -i13 C:\Windows\System32\shell32.dll
  treebar off
  unload -rsn myfile.mrc
  url -n www.google.com
  vcadd Connect SwiftIRC
  vcmd off
  vcrem noop
  vol -vu1
  xyzzy
  auto -r MadGoat 2 Undernet 
  away Work, will be back at 10PM
  clearial $me
  close -@ @*#*
  closemsg kol
  timers off
  timeapi on
  username newUsername
  cmd +l -x xd
}