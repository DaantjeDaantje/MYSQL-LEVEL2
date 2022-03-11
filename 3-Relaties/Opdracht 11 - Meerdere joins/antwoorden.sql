-- Opdracht 1
    SELECT game.name, platform.platform, genre.genre FROM game
    LEFT JOIN platform ON game.platform_id = platform.id
    LEFT JOIN genre ON game.genre_id = genre.id
    WHERE game.name LIKE "b%";

-- Opdracht 2 
    SELECT game.name, platform.platform, publisher.publisher FROM game
    LEFT JOIN platform ON game.platform_id = platform.id
    LEFT JOIN publisher ON game.publisher_id = publisher.id
    WHERE game.year = 2013;

-- Opdracht 3
    SELECT game.name, game.global_sales , genre.genre FROM game
    LEFT JOIN genre ON game.genre_id = genre.id
    WHERE genre.genre = "Puzzle" AND game.year > 2000;

-- Opdracht 4
    SELECT game.name, platform.platform, game.year, genre.genre, publisher.publisher, game.jp_sales FROM game
    LEFT JOIN platform ON game.platform_id = platform.id
    LEFT JOIN genre ON game.genre_id = genre.id
    LEFT JOIN publisher ON game.publisher_id = publisher.id
    WHERE game.name LIKE "Mario%";

-- Opdracht 5
    SELECT game.name, genre.genre, publisher.publisher, game.year FROM game
    LEFT JOIN platform ON game.platform_id = platform.id
    LEFT JOIN genre ON game.genre_id = genre.id
    LEFT JOIN publisher ON game.publisher_id = publisher.id
    WHERE platform.platform = "PC";