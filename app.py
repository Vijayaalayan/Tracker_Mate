from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index(name = None):
  return render_template('index.html', name = name)

@app.route('/exec')
def parse(name = None):
    import collect_data
    print("done")
    return render_template('index.html', name = name)

@app.route('/exec1')
def parse1(name = None):
    import train
    print("done")
    return render_template('index.html', name = name)

num1 = []

@app.route('/exec2')
def parse2():
    import predict
    print("done")
    num1.append(predict.num)
    return render_template('number.html', name = num1)

if __name__ == '__main__':
    app.run()
    app.debug = True