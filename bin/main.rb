#!/usr/bin/env ruby
$tablero = [1,2,3,4,5,6,7,8,9]
$turnos = 9

def reglas
  puts "Este es el juego del Gato
      Es para dos jugadores
      Las instrucciones para este juego son las siguientes
      1.- El tablero se compone de 9 casillas
      2.- El primer jugador juega con X y el segundo con O
      3.- El primer jugador selecciona en que casilla poner su moviento despues el segundo y asi sucesivamente
      4.- Gana quien logre tres casillas con su símbolo
      5.- El juego termina cuando todos los tiros fueron hechos o se selecciona la opcion 0"
end

def muestra_tablero
  puts "╔═══╦═══╦═══╗"
  puts "║ #{$tablero[0]} ║ #{$tablero[1]} ║ #{$tablero[2]} ║"
  puts "╠═══╬═══╬═══╣"
  puts "║ #{$tablero[3]} ║ #{$tablero[4]} ║ #{$tablero[5]} ║"
  puts "╠═══╬═══╬═══╣"
  puts "║ #{$tablero[6]} ║ #{$tablero[7]} ║ #{$tablero[8]} ║"
  puts "╚═══╩═══╩═══╝"
end

def validatiro(tiro)
  if $tablero.any?(tiro.to_i)
    puts "Tiro Valido"
    $turnos -= 1
    return true
  elsif tiro == "0"
    puts "Se ha Terminado el juego"
    return false
  else
    puts "Tiro Inválido , tira de nuevo"
    validatiro(gets.chop)
  end
end

def limpiar
  system "clear"
end

def juego
  reglas
  muestra_tablero
  band = true
  while true
    puts band ? "Jugador #1 'X' Introduce tu tiro (1 - 9)" : "Jugador #2 'O' Introduce tu tiro (1 - 9)"
    tiro = gets.chop
    case tiro
    when "0"
      break
    else
      unless hay_juego = validatiro(tiro)
        break
      end
    end
    if $turnos <= 0
      puts "Juego empatado"
      break
    end
    limpiar
    band = !band
    #muestra_tablero
    puts "Tablero actualizado"
  end
end

begin 
  juego
  puts "¿Jugar de nuevo? S/N"
  op = gets.chop.downcase
end while op == "s"