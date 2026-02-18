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
    '꽃',
    'kkot',
    'квітка',
    'flower',
    '꽃이 예뻐요.',
    'Базове слово для позначення квітки',
    'noun',
    'A1',
    'nature',
    NULL,
    'active',
    NOW(),
    NOW()
);