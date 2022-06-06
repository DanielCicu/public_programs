#Importar la librería de acceso a Postgres
import psycopg2 
from datos_conexion import dc
from select_idproyecto import consultar_id
from select_iduserstory import consultar_id2

def con_proyecto():
    try:
        #Se crea la conexión a la base de datos
        conexion = psycopg2.connect(**dc)    
        #Se crea el cursor
        cursor = conexion.cursor()
    
        id_proyecto=consultar_id()
        if int(id_proyecto) != -1:
            #Se ejecuta la sentencia SQL
            sql='select nombre from Proyectos where id=%s'
            parametros=(id_proyecto)
            cursor.execute(sql,parametros)
            name_proyecto=cursor.fetchall()
            
            for iterador in name_proyecto:
                nombre_proyecto=iterador[0]
            
            sql= 'select nombre,codigo from userstories where idproyectos=%s'
            parametros=(id_proyecto)
            cursor.execute(sql,parametros)
            nombre_y_codigo=cursor.fetchall()

            print(f'\n{nombre_proyecto}')

            for iterador in nombre_y_codigo:
                name=iterador[0]
                code=iterador[1]
                print(f'Nombre del User Story: {name}\nCódigo del User Story: {code}\n')
        else:
            print("El id ingresado no existe en la base de datos")
        
        #Se cierra el cursor y la conexión con la base de datos
        cursor.close()         
        conexion.close()

    except:
        print('La conexión con la base de datos ha fallado')
        exit()
