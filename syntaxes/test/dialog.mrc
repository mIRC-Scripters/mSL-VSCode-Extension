; the following examples were taken from: https://en.wikichip.org/wiki/mirc/dialog_components#Button
dialog Example {
  title "Example"
  size -1 -1 100 50
  option dbu
  button "Example 1", 1, 4 10 40 12
  button "Example 2", 2, 50 10 40 12
  button "Example A", 3, 4 30 40 12
  button "Example B", 4, 50 30 40 12, ok
}
; event
on *:dialog:example:sclick:1-4:{
  echo -a $did($dname, $did).text is clicked.
}
dialog Example {
  title "Example"
  size -1 -1 100 50
  option dbu
  check "Example 1", 1, 4 10 40 12, 3state
  check "Example 2", 2, 50 10 40 12
  check "Example 3", 3, 4 30 40 12
  button "Done", 4, 50 30 40 12, ok
}
; events
on *:dialog:example:init:0:{ 
  did -cu $dname 1
  did -c $dname 2
}
on *:dialog:example:sclick:1-3:{
  echo -a $did($dname, $did).text is clicked. $&
    State: $dstate $+ .
}
alias -l dstate {
  var %s UnChecked Checked Indeterminate
  return $gettok(%s, $calc($did($dname, $did).state + 1), 32)
}
dialog Example {
  title "Example"
  size -1 -1 100 70
  option dbu
  text "This label does not wrap.", 1, 4 10 40 15, nowrap
  text "This is a simple label.", 2, 4 30 40 15
  text "I am right-aligned.", 3, 4 50 40 15, right
  button "Done", 4, 50 30 40 12, ok
}
dialog Example {
  title "Example"
  size -1 -1 90 120
  option dbu
  box "A Settings", 1, 4 4 80 40
  box "B Settings", 2, 4 50 80 40
  button "Done", 4, 40 100 40 12, ok
}
dialog Example {
  title "Example"
  size -1 -1 100 110
  option dbu
 
  icon 1, 10 10 80 80, "C:\Users\Public\Pictures\Sample Pictures\Penguins.jpg", actual
 
  button "Done", 7, 10 95 40 12, ok
}
dialog Example {
  title "Example"
  size -1 -1 100 110
  option dbu
 
  edit "Left", 1, 10 10 80 20,
  edit "Center", 2, 10 40 80 20, center
  edit "Right", 3, 10 70 80 20, right
 
  button "Done", 7, 10 95 40 12, ok
}
dialog Example {
  title "Example"
  size -1 -1 90 65
  option dbu
 
  text "0%", 1, 30 20 20 20
  scroll , 2, 60 5 5 40, range 0 100
 
  button "Done", 13, 25 50 40 12, ok
}
on *:dialog:example:scroll:2:{
  did -ra example 1 $did(example, 2).sel $+ %
}
dialog Example {
  title "Example"
  size -1 -1 100 50
  option dbu
  link "http://www.wikichip.org/", 1, 4 10 80 12
  button "Done", 4, 50 30 40 12, ok
}
; click event
on *:dialog:example:sclick:1: url -a $did(example,$did)
dialog Example {
  title "Example"
  size -1 -1 100 110
  option dbu
 
  menu "&File", 1
  item "&New", 11, 1
  item "&Open...", 12, 1
  item "&Save", 13, 1
  item "Save &As...", 14, 1
  menu "&Edit", 2
  item "Some Item1", 21, 2
  item break, 22, 2
  item "Some Item2", 23, 2
  menu "&View", 3
  item "Some Item3", 31, 3
  item break, 32, 3
  item "Some Item4", 33, 3
  menu "&Help", 4
  item "Some Item5", 41, 4
  item break, 42, 4
  item "Some Item6", 43, 4
 
  button "Done", 7, 10 95 40 12, ok
}
dialog Example {
  title "Example"
  size -1 -1 90 80
  option dbu
 
  ; 1st group
  text "Sex:", 1, 4 4 10 10
  radio "Male", 2, 4 13 20 10, group
  radio "Female", 3, 30 13 30 10
  
  ; 2nd group
  text "Marital Status:", 4, 4 25 50 10
  radio "Single", 5, 4 33 22 10, group left
  radio "Married", 6, 30 33 25 10, left
  radio "Other", 7, 60 33 22 10, left
 
  ; 3rd group
  text "Favorite Color:", 8, 4 45 50 10
  radio "Red", 9, 4 55 20 10, group push
  radio "Green", 10, 25 55 20 10, push
  radio "Blue", 11, 46 55 20 10, push
  radio "Other", 12, 67 55 20 10, push
  button "Done", 13, 40 68 40 12, ok
}
dialog Example {
  title "Example"
  size -1 -1 100 110
  option dbu
 
  tab "Tab 1", 1, 10 10 80 80
  tab "Tab 2", 2
  tab "Tab 3", 3
 
  button "111", 4, 20 30 40 40, tab 1
  button "222", 5, 20 30 40 40, tab 2
  button "333", 6, 20 30 40 40, tab 3
 
  button "Done", 7, 10 95 40 12, ok
}
dialog Example {
  title "Example"
  size -1 -1 100 110
  option dbu
 
  list 1, 10 10 80 20, multsel
  list 2, 10 40 80 20, radio
  list 3, 10 70 80 20, check
 
  button "Done", 7, 10 95 40 12, ok
}
on 1:dialog:example:init:*: {
  did -a example 1 Item A
  did -a example 1 Item B
  did -a example 1 Item C
  did -a example 2 Item A
  did -a example 2 Item B
  did -a example 2 Item C
  did -a example 3 Item A
  did -a example 3 Item B
  did -a example 3 Item C
}
dialog Example {
  title "Example"
  size -1 -1 100 110
  option dbu
 
  combo 1, 10 10 80 50, drop
  combo 2, 10 50 80 50
 
  button "Done", 7, 10 95 40 12, ok
}
on 1:dialog:example:init:*: {
  did -a example 1 Item A
  did -a example 1 Item B
  did -a example 1 Item C
  did -a example 2 Item A
  did -a example 2 Item B
  did -a example 2 Item C
}
