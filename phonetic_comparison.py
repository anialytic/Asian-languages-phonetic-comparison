# слова у латинській транскрипції
words = {
    'ukrainian': 'privit',
    'chinese': 'nihao',
    'japanese': 'konnichiwa',
    'korean': 'annyeonghaseyo'
}

# просте порівняння довжини рядків як груба "схожість"
for lang1, word1 in words.items():
    for lang2, word2 in words.items():
        if lang1 < lang2:
            common_letters = sum(1 for a, b in zip(word1, word2) if a == b)
            print(f"{lang1} ↔ {lang2}: {common_letters} спільних букв у позиціях")

