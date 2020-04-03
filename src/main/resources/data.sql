-- Seed BotW cooking materials table

DROP TABLE IF EXISTS materials;

CREATE TABLE materials (
  id       INT AUTO_INCREMENT PRIMARY KEY,
  name     VARCHAR(64)  NOT NULL,
  type     VARCHAR(32)  NOT NULL,
  subtype  VARCHAR(32)  NOT NULL,
  hearts   DECIMAL(5,2) NOT NULL,
  effect   VARCHAR(32)  NOT NULL,
  potency  VARCHAR(32)  NOT NULL,
  duration INT          NOT NULL
);

INSERT INTO materials 
  (name,                      type,         subtype,       hearts,  effect,       potency,      duration) VALUES
  ('Acorn',                   'seasoning',  '-',           0.25,    '-',          '0',            50),
  ('Apple',                   'fruit',      '-',           0.50,    '-',          '0',            30),
  ('Armoranth',               'green',      '-',           0.00,    'tough',      '1/1/1/1/2',    50),
  ('Armored Carp',            'seafood',    '-',           1.00,    'tough',      '1/1/2/3/3',    50),
  ('Armored Porgy',           'seafood',    'porgy',       1.00,    'tough',      '1/2/3/3/3',    50),
  ('Big Hearty Radish',       'green',       '-',          4.00,    'hearty',     '5',             0),
  ('Big Hearty Truffle',      'mushroom',    '-',          3.00,    'hearty',     '4',             0),
  ('Bird Egg',                'filler',      '-',          1.00,    '-',          '0',            70),
  ('Blue Nightshade',         'green',       '-',          0.00,    'sneaky',     '1/1/1/1/1',   120),
  ('Bright-eyed Crab',        'seafood',     'crab',       1.00,    'energizing', '2/5/8/11/14',   0),
  ('Cane Sugar',              'seasoning',   '-',          0.00,    '-',          '0',            80),
  ('Chikaloo Tree Nut',       'seasoning',   '-',          0.25,    '-',          '0',            40),
  ('Chillfin Trout',          'seafood',     '-',          1.00,    'chilly',     '1/2/2/2/2',   150),
  ('Chillshroom',             'mushroom',    '-',          0.50,    'chilly',     '1/1/2/2/2',   150),
  ('Cool Saffina',            'green',       '-',          0.00,    'chilly',     '1/1/1/1/1',   150),
  ('Courser Bee Honey',       'seasoning',   '-',          2.00,    'energizing', '2/5/8/11/14',   0),
  ('Electric Saffina',        'green',       '-',          0.00,    'electro',    '1/1/1/2/2',   150),
  ('Endura Carrot',           'green',       'vegetable',  2.00,    'enduring',   '2/4/6/8/10',   30),
  ('Endura Shroom',           'mushroom',    '-',          1.00,    'enduring',   '1/1/1/2/2',     0),
  ('Fairy',                   'filler',      '-',          5.00,    '-',          '0',            30),
  ('Fleet-Lotus Seeds',       'fruit',       '-',          0.50,    'hasty',      '1/1/2/3/3',    60),
  ('Fortified Pumpkin',       'green',       'vegetable',  0.50,    'tough',      '1/1/2/3/3',    50),
  ('Fresh Milk',              'filler',      '-',          0.50,    '-',          '0',            80),
  ('Goat Butter',             'seasoning',   '-',          0.00,    '-',          '0',            80),
  ('Goron Spice',             'seasoning',   '-',          0.00,    '-',          '0',            90),
  ('Hearty Bass',             'seafood',     '-',          2.00,    'hearty',     '2',             0),
  ('Hearty Blueshell Snail',  'seafood',     '-',          3.00,    'hearty',     '3',             0),
  ('Hearty Durian',           'fruit',       '-',          3.00,    'hearty',     '4',             0),
  ('Hearty Radish',           'green',       '-',          2.50,    'hearty',     '3',             0),
  ('Hearty Salmon',           'seafood',     '-',          4.00,    'hearty',     '4',             0),
  ('Hearty Truffle',          'mushroom',    '-',          2.00,    'hearty',     '1',             0),
  ('Hydromelon',              'fruit',       '-',          0.50,    'chilly',     '1/1/1/1/1',   150),
  ('Hylian Rice',             'seasoning',   '-',          1.00,    '-',          '0',            60),
  ('Hylian Shroom',           'mushroom',    '-',          0.50,    '-',          '0',            30),
  ('Hyrule Bass',             'seafood',     '-',          1.00,    '-',          '0',            30),
  ('Hyrule Herb',             'green',       '-',          1.00,    '-',          '0',            30),
  ('Ironshell Crab',          'seafood',     'crab',       1.00,    'tough',      '1/1/2/3/3',    50),
  ('Ironshroom',              'mushroom',    '-',          1.00,    'tough',      '1/1/2/3/3',    50),
  ('Mighty Bananas',          'fruit',       '-',          0.50,    'mighty',     '1/1/2/3/3',    50),
  ('Mighty Carp',             'seafood',     '-',          1.00,    'mighty',     '1/1/2/3/3',    50),
  ('Mighty Porgy',            'seafood',     'porgy',      1.00,    'mighty',     '1/1/3/3/3',    50),
  ('Mighty Thistle',          'green',       '-',          0.00,    'mighty',     '1/1/1/1/2',    50),
  ('Monster Extract',         'other',       '-',          0.00,    '-',          '0',             1),
  ('Palm Fruit',              'fruit',       '-',          1.00,    '-',          '0',            30),
  ('Raw Bird Drumstick',      'meat',        'poultry',    1.00,    '-',          '0',            30),
  ('Raw Bird Thigh',          'meat',        'poultry',    1.50,    '-',          '0',            30),
  ('Raw Gourmet Meat',        'meat',        '-',          3.00,    '-',          '0',            30),
  ('Raw Meat',                'meat',        '-',          1.00,    '-',          '0',            30),
  ('Raw Prime Meat',          'meat',        '-',          1.50,    '-',          '0',            30),
  ('Raw Whole Bird',          'meat',        'poultry',    3.00,    '-',          '0',            30),
  ('Razorclaw Crab',          'seafood',     'crab',       1.00,    'mighty',     '1/1/2/3/3',    50),
  ('Razorshroom',             'mushroom',    '-',          0.50,    'mighty',     '1/1/2/3/3',    50),
  ('Rock Salt',               'seasoning',   '-',          0.00,    '-',          '0',            60),
  ('Rushroom',                'mushroom',    '-',          0.50,    'hasty',      '1/1/1/1/2',    60),
  ('Silent Princess',         'green',       '-',          1.00,    'sneaky',     '1/2/3/3/3',   120),
  ('Silent Shroom',           'mushroom',    '-',          0.50,    'sneaky',     '1/1/2/2/3',   120),
  ('Sizzlefin Trout',         'seafood',     '-',          1.00,    'spicy',      '1/2/2/2/2',   150),
  ('Sanke Carp',              'seafood',     '-',          1.00,    '-',          '0',            30),
  ('Sneaky River Snail',      'seafood',     '-',          1.00,    'sneaky',     '1/1/1/1/1',   120),
  ('Spicy Pepper',            'fruit',       '-',          0.50,    'spicy',      '1/1/1/1/1',   150),
  ('Stamella Shroom',         'mushroom',    '-',          0.50,    'energizing', '1/2/4/5/7',     0),
  ('Staminoka Bass',          'seafood',     '-',          1.00,    'energizing', '5/11/15',       0),
  ('Star Fragment',           'other',       '-',          0.00,    '-',          '0',            30),
  ('Stealthfin Trout',        'seafood',     '-',          1.00,    'sneaky',     '1/1/2/2/3',   120),
  ('Sunshroom',               'mushroom',    '-',          0.50,    'spicy',      '1/1/2/2/3',   150),
  ('Swift Carrot',            'green',       'vegetable',  0.50,    'hasty',      '1/1/1/1/2',    60),
  ('Swift Violet',            'green',       '-',          0.00,    'hasty',      '1/1/2/3/3',    60),
  ('Tabantha Wheat',          'seasoning',   '-',          1.00,    '-',          '0',            60),
  ('Voltfin Trout',           'seafood',     '-',          1.00,    'electro',    '1/3/3/3/3',   150),
  ('Voltfruit',               'fruit',       '-',          0.50,    'electro',    '1/1/1/2/2',   150),
  ('Warm Saffina',            'green',       '-',          0.00,    'spicy',      '1/1/1/1/1',   150),
  ('Wildberry',               'fruit',       '-',          0.50,    '-',          '0',            30),
  ('Zapshroom',               'mushroom',    '-',          0.50,    'electro',    '1/2/3/3/3',   150),
  ('Dinraal''s Scale',        'filler',      '-',          0.625,   '-',          '0',           120),
  ('Dinraal''s Claw',         'filler',      '-',          1.00,    '-',          '0',           240),
  ('Shard of Dinraal''s Fang','filler',      '-',          1.25,    '-',          '0',           660),
  ('Shard of Dinraal''s Horn','filler',      '-',          1.875,   '-',          '0',          1800),
  ('Naydra''s Scale',         'filler',      '-',          0.625,   '-',          '0',           120),
  ('Naydra''s Claw',          'filler',      '-',          1.00,    '-',          '0',           240),
  ('Shard of Naydra''s Fang', 'filler',      '-',          1.25,    '-',          '0',           660),
  ('Shard of Naydra''s Horn', 'filler',      '-',          1.875,   '-',          '0',          1800),
  ('Farosh''s Scale',         'filler',      '-',          0.625,   '-',          '0',           120),
  ('Farosh''s Claw',          'filler',      '-',          1.00,    '-',          '0',           240),
  ('Shard of Farosh''s Fang', 'filler',      '-',          1.25,    '-',          '0',           660),
  ('Shard of Farosh''s Horn', 'filler',      '-',          1.875,   '-',          '0',          1800),
  ('Winterwing Butterfly',    'critter',     '-',          0.00,    'chilly',     '1/1/1/1',     150),
  ('Summerwing Butterfly',    'critter',     '-',          0.00,    'spicy',      '1/1/1/1',     150),
  ('Thunderwing Butterfly',   'critter',     '-',          0.00,    'electro',    '1/1/1/2',     150),
  ('Smotherwing Butterfly',   'critter',     '-',          0.00,    'fireproof',  '1/1/2/2',     150),
  ('Cold Darner',             'critter',     '-',          0.00,    'chilly',     '1/1/2/3',     150),
  ('Warm Darner',             'critter',     '-',          0.00,    'spicy',      '1/1/3/3',     150),
  ('Electric Darner',         'critter',     '-',          0.00,    'electro',    '1/2/3/3',     150),
  ('Restless Cricket',        'critter',     '-',          0.00,    'energizing', '1/2/4/5',       0),
  ('Bladed Rhino Beetle',     'critter',     '-',          0.00,    'mighty',     '1/1/1/1',      50),
  ('Rugged Rhino Beetle',     'critter',     '-',          0.00,    'tough',      '1/1/1/1',      50),
  ('Energetic Rhino Beetle',  'critter',     '-',          0.00,    'energizing', '8/15/15/15',    0),
  ('Sunset Firefly',          'critter',     '-',          0.00,    'sneaky',     '1/1/1/1',     120),
  ('Hot-footed Frog',         'critter',     '-',          0.00,    'hasty',      '1/1/2/3',      60),
  ('Tireless Frog',           'critter',     '-',          2.00,    'enduring',   '1/2/3/4',       0),
  ('Hightail Lizard',         'critter',     '-',          0.00,    'hasty',      '1/1/1/1',      60),
  ('Hearty Lizard',           'critter',     '-',          0.00,    'hearty',     '4/8/12/16',     0),
  ('Fireproof Lizard',        'critter',     '-',          0.00,    'fireproof',  '1/1/1/1',     150)
  ('Bokoblin Horn'	     ,    'enemy',       '-',          0.00,    '-',          '0',            70)
  ('Bokoblin Fang'	     ,    'enemy',       '-',          0.00,    '-',          '0',          1:50)
  ('Bokoblin Guts'	     ,    'enemy',       '-',          0.00,    '-',          '0',          3:10)
  ('Moblin Horn'         ,    'enemy',       '-',          0.00,    '-',          '0',            70)
  ('Moblin Fang'         ,    'enemy',       '-',          0.00,    '-',          '0',          1:50)
  ('Moblin Guts'         ,    'enemy',       '-',          0.00,    '-',          '0',          3:10)
  ('Lizalfos Horn'       ,    'enemy',       '-',          0.00,    '-',          '0',            70)
  ('Lizalfos Talon'      ,    'enemy',       '-',          0.00,    '-',          '0',          1:50)
  ('Lizalfos Tail'       ,    'enemy',       '-',          0.00,    '-',          '0',          3:10)
  ('Icy Lizalfos Tail'   ,    'enemy',       '-',          0.00,    '-',          '0',          3:10)
  ('Red Lizalfos Tail'   ,    'enemy',       '-',          0.00,    '-',          '0',          3:10)
  ('Yellow Lizalfos Tail',    'enemy',       '-',          0.00,    '-',          '0',          3:10)
  ('Lynel Horn'          ,    'enemy',       '-',          0.00,    '-',          '0',            70)
  ('Lynel Hoof'          ,    'enemy',       '-',          0.00,    '-',          '0',          1:50)
  ('Lynel Guts'          ,    'enemy',       '-',          0.00,    '-',          '0',          3:10)
  ('Chuchu Jelly'        ,    'enemy',       '-',          0.00,    '-',          '0',            70)
  ('White Chuchu Jelly'  ,    'enemy',       '-',          0.00,    '-',          '0',          1:50)
  ('Red Chuchu Jelly'    ,    'enemy',       '-',          0.00,    '-',          '0',          1:50)
  ('Yellow Chuchu Jelly' ,    'enemy',       '-',          0.00,    '-',          '0',          1:50)
  ('Keese Wing'          ,    'enemy',       '-',          0.00,    '-',          '0',            70)
  ('Ice Keese Wing'      ,    'enemy',       '-',          0.00,    '-',          '0',          1:50)
  ('Fire Keese Wing'     ,    'enemy',       '-',          0.00,    '-',          '0',          1:50)
  ('Electric Keese Wing' ,    'enemy',       '-',          0.00,    '-',          '0',          1:50)
  ('Keese Eyeball'       ,    'enemy',       '-',          0.00,    '-',          '0',          3:10)
  ('Octorok Tentacle'    ,    'enemy',       '-',          0.00,    '-',          '0',          1:50)
  ('Octorok Eyeball'     ,    'enemy',       '-',          0.00,    '-',          '0',            70)
  ('Octo Balloon'        ,    'enemy',       '-',          0.00,    '-',          '0',            70)
  ('Hinox Toenail'       ,    'enemy',       '-',          0.00,    '-',          '0',            70)
  ('Hinox Tooth'         ,    'enemy',       '-',          0.00,    '-',          '0',          1:50)
  ('Hinox Guts'          ,    'enemy',       '-',          0.00,    '-',          '0',          3:10)
  ('Molduga Fin'         ,    'enemy',       '-',          0.00,    '-',          '0',          1:50)
  ('Molduga Guts'        ,    'enemy',       '-',          0.00,    '-',          '0',          3:10)
  ('Ancient Screw'       ,    'enemy',       '-',          0.00,    '-',          '0',            70)
  ('Ancient Spring'      ,    'enemy',       '-',          0.00,    '-',          '0',            70)
  ('Ancient Gear'        ,    'enemy',       '-',          0.00,    '-',          '0',          1:50)
  ('Ancient Shaft'       ,    'enemy',       '-',          0.00,    '-',          '0',          1:50)
  ('Ancient Core'        ,    'enemy',       '-',          0.00,    '-',          '0',          3:10)
  ('Giant Ancient Core'  ,    'enemy',       '-',          0.00,    '-',          '0',          3:10)

;
