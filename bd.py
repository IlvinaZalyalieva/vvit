import psycopg2

conn = psycopg2.connect(database='saloonsss',
                        user='postgres',
                        password='zalyalievakazakova',
                        host='localhost',
                        port='5432')
mas = str(input('введите имя мастера\n'))
sal = str(input('введите название салона\n'))
ser = str(input('введите название услуги\n'))
pr = str(input('введите цену\n'))
ray = str(input('введите название района\n'))

cursor = conn.cursor()
conn.autocommit = True

cursor.execute('call insert_values(%s, %s, %s, %s, %s)', (sal,pr,ray, mas, ser))
