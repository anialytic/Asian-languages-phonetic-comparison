# відкрити файл
import pandas as pd
df = pd.read_excel("Dictionary-mini.xlsx", engine='openpyxl')

# тільки ці колонки
columns_to_show = ["tones_zh", "tones_ca", "tones_vi"]

# перевірка збігу в рядку
def has_tones_match(row):
    values = row[columns_to_show].tolist()
    # чи є повтори
    return len(values) != len(set(values))
    
#новий стовпчик із результатом
df["Has_match"] = df.apply(has_tones_match, axis=1)
print(df[columns_to_show + ["Has_match"]])
