object tom {
    var energia = 50
    method comer(unRaton){
        energia = energia + 12 + unRaton.peso() // <- esto de aca seria polimorfismo, osea hacer que otra cosa se encargue de conocer la infor que necesito
    }
    method correr(distancia){
        energia = energia - distancia * 0.5
    }
    method velocidadMax(){
        return 5 + energia * 0.1
    }
    method energia(){return energia} // no lo pide en el enunciado pero lo pide en los test

    method puedeCazarAlgoA_(unaDistancia){ //metodo de consulta
        return energia > unaDistancia / 2
    }
    method cazarSiPuede(unRaton, unaDistancia){ //metodo de indicacion
        if(self.puedeCazarAlgoA_(unaDistancia)){
            self.correr(unaDistancia)
        }
    }
}

object jerry {
  var edad = 2

  method peso(){
    return edad * 20 
  }

  method cumpleAnios(){
    edad += 1 // significa al valor / edad atributo sumale un 1
  }

  method edad(){return edad}
}

object nibbles {  
  method peso(){return 35} //no lo hago constante porque no usaria el peso en ningun otro calculo// importante no meter atributos que no vamos a usar no hacer codgio de mas
}

// Inventar otro ratón -- encapsulamiento muchas veces no quiero que se sepa la edad por ejemplo
// encapsular seria tener varias variables internas que no estan expuestas