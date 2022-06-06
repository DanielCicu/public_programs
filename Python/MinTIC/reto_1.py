codigo = int(input())
nombre = input()
cantidad = int(input())
valor_unitario = float(input())
valor_producto = cantidad * valor_unitario
iva = valor_producto * 0.19
valor_final = valor_producto + iva
print(codigo)
print(nombre)
print(valor_producto)
print(valor_final)