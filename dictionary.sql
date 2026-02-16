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
    '물',
    'mul',
    'вода',
    'water',
    '물을 많이 마셔요.',
    'Базове слово для позначення води',
    'noun',
    'A1',
    'nature',
    NULL,
    'active',
    NOW(),
    NOW()
);