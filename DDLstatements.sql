CREATE TABLE public."file"
( 
    id SERIAL PRIMARY KEY, 
    file_name VARCHAR(255) NOT NULL, 
    mime_type VARCHAR(50) NOT NULL, 
    file_key VARCHAR(255) NOT NULL, 
    file_url TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL 
);

CREATE TABLE public."user"
(
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    username character varying(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    avatar_id INT REFERENCES public."file"(id) ON DELETE CASCADE ON UPDATE CASCADE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE TABLE public."movie" 
( 
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY, 
    title VARCHAR(255) NOT NULL, 
    description TEXT, 
    budget NUMERIC(15, 2), 
    release_date DATE, 
    duration INT, 
    country VARCHAR(255) NOT NULL, 
    director_name VARCHAR(255) NOT NULL,
    poster_id INT REFERENCES public."file"(id) ON DELETE CASCADE ON UPDATE CASCADE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE TABLE public."genre" 
( 
    id SERIAL PRIMARY KEY, 
    name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL 
);

CREATE TYPE gender_enum AS ENUM ('male', 'female', 'other', 'prefer not to say', 'not known');

CREATE TABLE public."person" 
( 
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY, 
    first_name VARCHAR(255) NOT NULL, 
    last_name VARCHAR(255) NOT NULL, 
    biography TEXT, 
    date_of_birth DATE, 
    gender gender_enum NOT NULL, 
    home_country VARCHAR(255), 
    primary_photo_id INT REFERENCES public."file"(id) ON DELETE SET NULL ON UPDATE CASCADE, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL 
);


CREATE TABLE public."character" 
( 
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY, 
    name VARCHAR(255) NOT NULL, 
    description TEXT, 
    role VARCHAR(50), 
    person_id UUID REFERENCES public."person"(id) ON DELETE SET NULL ON UPDATE CASCADE, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL 
);


CREATE TABLE public."favorite_movie" 
( 
   user_id UUID REFERENCES public."user"(id) ON DELETE CASCADE ON UPDATE CASCADE, 
   movie_id UUID REFERENCES public."movie"(id) ON DELETE CASCADE ON UPDATE CASCADE,
   PRIMARY KEY (user_id, movie_id), 
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL, 
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL 
);

CREATE TABLE public."movie_genre" 
( 
    movie_id UUID REFERENCES public."movie"(id) ON DELETE CASCADE ON UPDATE CASCADE, 
    genre_id INT REFERENCES public."genre"(id) ON DELETE CASCADE ON UPDATE CASCADE, 
    PRIMARY KEY (movie_id, genre_id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL 
);

CREATE TABLE public."character_movie" 
( 
    character_id UUID REFERENCES public."character"(id) ON DELETE CASCADE ON UPDATE CASCADE, 
    movie_id UUID REFERENCES public."movie"(id) ON DELETE CASCADE ON UPDATE CASCADE, 
    PRIMARY KEY (character_id, movie_id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL 
);

CREATE TABLE public."person_photo" 
( 
    id SERIAL PRIMARY KEY, 
    person_id UUID REFERENCES public."person"(id) ON DELETE CASCADE ON UPDATE CASCADE, 
    photo_id INT REFERENCES public."file"(id) ON DELETE CASCADE ON UPDATE CASCADE,  
    is_primary BOOLEAN DEFAULT FALSE NOT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL 
);
