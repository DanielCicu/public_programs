# Importar la librería de acceso a Postgres
import psycopg2
from datos_conexion import dc
from select_codigo import *

def up_userstory():
    try:
        #Conexión base de datos
        conexion = psycopg2.connect(**dc)    
        cursor = conexion.cursor()
        print('Conexión exitosa a la base de datos')
        print('Conexión iniciada')
        cursor.execute('select id from Proyectos')
        registros=cursor.fetchall()
        #Cadena de sql
        sql_codigo= 'update userstories set codigo=%s where idproyectos=%s'
        sql_nombre= 'update userstories set nombre=%s where idproyectos=%s'
        sql_card= 'update userstories set card=%s where idproyectos=%s'
        sql_conversation= 'update userstories set conversation=%s where idproyectos=%s'
        sql_confirmation= 'update userstories set confirmation=%s where idproyectos=%s'
        #variables de validación
        validacion_codigo = False
        validacion_nombre = False
        validacion_card = False
        validacion_conversation = False
        validacion_confirmation = False
        validacion_idproyectos = False

        
        while validacion_idproyectos==False:
            idproyectos = int(input('Digite el id del proyecto a modificar: '))
            for iterador in registros:
                str_id=iterador[0]
                if str_id==idproyectos:
                    validacion_idproyectos=True
            if validacion_idproyectos==True:
                print("El proyecto ha sido encontrado")
            if validacion_idproyectos==False:
                print("El proyecto no fue encontrado")
                
        
        #Ingresar el codigo del user story
        while validacion_codigo==False:
            codigo = input('Digite el código del nuevo user story: ')
            validacion_code=code(codigo)
            codelen = len(codigo)
            if  codelen == 0 or codelen >= 46:
                validacion_codigo = False
            else:
                validacion_codigo = True
            if validacion_code == False:
                validacion_codigo=False
                print("El código digitado ya esta registrado en la base de datos")
            if validacion_codigo == False:
                print("Por favor vuelva a digitar el código del user story")

        #Ingresar el nombre del user story
        while validacion_nombre==False:
            nombre = input('Digite el nombre del nuevo user story: ')
            namelen = len(nombre)
            if  namelen == 0 or namelen >= 501:
                validacion_nombre = False
            else:
                validacion_nombre = True
            if validacion_nombre == False:
                print("Por favor vuelva a digitar el nombre del user story: ")  

        #Ingresar el card del user story
        while validacion_card == False:                 
            card = input('Digite el card del user story de su proyecto: ')
            cardlen = len(card)
            if cardlen >= 5001: 
                validacion_card = False
            else:
                validacion_card = True
            if validacion_card == False:
                print("Por favor vuelva a digitar el card del user story: ")

        #Ingresar el conversation del user story
        while validacion_conversation == False:                 
            conversation = input('Digite el conversation del user story de su proyecto: ')
            converlen = len(conversation)
            if converlen >= 5001: 
                validacion_conversation = False
            else:
                validacion_conversation = True
            if validacion_conversation == False:
                print("Por favor vuelva a digitar el conversation del user story: ")

        #Ingresar el confirmation del user story
        while validacion_confirmation == False:                 
            confirmation = input('Digite el confirmation del user story de su proyecto: ')
            confirlen = len(confirmation)
            if confirlen >= 5001: 
                validacion_confirmation = False
            else:
                validacion_confirmation = True
            if validacion_confirmation == False:
                print("Porfavor vuelva a digitar el confirmation del user story: ")

        #Parámetros 
        parametros = (codigo, idproyectos)
        parametros1 = (nombre,idproyectos) 
        parametros2 = (card,idproyectos) 
        parametros3 = (conversation,idproyectos) 
        parametros4 = (confirmation,idproyectos) 

        # Ejecución de la sentencia    
        cursor.execute(sql_codigo, parametros) 
        cursor.execute(sql_nombre, parametros1)
        cursor.execute(sql_card, parametros2)
        cursor.execute(sql_conversation, parametros3)
        cursor.execute(sql_confirmation, parametros4)

        #Guardar cambios en la base de datos       
        conexion.commit()  
        
        print('Sus datos has sido guardados de manera exitosa!')   
            
        #Cerrar el cursor       
        cursor.close()     

        #Cerrar la conexion    
        conexion.close()
        print('Conexion terminada')

    except:
        print('La conexión con la base de datos ha fallado')
        exit()