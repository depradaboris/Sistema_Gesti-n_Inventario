# installar flask-login, flask-mysqldb,  flask-wtf


from flask import Flask, render_template,request,redirect,url_for
from config import config

app = Flask(__name__)

@app.route('/')
def index():
    return redirect(url_for('login'))

# indicamos la ruta de inicio
@app.route('/login', methods=['GET','POST'])
def login():
    if request.method =='POST':
        print(request.form['email'])
        print(request.form['password'])
        return render_template ('login.html')
    else:    
        return render_template ('login.html')


# para poder arrancar la aplicacion
if __name__ == '__main__':
    app.config.from_object(config['development'])
    app.run()


