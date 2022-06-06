#Importar la librería de acceso a Postgres
import psycopg2
from datos_conexion import dc
from select_idproyecto import *
from select_codigo import *

def cr_userstory():
    try:
        #Conexión a base de datos
        conexion = psycopg2.connect(**dc)    
        cursor = conexion.cursor()
        print('Conexión exitosa a la base de datos')
        print('Conexión iniciada')
        
        #Cadena de sql
        sql = 'insert into userstories(codigo, nombre, card, conversation, confirmation, idproyectos) values(%s, %s, %s, %s, %s, %s)'
        
        #Variables de validación
        validacion_codigo = False
        validacion_nombre = False
        validacion_card = False
        validacion_conversation = False
        validacion_confirmation = False
        
        #Ingresar el código del user story
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
                print("Por favor vuelva a digitar el confirmation del user story: ")

        #Parámetros 
        idproyecto = consultar_id()

        if idproyecto != -1 :
            parametros = (codigo, nombre, card, conversation, confirmation, idproyecto)    
            cursor.execute(sql, parametros)  
            print('cursor')
            conexion.commit()  
            print('Sus datos has sido guardados de manera exitosa')   
    
        else:
            print("El id ingresado no existe en la base de datos")
            #Guardar los cambios en la base de datos         
            
        #Cerrar el cursor       
        cursor.close()     

        #Cerrar la conexión
        conexion.close()
        print('Conexión terminada')

    except:
        print('La conexión con la base de datos ha fallado')
        exit()