# відкрити файл
import pandas as pd
df = pd.read_excel("Dictionary-mini.xlsx", engine='openpyxl')

# тільки ці колонки
columns_to_show = ["transliteration_zh", "transliteration_ca", "transliteration_ja", "transliteration_ko", "transliteration_vi"]

def similarity_ratio(a, b):
    if not a or not b:
        return 0
    matches = sum(1 for x, y in zip(a, b) if x == y)
    return matches / max(len(a), len(b))

def letter_overlap(a, b):
    if not a or not b:
        return 0
    set_a, set_b = set(a), set(b)
    return len(set_a & set_b) / len(set_a | set_b)

# Функція для перевірки збігу між усіма парами колонок
def has_match(row):
    words = [row[col] for col in columns_to_show if pd.notnull(row[col])]
    for i in range(len(words)):
        for j in range(i+1, len(words)):
            if similarity_ratio(words[i], words[j]) > 0.7 and letter_overlap(words[i], words[j]) > 0.5:
                return True
    return False

df["Has_match"] = df.apply(has_match, axis=1)

print(df[columns_to_show + ["Has_match"]])