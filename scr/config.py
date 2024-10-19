# parametros para indicar la conexion a nuestra base de datos

class Config:
    SECRET_KEY = 'ProyectoInformatico2024' # llave que sirve para envio de mensajes en flask


class DevelopmentConfig(Config):
    DEBUG = True
    #parametros para la conexion a la base de datos
    MYSQL_HOST = 'localhost'
    MYSQL_USER = 'root'           # nombre que figura en la cuenta de usuario de phpmysql
    MYSQL_PASSWORD =''      # pass de la cuenta de usurio
    MYSQL_DB ='gestion_inventario'# nuestra base de dato


config = {'development':DevelopmentConfig}