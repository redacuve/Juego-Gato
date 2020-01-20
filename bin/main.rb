#!/usr/bin/env ruby

require '../lib/tablero.rb'

require '../lib/jugador.rb'

def juego
  mi_tablero = Tablero.new
  mi_tablero.reglas
  puts 'Jugador #1 Introduce tu nombre'
  jugador_x = Jugador.new(gets.chop.capitalize, 'X')
  puts 'Jugador #2 Introduce tu nombre'
  jugador_o = Jugador.new(gets.chop.capitalize, 'O')
  mi_tablero.limpiar
  puts "Hola #{jugador_x.nombre} y #{jugador_o.nombre}, ¡Vamos a empezar!"
  mi_tablero.dibuja_tablero
  turno = true
  while true
    if turno
      puts "#{jugador_x.nombre} \"#{jugador_x.simbolo}\" Introduce tu tiro (1 - 9)"
    else
      puts "#{jugador_o.nombre} \"#{jugador_o.simbolo}\" Introduce tu tiro (1 - 9)"
    end
    tiro = gets.chop
    case tiro
    when '0'
      break
    else
      break unless mi_tablero.tiro(tiro, turno)
    end
    mi_tablero.limpiar
    mi_tablero.dibuja_tablero
    break if mi_tablero.checar_lineas(jugador_x, jugador_o) || mi_tablero.empatado?
    
    turno = !turno
  end
end

begin 
  juego
  puts '¿Jugar de nuevo? S/N'
  op = gets.chop.downcase
end while (op == 's') || (op == 'y')
