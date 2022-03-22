from crypt import methods
from typing import List, Dict
from flask import Flask, render_template, url_for, flash, redirect, request
import mysql.connector
import json


app = Flask(__name__)
app.config['SECRET_KEY'] = 'emanmostafaazabmostafaazab'


DB_conf = {
'user': 'root',
'password': 'root',
'host': 'db',
'port': '3306',
'database': 'geography'
}


def get_db_connection():
    connection = mysql.connector.connect(**DB_conf)
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM img')
    results = [c for c in cursor]
    cursor.close()
    connection.close()
    return results
     

@app.route('/')
def index():
    rows = get_db_connection()
    return render_template('index.html', rows=rows)


@app.route('/add', methods = ['POST', 'GET'])
def add():  
    if request.method == 'POST':
        img_title = request.form['img_title']
        img_url = request.form['img_url']
        img_desc = request.form['img_desc']
        text_url = request.form['text_url']

        if not img_title:
            flash('Image name is required!')
        else:
            connection = mysql.connector.connect(**DB_conf)
            cursor = connection.cursor()
            rr = f"INSERT INTO img (img_title, img_url, img_desc, text_url) VALUES ('{img_title}', '{img_url}' , '{img_desc}','{text_url}');"
            cursor.execute(rr)
            connection.commit()
            cursor.close()
            connection.close()
            return redirect(url_for('index'))
    return render_template('add.html')

@app.route('/delete/<string:img>', methods= ['GET'])
def delete(img):
    flash('Image was successfully deleted!')
    connection = mysql.connector.connect(**DB_conf)
    cursor = connection.cursor()
    cursor.execute('DELETE FROM img WHERE img_title = %s', (img,))
    connection.commit()
    cursor.close()
    connection.close()
    return redirect(url_for('index'))

    

if __name__ == '__main__':
    app.run(host='0.0.0.0')