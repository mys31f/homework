CREATE DATABASE osumaps;
CREATE TABLE maplist (
    map_name varchar(255),
    map_id int,
    mapper varchar(255),
    star_rating decimal(15,1),
    map_length int
    circle_size decimal(2,1),
    approach_rate decimal(2,1),
    overall_difficulty decimal(2,1),
    hp_drain decimal(2,1),
    beats_per_minute int,
);
/* Need to find a way to get time to be able to be imported.