from consultar_userstory import con_userstory
from consultar_lista_proyectos import con_lista_proyectos
from consultar_proyecto import con_proyecto
from crear_proyecto import cr_proyecto
from crear_userstory import cr_userstory
from delete_userstory import del_userstory
from update_userstory import up_userstory
import os

try:
    usuario=input('\nBienvenido\n\nPor favor digite su nombre:')
    vis=False
    while vis==False:
        print(f'\n{usuario} por favor ingrese un número según las siguientes opciones:\n')
        print('Ingrese 1 para Crear un proyecto')
        print('\nIngrese 2 para Consultar la lista de proyectos')
        print('\nIngrese 3 para Consultar un proyecto')
        print('\nIngrese 4 para Crear un user story')
        print('\nIngrese 5 para Consultar un user story')
        print('\nIngrese 6 para Editar un user story')
        print('\nIngrese 7 para Eliminar un user story')
        print('\nIngrese 8 si desea cerrar este menú')
        opcion=int(input('\nOpción: '))
        if opcion==1:
            os.system('cls')
            print('Ha seleccionado la opción 1\nIniciando...\n')
            cr_proyecto()
        elif opcion==2:
            os.system('cls')
            print('Ha seleccionado la opción 2\nIniciando...\n')
            con_lista_proyectos()
        elif opcion==3:
            os.system('cls')
            print('Ha seleccionado la opción 3\nIniciando...\n')
            con_proyecto()
        elif opcion==4:
            os.system('cls')
            print('Ha seleccionado la opción 4\nIniciando...\n')
            cr_userstory()
        elif opcion==5:
            os.system('cls')
            print('Ha seleccionado la opción 5\nIniciando...\n')
            con_userstory()
        elif opcion==6:
            os.system('cls')
            print('Ha seleccionado la opción 6\nIniciando...\n')
            up_userstory()
        elif opcion==7:
            os.system('cls')
            print('Ha seleccionado la opción 7\nIniciando...\n')
            del_userstory()
        elif opcion==8:
            os.system('cls')
            vis=True
        else:
            os.system('cls')
            print('Ha ingresado un valor no válido')
        comp=False
        while comp==False:
            print('Si desea volver al menú ingrese 1, de lo contrario ingrese 2')
            cont=int(input('Opción: '))
            if cont==2:
                vis=True
                comp=True
            elif cont==1:
                vis=False
                comp=True
            else:
                print('Ha ingresado un valor no válido')
        os.system('cls')
    print('Se ha finalizado correctamente el programa')
except:
    print('Ha sucedido un error inesperado, por favor intentelo de nuevo')
    exit()