from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "Привет! Мое первое приложение в Docker работает!"

if __name__ == "__main__":
    # Важно: 0.0.0.0 позволяет принимать запросы извне контейнера
    app.run(host='0.0.0.0', port=5000)
