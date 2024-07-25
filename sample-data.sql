INSERT INTO public."file" (id, file_name, mime_type, file_key, file_url, created_at, updated_at) VALUES
(1, 'avatar1.jpg', 'image/jpeg', 'avatars/avatar1.jpg', 'https://example.com/avatars/avatar1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, 'avatar2.jpg', 'image/jpeg', 'avatars/avatar2.jpg', 'https://example.com/avatars/avatar2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(3, 'avatar3.jpg', 'image/jpeg', 'avatars/avatar3.jpg', 'https://example.com/avatars/avatar3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(4, 'poster1.jpg', 'image/jpeg', 'posters/poster1.jpg', 'https://example.com/posters/poster1.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(5, 'poster2.jpg', 'image/jpeg', 'posters/poster2.jpg', 'https://example.com/posters/poster2.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(6, 'poster3.jpg', 'image/jpeg', 'posters/poster3.jpg', 'https://example.com/posters/poster3.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(7, 'poster4.jpg', 'image/jpeg', 'posters/poster4.jpg', 'https://example.com/posters/poster4.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(8, 'poster5.jpg', 'image/jpeg', 'posters/poster5.jpg', 'https://example.com/posters/poster5.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."user" (id, username, first_name, last_name, avatar_id, created_at, updated_at) VALUES
('f47ac10b-58cc-4372-a567-0e02b2c3d479', 'johndoe', 'John', 'Doe', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('550e8400-e29b-41d4-a716-446655440001', 'janedoe', 'Jane', 'Doe', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('550e8400-e29b-41d4-a716-446655440002', 'bobsmith', 'Bob', 'Smith', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."movie" (id, title, description, budget, release_date, duration, country, director_name, poster_id, created_at, updated_at) VALUES
('1e4e28b8-0b98-4d58-93c2-94634e380a84', 'Inception', 'A mind-bending thriller', 160000000, '2010-07-16', 148, 'USA', 'Christopher Nolan', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('e8ed7f18-1e4f-4db9-8f7d-943342429c56', 'The Matrix', 'A hacker discovers the true nature of reality', 63000000, '1999-03-31', 136, 'USA', 'Wachowski Brothers', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('fa07d7f1-92f1-49fa-8e85-21e9c1d8c0e4', 'Interstellar', 'A journey through space and time', 165000000, '2014-11-07', 169, 'USA', 'Christopher Nolan', 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('fb07d7f1-92f1-49fa-8e85-21e9c1d8c1f5', 'John Wick', 'An ex-hitman comes out of retirement to track down the gangsters that killed his dog and took everything from him.', 30000000, '2014-10-24', 101, 'USA', 'Chad Stahelski', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('bc07d7f1-92f1-49fa-8e85-21e9c1d8c1f5', 'Joker: Folie à Deux', 'Failed comedian Arthur Fleck meets the love of his life, Harley Quinn, while incarcerated at Arkham State Hospital.', 200000000, '2024-10-04', 138,  'USA', 'Todd Phillips', 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."genre" (id, name, created_at, updated_at) VALUES
(1, 'Sci-Fi', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, 'Action', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(3, 'Drama', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."person" (id, first_name, last_name, biography, date_of_birth, gender, home_country, primary_photo_id, created_at, updated_at) VALUES
('e8aeabf8-abe9-40c7-89b2-081643df90d0', 'Leonardo', 'DiCaprio', 'An American actor and producer.', '1974-11-11', 'male', 'USA', NULL, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('f0acbd77-7f95-4b8d-b5b7-524cf9e5e487', 'Keanu', 'Reeves', 'A Canadian actor.', '1964-09-02', 'male', 'Canada', NULL, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('61e33b7b-5b3a-4cf0-9f41-f63dd7f5b16a', 'Matthew', 'McConaughey', 'An American actor and producer.', '1969-11-04', 'male', 'USA', NULL, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('9f62b2c6-0e7e-4b7e-a4d3-88a0b7b7b7b7', 'Anne', 'Hathaway', 'Anne Hathaway is an American actress known for her roles in various films including Interstellar.', '1982-11-12', 'female', 'USA', NULL, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


INSERT INTO public."character" (id, name, description, role, person_id, created_at, updated_at) VALUES
('e3929af2-8c0f-44f4-ae36-8b1985d8c021', 'Dom Cobb', 'A skilled thief in the art of extraction', 'leading', 'e8aeabf8-abe9-40c7-89b2-081643df90d0', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('8b25e947-30f6-4380-8762-e1b154b489b1', 'Neo', 'The One', 'leading', 'f0acbd77-7f95-4b8d-b5b7-524cf9e5e487', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('b208e3b5-85a0-4f8b-a789-bb7e17f9e752', 'Cooper', 'A pilot and engineer', 'leading', '61e33b7b-5b3a-4cf0-9f41-f63dd7f5b16a', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('6c05fcca-4774-4f0c-8443-9b62570f5b66', 'John Wick', 'An ex-hitman who seeks vengeance after his dog is killed.', 'leading', 'f0acbd77-7f95-4b8d-b5b7-524cf9e5e487', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('b5b6e647-4af0-4e7e-a1a1-5d0d5f0f0f0f', 'Amelia Brand', 'A NASA scientist and astronaut who joins the space mission to save humanity.', 'leading', '9f62b2c6-0e7e-4b7e-a4d3-88a0b7b7b7b7', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."favorite_movie" (user_id, movie_id, created_at, updated_at) VALUES
('f47ac10b-58cc-4372-a567-0e02b2c3d479', '1e4e28b8-0b98-4d58-93c2-94634e380a84', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('550e8400-e29b-41d4-a716-446655440001', 'e8ed7f18-1e4f-4db9-8f7d-943342429c56', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('550e8400-e29b-41d4-a716-446655440002', 'fa07d7f1-92f1-49fa-8e85-21e9c1d8c0e4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('550e8400-e29b-41d4-a716-446655440002', 'fb07d7f1-92f1-49fa-8e85-21e9c1d8c1f5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."character_movie" (character_id, movie_id, created_at, updated_at) VALUES
('8b25e947-30f6-4380-8762-e1b154b489b1', 'e8ed7f18-1e4f-4db9-8f7d-943342429c56', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('b208e3b5-85a0-4f8b-a789-bb7e17f9e752', 'fa07d7f1-92f1-49fa-8e85-21e9c1d8c0e4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('e3929af2-8c0f-44f4-ae36-8b1985d8c021', '1e4e28b8-0b98-4d58-93c2-94634e380a84', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('6c05fcca-4774-4f0c-8443-9b62570f5b66', 'fb07d7f1-92f1-49fa-8e85-21e9c1d8c1f5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('b5b6e647-4af0-4e7e-a1a1-5d0d5f0f0f0f', 'fa07d7f1-92f1-49fa-8e85-21e9c1d8c0e4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."movie_genre" (movie_id, genre_id, created_at, updated_at) VALUES
('1e4e28b8-0b98-4d58-93c2-94634e380a84', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('e8ed7f18-1e4f-4db9-8f7d-943342429c56', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('fa07d7f1-92f1-49fa-8e85-21e9c1d8c0e4', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('bc07d7f1-92f1-49fa-8e85-21e9c1d8c1f5', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('bc07d7f1-92f1-49fa-8e85-21e9c1d8c1f5', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);