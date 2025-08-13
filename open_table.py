# import потрібних бібліотек
import pandas as pd

# шлях до Excel файлу
file_path = 'Dictionary-mini.xlsx'  

# читання Excel файлу
df = pd.read_excel(file_path, engine='openpyxl')

# вивід таблиці у термінал
print(df)
