# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

#Algunas pruevas se van a realizar para comprobar que funciona correctamente toda la clase Fraccion, utilizaremos para dicho fin assert_equal que se encargará de realizar una comparación entre el valor del calculo y el valor que da la funcion de la clase, si existe una coincidencia significará que se ha realizado con éxito en caso contrario se nos notificaría con mensajes de error.

class Test_Fraccion < Test::Unit::TestCase

        def test_to_s
                a = Fraccion.new(3,2)
                valor_esperado = a.to_s
                assert_equal "3/2", valor_esperado
        end
        
        def test_suma
                a = Fraccion.new(5,2)
                valor_esperado = a.suma(7,3)
                assert_equal "29/6", valor_esperado
        end

        def test_resta
                a = Fraccion.new(5,2)
                valor_esperado = a.resta(7,3)
                assert_equal "1/6", valor_esperado
        end

        def test_producto
                a = Fraccion.new(3,2)
                valor_esperado = a.producto(8,5)
                assert_equal "24/10", valor_esperado
        end
        
        def test_division
                a = Fraccion.new(3,2)
                valor_esperado = a.division(2,9)
                assert_equal "27/4", valor_esperado
        end
end
