# Asian-languages-phonetic-comparison
Проєкт спрямований на дослідження фонетичної схожості мов країн Азії на рівні звучання та тональності  --> створення багатомовного онлайн-словника (українська-китайська-корейська-японська)  
Мета: виявити, які слова звучать схоже між мовами; простежити можливі історичні взаємозв'язки на основі вимови    
Перспектива: розвинути у повноцінний онлайн словник  

## Основні можливості
💮 Аналіз тональності слів на основі піньїнь та ютпхін  
💮 Порівняння звучання слів між китайською, кантонською, корейською, японською та в'єтнамською мовами    
💮 Інтерактивна програма, де можна вводити піньїнь та ютпхін, і отримувати тональний малюнок  
💮 Обробка та аналіз даних за допомогою Python (pandas)  

## Інструменти
- **Мова:** Python  
- **Бібліотеки:** pandas, (планується: levenshtein, librosa для аудіо/візуалізації)  
- **Формат даних:** xlsx, json  
- **Frontend:** html, css, js, figma(дизайн)  
- **Backend:**  ЩО ОБРАТИ?????????? python + flask, node.js js+fetch, node.js+express, python+fastAPI, PHP+Laravel???  

## Mindmap
Словник: 
  китайська - спрощена+традиційна, піньїн, українське транскрибування (+ звуковий супровід?)  
            - переклад  
            - приклади  
            - частина мови?  
            - окремо значення?  
  японська  - хіра/ката, українське транскрибування  
  корейська - корейський ієрогліф (+китайський?)    
            - читання англ/укр транскрипт?  

## Етапи?  
#### Ідея - Дизайн(Фігма) - Верстка(HTML/CSS/JS) - Backend+DB - API - Під'єднати фронтенд - Тестування   
- артборд словника  
- намалювати макет головної сторінки: поле пошуку, іконка пошуку  
- кольорова палітра, шрифти (пріорітет: мінімалізм + пастель)  
- карта сторінок словника: головна, результат пошуку, (про нас + контакт?)
- іконки для навігації  
- юзер флоу: пошук слова - результат - (деталі ?)  
- помилки? наприклад, неправильно введене слова  
- підсвітка слова при натисканні? категорії/теги  
- бд у постгре? чи firebase/supabase? (слово - визначення - приклад - категорія)  
- UI/UX дизайн для правильних кольорів та зрозумілого інтерфейсу  (які кольори, шрифти, настрій)?  
- які основні сторінки в словнику?  
- тезаурус, словник (можливо, додати кнопку, де обрати)  
- транслітерація онлайн  
- !!!  Додати сторінку Контакти чи Про нас  
- деплой та підтримка з оновленнями? як вирішити  питання?  

## Ресурси для дизайну:  
- “Refactoring UI” (Adam Wathan & Steve Schoger)
- YouTube: “DesignCourse”  
- Tailwind CSS + Tailwind UI / DaisyUІ, Material UI (для React), Bootstrap 5, фігма-шаблон
- https://coolors.co
- https://colorhunt.co  

## Поточні проблеми та завдання
- 🈶 Знаходить збіг, навіть якщо в 1 мові відрізняється кількість (через True or False = True?)
- 🈚️ Чи варто додати інші варіанти читання?
- 🈚️ Чи варто додати історичний розвиток?
- 🈶 Чи варто додати збіг за звучанням?
- 🈚️ Чи варто додати тайську? (у ній тональна система)
- 🈚️ Спробувати прописати код з використанням python Levenshtein
- 🈚️ Чи варто вивести слова, які збігаються, у SQL?
- 🈶 Спробувати написати програму з визначення тонального малюнку за системою Чжао? 
- 🈚️ Спробувати адаптувати код для читання файлу та автоматичного заповнення таблиці
- 🈚️ Візуалізація найпоширеніших слів (за кластерами/періодами)  
- 🈚️ Додати в рідмі англ та кит переклад
- 🈚️ Аналіз частотності ієрогліфів (потенційно новий репо)
- 🈚️ Бізнес-кейс? визначити емоції у відгуках кит мовою (потенційно новий репо)
- 🈚️ Як витягувати дані автоматично?
- 🈚️ Чи можна переписати код з пошуку схожості звучання з використанням регулярних виразів?
- 🈶 Chao_tone_letters.py: зробити незалежним від таблиці, він має самостійно розпізнавати систему
- 🈚️ Додати приклад використання (фрагмет коду/скрін/демо) до рідмі
- 🈚️ Можливість автозаповнювати таблицю через Chao_tone_letters.py
- 🈚️ librosa: візуалізація звукової хвилі чи спектрограма?


## СХЕМА   

Table: chinese_dictionary  
────────────────────────────────────────────────────────────  
id (PK)            BIGSERIAL   
────────────────────────────────────────────────────────────   
chinese_tr         TEXT        — Traditional Chinese  
chinese_simple     TEXT        — Simplified Chinese  
pinyin             TEXT        — Pinyin (latin)  
zhuyin             TEXT        — Zhuyin (Bopomofo)  
  
translation_uk     TEXT        — Ukrainian translation  
translation_en     TEXT        — English translation  
  
examples           TEXT        — Usage examples  
notes              TEXT        — Linguistic notes  
  
measure_words      TEXT        — Measure words (for nouns)  
part_of_speech     VARCHAR(30) — noun, verb, adj, etc.  
  
level              VARCHAR(20) — HSK1, HSK2, ...  
tags               TEXT        — comma-separated tags  
  
audio_url          TEXT        — Pronunciation audio URL  
  
status             VARCHAR(20) — draft | published  
created_at         TIMESTAMP   — Record creation time  
updated_at         TIMESTAMP   — Last update time  
────────────────────────────────────────────────────────────  
  
  
Table: japanese_dictionary  
────────────────────────────────────────────────────────────  
id (PK)            BIGSERIAL  
────────────────────────────────────────────────────────────  
kanji             TEXT        — Kanji (може бути NULL)  
hiragana          TEXT        — Hiragana  
katakana          TEXT        — Katakana  
romaji            TEXT        — Latin transcription 
  
translation_uk    TEXT        — Ukrainian translation  
translation_en    TEXT        — English translation  
  
examples          TEXT        — Usage examples  
notes             TEXT        — Linguistic notes  
  
part_of_speech    VARCHAR(30) — noun, verb, adj, etc.  
  
level             VARCHAR(20) — JLPT-N5, N4, etc.  
tags              TEXT        — comma-separated tags  
  
audio_url         TEXT        — Pronunciation audio URL  
  
status            VARCHAR(20) — draft | published  
created_at        TIMESTAMP   — Record creation time  
updated_at        TIMESTAMP   — Last update time  
────────────────────────────────────────────────────────────  
  
Table: korean_dictionary  
────────────────────────────────────────────────────────────  
id (PK)            BIGSERIAL  
────────────────────────────────────────────────────────────  
korean            TEXT        — Korean word  
romanization      TEXT        — Latin transcription  
  
translation_uk    TEXT        — Ukrainian translation  
translation_en    TEXT        — English translation  
  
examples          TEXT        — Usage examples  
notes             TEXT        — Linguistic notes  
  
part_of_speech    VARCHAR(30) — noun, verb, adj, etc.  
  
level             VARCHAR(20) — TOPIK1, TOPIK2, etc.  
tags              TEXT        — comma-separated tags  
  
audio_url         TEXT        — Pronunciation audio URL  
  
status            VARCHAR(20) — draft | published  
created_at        TIMESTAMP   — Record creation time  
updated_at        TIMESTAMP   — Last update time  
────────────────────────────────────────────────────────────  

