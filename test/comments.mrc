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

; Mixed single line comment. | echo -s test | ; Another single line comment.


alias singleLineCommentTest {
  !echo -ace info * Running single line comment tests...

  !filter -fkg $~qt($~script) callTest /^alias\x20-l\x20(test\d+)\x20.*$/

  !echo -ces info * End of tests...
}

alias -l callTest $~gettok($~1,3,32)

alias -l test1 {
  ; comment
  !echo -a test 1
}

alias -l test2 {
  ; comment | !echo -a test 2
}

alias -l test3 {
  ; comment | !echo -a test 3 | ;comment |
}

alias -l test4 {
  ; comment | { !echo -a test 4 }
}

alias -l test5 {
  { ; comment } | !echo -a test 5
}

alias -l test6 {
  { ; comment | } | !echo -a test 6
}

alias -l test7 {
  { ; comment | !echo -a test 7 - 1 } | ; comment | !echo -a test 7 - 2
}

alias -l test8 {
  { !echo -a test 8 - 1 | ; comment } | !echo -a test 8 - 2
}

alias -l test9 {
  { !echo -a test 9 - 1 | ; comment | } | !echo -a test 9 - 2
}

alias -l test10 {
  !echo -a test 10 - 1 | ; comment | !echo -a test 10 - 2
}

alias -l test11 {
  !echo -a test 11 - 1 | { ; comment } | !echo -a test 11 - 2
}

alias -l test12 {
  !echo -a test 12 - 1 | { ; comment | } | !echo -a test 12 - 2
}

alias -l test13 ; comment | !echo -a test 13
alias -l test14 ; comment | !echo -a test 14 | ;comment | 
alias -l test15 ; comment | { !echo -a test 15 }
alias -l test16 { ; comment } | !echo -a test 16
alias -l test17 { ; comment | } | !echo -a test 17
alias -l test18 { ; comment | !echo -a test 18 - 1 } | ; comment | !echo -a test 18 - 2
alias -l test19 { !echo -a test 19 - 1 | ; comment } | !echo -a test 19 - 2
alias -l test20 { !echo -a test 20 - 1 | ; comment | } | !echo -a test 20 - 2
alias -l test21 !echo -a test 21 - 1 | ; comment | !echo -a test 21 - 2
alias -l test22 !echo -a test 22 - 1 | { ; comment } | !echo -a test 22 - 2
alias -l test23 !echo -a test 23 - 1 | { ; comment | !echo -a test 23 - 2 } | !echo -a test 23 - 3

alias -l test24 { ;comment | !echo -a test 24 - 1
  !echo -a test 24 - 2

  !echo -a ; this is not a comment

  /*
  this is a multi line comment
  */

  ; single line comment
}