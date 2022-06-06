import psycopg2
from datos_conexion import dc
#El código se encarga de revisar que el código de user story no se repita

def code(codigos):
    try:
        #Se crea la conexión a la base de datos
        conexion = psycopg2.connect(**dc)    
        #Se crea el cursor
        cursor = conexion.cursor()
        #Se ejecuta la sentencia SQL
        cursor.execute('select codigo from userstories')
        #Se obtienen los registros
        registros= cursor.fetchall()
        validar_codigo= 0
        for registro in registros:
            if str(codigos) == registro[0]:
                validar_codigo = validar_codigo + 1

        if validar_codigo == 0:
            confirmacion = True
        else:
            confirmacion=False
        #Se cierra el cursor y la conexión con la base de datos
        cursor.close()         
        conexion.close()
        return confirmacion
    except:
        print('La conexión con la base de datos ha fallado')
        exit()
        return False


