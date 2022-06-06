N = int(input())
total_final = 0
total_iva = 0

for i in range(1, N + 1) :

  codigo = int(input())
  nombre = input()
  cantidad = int(input())
  valor_unitario = float(input())
  iva_tipo = int(input())
  
  if iva_tipo == 1 :

    iva = 1

  elif iva_tipo == 2 :

    iva = 1.05

  else :

    iva = 1.19

  valor_producto = cantidad * valor_unitario
  producto_iva = valor_producto * iva
  
  total_iva = total_iva + (producto_iva - producto_iva / iva)
  total_final = total_final + producto_iva

  print(codigo)
  print(nombre)
  print(valor_producto)
  print(producto_iva)
  
print(total_final)

if total_iva == 0:

  print(int(total_iva))

else :
    
  print(total_iva)