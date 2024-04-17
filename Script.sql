create table if not exists Genre(
	id SERIAL primary key,
	name_of_genre  varchar(60) not null
);

create table if not exists Musician(
	id serial primary key,
	nickname varchar(60) not null
);


create table if not exists Album(
	id serial primary key,
	name_of_alb varchar(60) not null,
	release_alb date
);

create table if not exists Track(
	id serial primary key,
	name_of_track varchar(60) not null,
	name_of_alb integer references Album(id),
	release_tr time
);
	
create table if not exists Collection(
	id serial primary key,
	name_of_coll varchar(60) not null,
	release_coll date
);

create table if not exists Genre_Musician(
	id serial primary key,
	name_of_genre_id integer references Genre(id),
	nickname_id integer references Musician(id)
);

create table if not exists Misician_Album(
	id serial primary key,
	nickname_id integer references Musician(id),
	album_id integer references Album(id)
);

create table if not exists Track_Collection(
	id serial primary key,
	coll_id integer references Collection(id),
	track_id integer references Track(id)
);