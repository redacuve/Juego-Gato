#!/usr/bin/env ruby

require '../lib/tablero.rb'
require'../lib/jugador.rb'

def juego
  mi_tablero = Tablero.new
  mi_tablero.reglas
  puts "Jugador #1 Introduce tu nombre"
  jugador_x = Jugador.new(gets.chop.capitalize,"X")
  puts "Jugador #2 Introduce tu nombre"
  jugador_o = Jugador.new(gets.chop.capitalize, "O")
  mi_tablero.limpiar
  puts "Hola #{jugador_x.nombre} y #{jugador_o.nombre}, ¡Vamos a empezar!"
  mi_tablero.dibuja_tablero
  band = true
 end

begin 
  juego
  puts "¿Jugar de nuevo? S/N"
  op = gets.chop.downcase
end while op == "s"