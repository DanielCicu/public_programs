#Importar la librería de acceso a Postgres
import psycopg2 
from datos_conexion import dc

def con_lista_proyectos():
    try:
        #Creación de la conexión a la base de datos
        conexion = psycopg2.connect(**dc)    
        #Creación del cursor
        cursor = conexion.cursor()
        #Se ejecuta la sentencia SQL
        cursor.execute('select * from Proyectos')
        #Se obtienen los registros
        registros= cursor.fetchall()

        #Ciclo for para mostrar cada uno de los registros
        for registro in registros:
            nombre_proyecto=registro[1]
            descripcion_proyecto=registro[2]
            print(f'*{nombre_proyecto}:\n{descripcion_proyecto}\n ')    

        #Cierre del cursor y la conexión con la base de datos
        cursor.close()         
        conexion.close()

    except:
        print('La conexión con la base de datos ha fallado')
        exit()