# відкрити файл
import pandas as pd
df = pd.read_excel("Dictionary-mini.xlsx", engine='openpyxl')

# тільки ці колонки
columns_to_show = ["syllable_zh", "syllable_ca", "syllable_ja", "syllable_ko", "Syllable_vi"]

# перевірка збігу в рядку
def has_syllable_match(row):
    values = row[columns_to_show].tolist()
    # чи є повтори
    return len(values) != len(set(values))

#новий стовпчик із результатом
df["Has_match"] = df.apply(has_syllable_match, axis=1)
print(df[columns_to_show + ["Has_match"]])