from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return ("Здравствуйте Андрей александрович"
            "Выполняю лабораторную работу Леонтьев Дмитрий Цтс_32")

def plus(a,b):
    return a+b

print (plus(723,276 ))

def minus(a,b):
    return a-b

print (minus(723,276 ))

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)