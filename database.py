import sqlite3
from sqlite3 import Error
conn = sqlite3.connect('emp.db')
c = conn.cursor()
#c.execute('''CREATE TABLE city
           #  ([id] INTEGER PRIMARY KEY,[cityName] text)''')
             
c.execute("""INSERT INTO city
                          (id, cityName) 
                           VALUES 
                          (1,'mumbai')""")


                 
conn.commit()

          