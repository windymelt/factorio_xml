# factorio_xml
Factorio data in XML, XSLT, XSD

→ https://windymelt.github.io/factorio_xml/factorio.xml

Factorioの生産関連のデータをXMLで表現する実験です。ブラウザからはHTMLとして読めますが、
プログラムからはスキーマ付きのXMLに見えるので、加工がしやすくなっています。

まだ全てのデータを網羅していませんし、全てのデータを網羅できるほどスキーマも成熟していませんが、開発中ということで。

## なぜこういうのを作ったか

攻略Wikiには各種の生産情報が記載されていますが、とても利用しやすいとはいえない状態でした。
その一方で計算ツールも多様に存在しており、機械に読みやすい形での生産関連のデータもあるところにはあります。

しかし人間にも機械にも読みやすい形式での表現があっても良いのではないかという思いから、
人間にも機械にも読めるデータ表現というものをやってみようと考え、このXMLを書くことにしました。

## 使っているもの

- https://github.com/S2-/xsddoc
- https://mblode.github.io/marx/