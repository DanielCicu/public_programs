# Importar la librería de acceso a Postgres
import psycopg2
from datos_conexion import dc

def consultar_id2():
    try:
        #Se crea la conexión a la base de datos
        conexion = psycopg2.connect(**dc)
        #Se crea el cursor
        cursor = conexion.cursor()
        #Sentencia SQL
        sql='select * from userstories where id=%s'
        #Se hace un ciclo para verificar que el dato ingresado sea un número

        validar_id=False
        while validar_id==False:
            id=input('Digite el id del User Story: ')
            if id.isdecimal()==True:
                validar_id=True
            else:
                print("Debe de digitarse un valor numérico")

        #Establecer los parámetros
        parametros=(id)

        #Ejecución de la sentencia
        try:
            cursor.execute(sql,parametros)
            print("El dato es correcto")
            return id
        except:
            print("El dato ingresado no es correcto")
            return -1
        #Se cierra el cursor y la conexión con la base de datos
        cursor.close()
        conexion.close()

    except:
        print('La conexión con la base de datos ha fallado')
        exit()
        return -1