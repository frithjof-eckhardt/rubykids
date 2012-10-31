# Copyright (C) 2007 www.rubykids.de Frithjof Eckhardt
# Alle Rechte vorbehalten.
# lektion_15.rb

require File.dirname(__FILE__) +  "/tictactoe_lektion_15"

# Variable für die Liste der Züge; Sie ist anfangs leer.
zuege = []

# Spielfeld auf der Standardausgabe einmal ausgeben.
spielfeld(STDOUT, zuege)

gewinner = play_gegen_computer(STDOUT, STDIN, zuege)

# Gibt es einen Gewinner?
if gewinner == nil
  puts "Das Spiel endet UNENTSCHIEDEN!"
else
  puts "Der Gewinner ist #{gewinner[1]}!"
end
