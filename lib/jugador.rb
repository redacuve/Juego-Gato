class Jugador
    attr_reader :nombre
    attr_reader :simbolo

    def initialize(nombre,simbolo)
        @nombre = nombre
        @simbolo = simbolo
    end
end