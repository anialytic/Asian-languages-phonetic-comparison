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
  
#words = {
    #'ukrainian': 'privit',
    #'chinese': 'nihao',
    #'japanese': 'konnichiwa',
    #'korean': 'annyeonghaseyo'
#}

# просте порівняння довжини рядків як груба "схожість"
#for lang1, word1 in words.items():
    #for lang2, word2 in words.items():
        #if lang1 < lang2:
            #common_letters = sum(1 for a, b in zip(word1, word2) if a == b)
            #print(f"{lang1} ↔ {lang2}: {common_letters} спільних букв у позиціях")

