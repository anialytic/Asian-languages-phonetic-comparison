select *
from chinese_dictionary

INSERT INTO chinese_dictionary (
    chinese_tr,
    chinese_simple,
    pinyin,
    zhuyin,
    translation_uk,
    translation_en,
    examples,
    notes,
    measure_words,
    part_of_speech,
    level,
    tags,
    audio_url,
    status,
    created_at,
    updated_at
)
VALUES (
    '水',
    '水',
    'shuǐ',
    'ㄕㄨㄟˇ',
    'вода',
    'water',
    '水很重要。
Water is very important.

我每天喝很多水。
I drink a lot of water every day.',
    'Базове слово для позначення води; часто використовується у складних словах.',
    NULL,
    'noun',
    'HSK1',
    'nature',
    NULL,
    'draft',
    NOW(),
    NOW()
);