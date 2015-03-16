TEMPLATES:
article = <au> (<year>) <title>. \textit{<journal>} <volume>[(<number>)]: [<startpage>--<endpage>|<startpage>|<eid>|].[ <note>]
software = <au> (<year>) <title>.
incollection = <au> (<year>) <title>. \textit{<booktitle>}[, vol.~<volume>, ][, <edition_ordinal>~ed.][, <null.if_singular(editorlist, edmsg1, edmsg2)>~<ed>][, <series>][, Chap.~<chapter>] (<publisher>, <address>)[, pp~<startpage>--<endpage>|p~<startpage>|<eid>|].[ <note>]
book = <au> (<year>) <title>. ...

SPECIAL-TEMPLATES:
authorlist = <author.to_namelist()>
editorlist = <editor.to_namelist()>
authorname.n = [<authorlist.n.prefix> ]<authorlist.n.last>[ <authorlist.n.first.initial()>][-<authorlist.n.middle.initial().compress()>][, <authorlist.n.suffix>]
au = <authorname.0>, ..., <authorname.5>
editorname.n = [<editorlist.n.prefix> ]<editorlist.n.last>[ <editorlist.n.first.initial()>][-<editorlist.n.middle.initial().compress()>][, <editorlist.n.suffix>]
ed = <editorname.0>, ..., <editorname.9>
sortkey = <citenum.zfill(2)>
null = {}

OPTIONS:
maxauthors = 5
edmsg1 = , ed.
edmsg2 = , eds.
etal_message = , \textit{et~al.}
