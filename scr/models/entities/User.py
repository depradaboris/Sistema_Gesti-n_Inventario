from werkzeug.security import check_password_hash #,generate_password_hash #poner esta linea cuando se genera un pass hash
from flask_login import UserMixin

#clase que me refleja los datos de la tabla usuario, que sirve para manejar las entidades tipo usuario y la autentificacion
class User (UserMixin):
   
   def __init__(self,id_user,password,email,name ="" ) -> None:#
        self.id = id_user
        self.name = name
        self.password = password
        self.email = email
        #self.rol = rol
 
   @classmethod
   def check_password(self,hashed_password,password):
        return check_password_hash(hashed_password,password)# hashed_password es el que esta gardado en la base de datos y password es el texto plano
    
#print (generate_password_hash("Est123456"))# poner esta linea para ver el pass hash generado

