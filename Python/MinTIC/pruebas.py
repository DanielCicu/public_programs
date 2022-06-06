VALOR1 = 100
VALOR2 = 250
VALOR3 = 800
GALON = 3785.41
LITRO = 1000

tamano_contenedor = float(input("Tamaño del contenedor en mililitros: "))
valor_total_contenedores = (tamano_contenedor <= LITRO) * VALOR1 + (tamano_contenedor > LITRO and tamano_contenedor < GALON) * VALOR2 + (tamano_contenedor >= GALON) * VALOR3

tamano_contenedor = float(input("Tamaño del contenedor en mililitros: "))
valor_total_contenedores = (tamano_contenedor <= LITRO) * VALOR1 + (tamano_contenedor > LITRO and tamano_contenedor < GALON) * VALOR2 + (tamano_contenedor >= GALON) * VALOR3 + valor_total_contenedores

tamano_contenedor = float(input("Tamaño del contenedor en mililitros: "))
valor_total_contenedores = (tamano_contenedor <= LITRO) * VALOR1 + (tamano_contenedor > LITRO and tamano_contenedor < GALON) * VALOR2 + (tamano_contenedor >= GALON) * VALOR3 + valor_total_contenedores

tamano_contenedor = float(input("Tamaño del contenedor en mililitros: "))
valor_total_contenedores = (tamano_contenedor <= LITRO) * VALOR1 + (tamano_contenedor > LITRO and tamano_contenedor < GALON) * VALOR2 + (tamano_contenedor >= GALON) * VALOR3 + valor_total_contenedores

tamano_contenedor = float(input("Tamaño del contenedor en mililitros: "))
valor_total_contenedores = (tamano_contenedor <= LITRO) * VALOR1 + (tamano_contenedor > LITRO and tamano_contenedor < GALON) * VALOR2 + (tamano_contenedor >= GALON) * VALOR3 + valor_total_contenedores

print("El valor total será de $" + str(round(valor_total_contenedores)))