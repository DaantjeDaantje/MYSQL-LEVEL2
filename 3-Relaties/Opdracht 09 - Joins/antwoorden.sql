-- Opdracht 1
    SELECT * FROM game JOIN platform ON platform.id = game.platform_id

-- Opdracht 2 
    SELECT * FROM game JOIN platform ON platform.id = game.platform_id WHERE game.id <= 10;

-- Opdracht 3
    SELECT game.name, platform.platform FROM game JOIN platform ON platform.id = game.platform_id WHERE game.name = "Call of Duty: Advanced Warfare";

-- Opdracht 4
    SELECT platform.platform, game.name FROM platform JOIN game ON game.platform_id = platform.id WHERE game.name LIKE "FIFA%";

-- Opdracht 5
    SELECT * FROM game JOIN platform ON platform.id = game.platform_id WHERE game.name = "Borderlands" OR game.name = "Borderlands 2";