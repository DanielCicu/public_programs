#Importar la librería de acceso a Postgres
import psycopg2 
from datos_conexion import dc
from select_idproyecto import consultar_id
from select_iduserstory import consultar_id2

def con_userstory():
    try:
        #Se crea la conexión a la base de datos
        conexion = psycopg2.connect(**dc)    
        #Se crea el cursor
        cursor = conexion.cursor()
        #Se ejecuta la sentencia SQL
        id_proyecto=consultar_id()

        if id_proyecto!=-1:
            id_userstory=consultar_id2()
            SQL='select nombre from proyectos where id=%s'
            parametros=(id_proyecto)
            cursor.execute(SQL,parametros)
            name_proyecto= cursor.fetchall()
            for iterador in name_proyecto:
                nombre_proyecto=iterador[0]
            if id_userstory!=str(-1):
                SQL='select * from userstories where idproyectos=%s'
                parametros=(id_proyecto)
                cursor.execute(SQL,parametros)
                registros= cursor.fetchall()
                for registro in registros:
                    if str(registro[0])==id_userstory:
                        codigo_userstory=registro[1]
                        nombre_userstory=registro[2]
                        card_userstory=registro[3]
                        conversation_userstory=registro[4]
                        confirmation_userstory=registro[5]
                        print(f'\nNombre del proyecto: {nombre_proyecto}\n')
                        print(f'Código del user story: {codigo_userstory}\n')
                        print(f'Nombre del user story: {nombre_userstory}\n')
                        print(f'Card del user story: {card_userstory}\n')
                        print(f'Conversation del user story: {conversation_userstory}\n')
                        print(f'Confirmation del user story: {confirmation_userstory}\n')
            else:
                print("User story inexistente... retornando al menú principal")
        else:
            print("Proyecto inexistente... retornando al menú principal")
        
        #Se cierra el cursor y la conexión con la base de datos
        cursor.close()   
        conexion.close()

    except:
        print('La conexión con la base de datos ha fallado')
        exit()