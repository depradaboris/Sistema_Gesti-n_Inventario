# installar flask-login, flask-mysqldb,  flask-wtf
from flask import Flask, render_template,request,redirect,url_for,flash
from config import config
from flask_mysqldb import MySQL
from flask_login import LoginManager,login_user,logout_user,login_required
from flask_wtf.csrf import CSRFProtect #para generar el token

#Modelos
from models.ModelUser import ModelUser

#Entities:
from models.entities.User import User 

app = Flask(__name__)
csrf = CSRFProtect()

db = MySQL(app) # conexion con nuestra base de datos
login_manager_app=LoginManager(app)
@login_manager_app.user_loader
def load_user(id):
    return ModelUser.get_by_id(db,id)

@app.route('/')
def index():
    return redirect(url_for('login'))

# indicamos la ruta de inicio
@app.route('/login', methods=['GET','POST'])
def login():
    if request.method =='POST':
        user = User (0,request.form['password'],request.form['email'])
        logged_user = ModelUser.login(db, user) # user es el que se acaba de crear
        if logged_user != None:
            if logged_user.password:
               login_user(logged_user)
               return redirect(url_for('home')) 
            else:
                flash("Contraseña incorrecta")
                return render_template ('login.html')
        else:
            flash("El usuario no existe")
            return render_template ('login.html')
    else: 
        return render_template ('login.html')
    
@app.route('/logout')
def logout():
    logout_user()
    return redirect(url_for('login')) 

@app.route('/home') #proteje de ingresos de usuarios no autorizados
@login_required 
def home():
    return render_template('home.html')

def status_401(error):
    return redirect(url_for ('login'))

def status_404(error):
    return "<h1> Pagina no enontrada</h1>", 404

# para poder arrancar la aplicacion
if __name__ == '__main__':
    app.config.from_object(config['development'])
    csrf.init_app(app)
    app.register_error_handler (401,status_401)
    app.register_error_handler (404,status_404)
    app.run()



