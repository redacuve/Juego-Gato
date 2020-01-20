class Tablero
  attr_reader :tablero
  attr_reader :lineas_ganadoras

  def initialize
    @tablero = [1,2,3,4,5,6,7,8,9]
    @lineas_ganadoras = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  end
  
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

  def dibuja_tablero
    puts '╔═══╦═══╦═══╗'
    puts "║ #{@tablero[0]} ║ #{@tablero[1]} ║ #{@tablero[2]} ║"
    puts '╠═══╬═══╬═══╣'
    puts "║ #{@tablero[3]} ║ #{@tablero[4]} ║ #{@tablero[5]} ║"
    puts '╠═══╬═══╬═══╣'
    puts "║ #{@tablero[6]} ║ #{@tablero[7]} ║ #{@tablero[8]} ║"
    puts '╚═══╩═══╩═══╝'
  end

  def limpiar
    system("clear")
  end
end
