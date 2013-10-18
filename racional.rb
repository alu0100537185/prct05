# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

# Método para inicializar una clase
  
    def initialize (numerador,denominador)
      # atributos      
      @numerador = numerador;
      @denominador = denominador; 
    end

# Método para convertir una cadena
    
    def to_s 
	"#{@numerador}/#{@denominador}"
    end

# Método para suma de fracciones
  
    def suma(a,b) 
      "#{@numerador}/#{@denominador} + #{a}/#{b} ="
      temp = (@denominador/gcd(@denominador,b)) * b # Calculamos el mínimo común múltiplo utilizando la propiedad (a*b/mcd(a,b))
      temp2 = ((temp/@denominador) * @numerador) + ((temp/b) * a) # Calculamos la suma de fracciones
      # Mostramos el resultado por pantalla     
      if temp2 % temp == 0 # Mostramos el resultado de la división comprobando antes que la división es exacta o no.
	 temp3 = temp2/temp
      else
         "#{temp2}/#{temp}"
      end  
    end
   
# Método para resta de fracciones
   
    def resta(a,b) 
      "#{@numerador}/#{@denominador} + #{a}/#{b} ="
      temp = (@denominador/gcd(@denominador,b)) * b # Calculamos el mínimo común múltiplo utilizando la propiedad (a*b/mcd(a,b)) 
      temp2 = ((temp/@denominador) * @numerador) - ((temp/b) * a) # Calculamos la resta de fracciones
      # Mostramos el resultado por pantalla
      if temp2 % temp == 0 # Mostramos el resultado de la división comprobando antes que la división es exacta o no.
	 temp3 = temp2/temp
         "#{temp3}"
      else
         "#{temp2}/#{temp}"
      end
    end   
   

# Método para el producto de fracciones
    
    def producto(a,b)
      "#{@numerador}/#{@denominador} * #{a}/#{b} ="
      # Calculamos el producto de fracciones
      temp = @denominador * b
      temp2 = @numerador * a
      # Mostramos el resultado por pantall
      if temp2 % temp == 0 # Mostramos el resultado de la división comprobando antes que la división es exacta o no.
         temp2/temp
      else
         "#{temp2}/#{temp}"
      end
    end

# Método para la divisíon de fracciones
        
    def division(a,b) 
      "#{@numerador}/#{@denominador} / #{a}/#{b} ="
       # Calculamos la multiplicación en cruz de las fracciones
       temp = @denominador * a
       temp2 = @numerador * b
       # Mostramos el resultado por pantalla
       if temp2 % temp == 0 # Mostramos el resultado de la división comprobando antes que la división es exacta o no.

          temp2/temp
       else
          "#{temp2}/#{temp}"
       end
     end
end  

