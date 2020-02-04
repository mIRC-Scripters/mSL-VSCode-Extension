menu status {
  item
  .subitem:body
  .-
  .subitem
  ..subitem
}

; The following was taken from: https://gitlab.com/Ouims/Pacman/blob/master/pacman.mrc
menu channel,menubar,query,status {
  $iif(%pacupdate != $null,$style(2)) Pacman
  .Run : pacman
  .$iif(!$isalias(peditor),$style(2)) Map editor :  peditor
  .Record:pac_record
  .Unload : {
    if (!$input(Are you sure you want to unload pacman?,uyw)) return
    if ($isalias(pacclient_stop)) pacclient_stop
    if ($isalias(pacserv_stop)) pacserv_stop
    if ($dialog(pacman)) dialog -x pacman
    var %a 2,%v
    while ($read($scriptdirupdate.pac,tn,%a)) {
      var %v = $v1
      if ($exists($scriptdir $+ %v)) {
        if ($right(%v,4) == .mrc) && (%v != pacman.mrc) && ($script($scriptdir $+ %v)) .unload -rs $qt($scriptdir $+ %v)
      }
      inc %a
    }
    noop $input($+(Pacman unloaded successfully,$crlf,If you want to reload it,$chr(44),$chr(32),you'll need to reload the pacman.mrc file in $scriptdir),iuo,Pacman - Unload)
    .unload -rs $qt($script)
  }
}

menu @pac_watch {
  dclick:pacwatch_handle_click
  sclick:pacwatch_handle_click
}