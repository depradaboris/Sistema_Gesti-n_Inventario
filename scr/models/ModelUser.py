from .entities.User import  User

class ModelUser():
    # funcion para autenticar el objeto usuario en el objeto db
    @classmethod 
    def login(self,db,user):
        try:
            #compruebo si el usuario existe
            cursor = db.connection.cursor() # inicializo cursor para interactuar con la db
            sql = """SELECT id_usuario,contraseña,email,nombre FROM usuario 
              WHERE email = '{}'""".format(user.email) # tiene formato tupla [ id,contraseña,email,imag_usuario,nombre]     
            #compruebo la contraseña
            cursor.execute(sql)
            row = cursor.fetchone()
            if row != None:
                user = User(row[0],User.check_password(row[1],user.password),row[2],row[3])     
                return user
            else:
                return None
        except Exception as ex:
            raise Exception (ex)
        
    @classmethod 
    def get_by_id(self,db,id):
        try:
            #compruebo si el usuario existe
            cursor = db.connection.cursor() # inicializo cursor para interactuar con la db
            sql = """SELECT id_usuario,email,nombre FROM usuario 
              WHERE id_usuario= {}""".format(id) # tiene formato tupla [ id,nombre,password]
            #compruebo la contraseña
            cursor.execute(sql)
            row = cursor.fetchone()
            if row != None:
                return User(row[0],None,row[1],row[2]) 
            else:
                return None
        except Exception as ex:
            raise Exception (ex)

