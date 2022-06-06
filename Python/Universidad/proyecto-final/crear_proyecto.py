# Importar la librería de acceso a Postgres
import psycopg2
from datos_conexion import dc

def cr_proyecto():
    try:
        # Conexión a la base de datos Postgres y creación del cursor de ejecución sentencias sql
        conexion = psycopg2.connect(**dc)    
        cursor = conexion.cursor()
        print('Conexión exitosa a la base de datos')
        print('Conexión iniciada')

        # Creación de la sentencia SQL
        sql = 'insert into Proyectos(nombre, descripcion) values(%s, %s)'

        # Definición de los variables de validacion
        name = False
        validacion_descripcion = False

        # Definición de los parametros
        while name==False:
            nombre = input('Digite el nombre del nuevo proyecto: ')
            namelen = len(nombre)
            if  namelen == 0 or namelen >= 201:
                name = False
            else:
                name = True
            if name == False:
                print("Por favor vuelva a digitar el nombre del proyecto")
    
        while validacion_descripcion == False:                 
            descripcion = input('Digite la descripción de su proyecto: ')
            descripcionlen = len(descripcion)
            if descripcionlen >= 1001: 
                validacion_descripcion = False
            else:
                validacion_descripcion = True
            if validacion_descripcion == False:
                print("Por favor vuelva a digitar la descripción del proyecto")

        parametros = (nombre, descripcion)  
        # Ejecución de la sentencia sql 
        cursor.execute(sql, parametros)        
        # Guardar los datos en la base de datos
        conexion.commit()
        print('Sus datos han sido guardados de manera exitosa')  
        # Cierre del cursor y la conexión
        cursor.close()         
        conexion.close()
        print('Conexión terminada')

    except:
        print('La conexión con la base de datos ha fallado')
        exit()