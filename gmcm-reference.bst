% Original style for the three official citation-order reference forms.
ENTRY { author title address publisher pages year journal volume number url urldate note } {} {}
INTEGERS { nameptr namesleft numnames }
STRINGS { s }
FUNCTION { emit } { duplicate$ missing$ { pop$ } { write$ } if$ }
FUNCTION { comma } { "，" write$ }
FUNCTION { names } {
 author empty$ { "" } {
  author 's := #1 'nameptr := s num.names$ 'numnames := numnames 'namesleft :=
  "" { namesleft #0 > } {
   s nameptr "{ff~}{vv~}{ll}{, jj}" format.name$ *
   nameptr numnames < { "，" * } 'skip$ if$
   nameptr #1 + 'nameptr := namesleft #1 - 'namesleft :=
  } while$
 } if$
}
FUNCTION { item } { newline$ "\bibitem{" write$ cite$ write$ "}" write$ newline$ names emit comma title emit }
FUNCTION { finish } { "。" write$ newline$ }
FUNCTION { book } { item comma address emit "：" write$ publisher emit comma pages emit comma year emit finish }
FUNCTION { article } {
 item comma journal emit comma volume emit
 number empty$ 'skip$ { "(" write$ number emit ")" write$ } if$
 "：" write$ pages emit comma year emit finish
}
FUNCTION { misc } {
 item url empty$ { comma year emit } {
  comma "\url{" write$ url emit "}" write$ comma urldate emit
 } if$ finish
}
FUNCTION { default.type } { misc }
FUNCTION { begin.bib } { "\begin{thebibliography}{99}" write$ newline$ }
FUNCTION { end.bib } { newline$ "\end{thebibliography}" write$ newline$ }
READ
EXECUTE { begin.bib }
ITERATE { call.type$ }
EXECUTE { end.bib }
