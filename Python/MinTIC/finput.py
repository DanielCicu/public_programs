codigo_estudiante = input("\nBienvenido\nIngrese su código: ")

nota = float(input("\nIngrese la nota del primer parcial: "))
nota = float(input("Ingrese la nota del segundo parcial: ")) + nota
nota = float(input("Ingrese la nota del tercer parcial: ")) + nota

nota = nota / 3

print("\nLa nota final del estudiante con código " + codigo_estudiante + " es " + str(round(nota, 2)))