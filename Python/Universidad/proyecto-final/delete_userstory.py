#Importar la librería de acceso a Postgres
import psycopg2
from datos_conexion import dc

def del_userstory():
    try:
        #Conexión base de datos
        conexion = psycopg2.connect(**dc)
        cursor = conexion.cursor()
        print('Conexión exitosa a la base de datos')
        print('Conexión iniciada')

        try:
            #Consulta del nombre del user story
            codigo=str(input('Ingrese el código de user story que desea eliminar: '))
            sql='select nombre from userstories where codigo=%s'
            parametros=(codigo,)
            cursor.execute(sql, parametros)
            registros = cursor.fetchall()
            for iterador in registros:
                nombre=iterador[0]

            print(f'¿Esta seguro que desea eliminar el user story {nombre}?')
            validar_delete = False
            while validar_delete == False :
                confirmacion=input('Digite si en caso que desee eliminar el user story. \nDigite no para conservar el user story: ')
                if confirmacion.lower()== 'si':
                    validar_delete = True
                    sql_userstory='delete from userstories where codigo=%s'
                    cursor.execute(sql_userstory, parametros)
                    conexion.commit()
                    print(f'Se ha eliminado el user story {nombre}')
                elif confirmacion.lower() == 'no':
                    validar_delete = True
                    print(f'El user story {nombre} se ha conservado en la base de datos')
                else:
                    print('La palabra ingresada no es válida, intente nuevamente')
        except:
            print('Al parecer el código ingresado no se existe en la base de datos')
            exit()

        #Cerrar el cursor
        cursor.close()

        #Cerrar la conexión
        conexion.close()
        print('Conexión terminada')
    except:
        print('La conexión con la base de datos ha fallado')
        exit()