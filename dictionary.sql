CREATE TABLE chinese_dictionary (
    id BIGSERIAL PRIMARY KEY,

    chinese_tr TEXT NOT NULL,
    chinese_simple TEXT NOT NULL,
    pinyin TEXT,
    zhuyin TEXT,

    translation_uk TEXT NOT NULL,
    translation_en TEXT,

    examples TEXT,
    notes TEXT,

    measure_words TEXT,
    part_of_speech VARCHAR(30),

    level VARCHAR(20),
    tags TEXT,

    audio_url TEXT,

    status VARCHAR(20) DEFAULT 'draft',

    created_at TIMESTAMP DEFAULT now(),
    updated_at TIMESTAMP DEFAULT now()
);


CREATE INDEX idx_chinese_tr ON chinese_dictionary (chinese_tr);
CREATE INDEX idx_chinese_simple ON chinese_dictionary (chinese_simple);
CREATE INDEX idx_chinese_pinyin ON chinese_dictionary (pinyin);
CREATE INDEX idx_chinese_translation_uk ON chinese_dictionary (translation_uk);
CREATE INDEX idx_chinese_translation_en ON chinese_dictionary (translation_en);
CREATE INDEX idx_chinese_level ON chinese_dictionary (level);


CREATE TABLE japanese_dictionary (
    id BIGSERIAL PRIMARY KEY,

    kanji TEXT,
    hiragana TEXT,
    katakana TEXT,
    romaji TEXT,

    translation_uk TEXT NOT NULL,
    translation_en TEXT,

    examples TEXT,
    notes TEXT,

    part_of_speech VARCHAR(30),

    level VARCHAR(20),
    tags TEXT,

    audio_url TEXT,

    status VARCHAR(20) DEFAULT 'draft',

    created_at TIMESTAMP DEFAULT now(),
    updated_at TIMESTAMP DEFAULT now()
);


CREATE INDEX idx_japanese_kanji ON japanese_dictionary (kanji);
CREATE INDEX idx_japanese_hiragana ON japanese_dictionary (hiragana);
CREATE INDEX idx_japanese_katakana ON japanese_dictionary (katakana);
CREATE INDEX idx_japanese_romaji ON japanese_dictionary (romaji);
CREATE INDEX idx_japanese_translation_uk ON japanese_dictionary (translation_uk);
CREATE INDEX idx_japanese_translation_en ON japanese_dictionary (translation_en);
CREATE INDEX idx_japanese_level ON japanese_dictionary (level);


CREATE TABLE korean_dictionary (
    id BIGSERIAL PRIMARY KEY,

    korean TEXT NOT NULL,
    romanization TEXT,

    translation_uk TEXT NOT NULL,
    translation_en TEXT,

    examples TEXT,
    notes TEXT,

    part_of_speech VARCHAR(30),

    level VARCHAR(20),
    tags TEXT,

    audio_url TEXT,

    status VARCHAR(20) DEFAULT 'draft',

    created_at TIMESTAMP DEFAULT now(),
    updated_at TIMESTAMP DEFAULT now()
);

CREATE INDEX idx_korean_word ON korean_dictionary (korean);
CREATE INDEX idx_korean_romanization ON korean_dictionary (romanization);
CREATE INDEX idx_korean_translation_uk ON korean_dictionary (translation_uk);
CREATE INDEX idx_korean_translation_en ON korean_dictionary (translation_en);
CREATE INDEX idx_korean_level ON korean_dictionary (level);


