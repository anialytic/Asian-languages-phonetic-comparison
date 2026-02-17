select *
from korean_dictionary

INSERT INTO korean_dictionary (
    korean,
    romanization,
    translation_uk,
    translation_en,
    examples,
    notes,
    part_of_speech,
    level,
    tags,
    audio_url,
    status,
    created_at,
    updated_at
)
VALUES (
    '불',
    'bul',
    'вогонь',
    'fire',
    '불이 뜨거워요.',
    'Базове слово для позначення вогню',
    'noun',
    'A1',
    'nature',
    NULL,
    'active',
    NOW(),
    NOW()
);
