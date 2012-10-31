Programmbeispiele von www.rubykids.de
=====================================

Copyright (C) 2007 www.rubykids.de Frithjof Eckhardt
Alle Rechte vorbehalten.

Allgemeines
===========

Die Programme lassen sich wie üblich von Konsole (MS-DOS Fenster) aus starten 
oder in eine Entwicklungsumgebung importieren (bspw. Eclipse).

Alle Dateien sind im UTF-8 Format. Daher evtl. in Eclipse den Content Type für
Ruby Quellecode Dateien umstellen: 

Window => Preferences => General => Content Types

und dort im Zweig

Text => Ruby Source File 

das Default Encoding auf utf-8 einstellen.


Anmerkungen zu Teil 1
=====================

Alle Lektionen im Teil 1 funktionieren korrekt, wenn sie direkt in einem DOS-Fenster 
ausgeführt werden. In Eclipse gibt es einige Einschränkungen, leider. Beispielsweise
funktioniert die Lektion 7 (Fahrrad hin und her fahren) in Eclipse nicht.
Eclipse hat Probleme mit dem Einlesen eines einzelnen Zeichens ohne 
Zeilenvorschub
  
Aufruf an der Kommandozeile in einem DOS-Fenster am Beispiel der Lektion 7:
C:\rubykids.de\teil_01> ruby lektion_07.rb

oder 

C:\rubykids.de> ruby teil_01\lektion_07.rb

Im Teil 1 wird eine kleine Bibliothek 'rubykids.rb' verwendet, die den Einstieg
in Ruby erleichtern soll, indem sie englische Befehle und Besonderheiten
der Sprache Ruby versteckt. 

Damit diese Bibliothek durch den 'require' Befehl auch beim Ausführen der
Programme in Eclipse korrekt gefunden wird, sieht der 'require' Befehl hier 
etwas komplizierter aus. Anstatt

require 'rubykids'

steht

require File.dirname(__FILE__) +  "/rubykids"

Dadurch erhält der Rubyinterpreter den absoluten Pfad zur Datei rubykids.rb
und es sollte auch in Eclipse keine Probleme geben.


