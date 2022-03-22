from crypt import methods
from typing import List, Dict
from flask import Flask, render_template, url_for, flash, redirect, request
import mysql.connector
import json


app = Flask(__name__)
#app.config['SECRET_KEY'] = 'emanmostafaazabmostafaazab'


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




if __name__ == '__main__':
    app.run(host='0.0.0.0')