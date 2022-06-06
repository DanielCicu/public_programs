IMPUESTO = 0.19

comida_costo = int(input("Costo de la comida: "))

comida_impuesto = comida_costo * IMPUESTO

print("Califica el servicio como:")
cliente_satisfaccion = int(input("1 → Muy satisfactorio\n2 → Satisfactorio\n3 → Insatisfactorio\n"))

if cliente_satisfaccion == 1 :

    propina = 0.14

elif cliente_satisfaccion == 2 :

    propina = 0.1

elif cliente_satisfaccion == 3 :

    propina = 0.05

else :

    print("Opción no válida")
    propina = 0

comida_propina = comida_costo * propina
cuenta = comida_costo + comida_impuesto + comida_propina

print("La cuenta es de $", round(cuenta))