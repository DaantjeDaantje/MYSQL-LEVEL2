-- Opdracht 1
    SELECT game.name, platform.platform FROM game JOIN platform ON platform.id = game.platform_id WHERE game.name LIKE "Grand Theft Auto%";

-- Opdracht 2 
    SELECT * FROM platform JOIN game ON game.platform_id = platform.id WHERE platform.platform = "SCD";
