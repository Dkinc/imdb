-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 
-- Версия на сървъра: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imdb_database`
--

-- --------------------------------------------------------

--
-- Структура на таблица `actors`
--

CREATE TABLE IF NOT EXISTS `actors` (
  `idActors` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `biography` varchar(45) DEFAULT NULL,
  `date_of_birth` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура на таблица `calculate_usesr_rating`
--

CREATE TABLE IF NOT EXISTS `calculate_usesr_rating` (
  `idCalculate_Usesr_Rating` int(11) NOT NULL,
  `rating` double DEFAULT NULL,
  `number_of_rates` int(11) DEFAULT NULL,
  `Users_idUsers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура на таблица `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `idComments` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `text_content` mediumtext,
  `time_of_publishing` varchar(45) DEFAULT NULL,
  `Users_idUsers` int(11) NOT NULL,
  `Movies_idMovies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура на таблица `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
  `idCompanies` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `Companiescol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура на таблица `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
  `idGenres` int(11) NOT NULL,
  `genres_types` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура на таблица `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `idMovies` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `director` varchar(45) DEFAULT NULL,
  `writter` varchar(45) DEFAULT NULL,
  `pg_rating` varchar(45) DEFAULT NULL,
  `movie_length` varchar(45) DEFAULT NULL,
  `release_date` varchar(45) DEFAULT NULL,
  `awards` varchar(45) DEFAULT NULL,
  `resume` mediumtext,
  `number_of_rates` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `movies`
--

INSERT INTO `movies` (`idMovies`, `title`, `director`, `writter`, `pg_rating`, `movie_length`, `release_date`, `awards`, `resume`, `number_of_rates`) VALUES
(1, 'The Shawshank Redemption (1994)', 'Frank Darabont', 'Stephen King', 'R', '2h 22min', '10/14/1994', ' Two imprisoned men bond over a number of yea', ' Nominated for 7 Oscars. ', 0),
(2, 'The Godfather (1972)', 'Francis Ford Coppola', 'Mario Puzo', '', '2h 55min', '3/24/1972', ' The aging patriarch of an organized crime dy', ' Won 3 Oscars. ', 0),
(3, 'The Godfather: Part II (1974)', 'Francis Ford Coppola', 'Francis Ford Coppola', '', '3h 22min', '12/20/1974', ' The early life and career of Vito Corleone i', ' Won 6 Oscars. ', 0),
(4, 'The Dark Knight (2008)', 'Christopher Nolan', 'Jonathan Nolan', 'PG-13', '2h 32min', '7/25/2008', ' When the menace known as the Joker wreaks ha', ' Won 2 Oscars. ', 0),
(5, '12 Angry Men (1957)', 'Sidney Lumet', 'Reginald Rose', '', '1h 36min', '6/8/2002', ' A jury holdout attempts to prevent a miscarr', ' Nominated for 3 Oscars. ', 0),
(6, 'Schindler''s List (1993)', 'Steven Spielberg', 'Thomas Keneally', 'R', '3h 15min', '2/4/1994', ' In German-occupied Poland during World War I', ' Won 7 Oscars. ', 0),
(7, 'Pulp Fiction (1994)', 'Quentin Tarantino', 'Quentin Tarantino', 'R', '2h 34min', '10/14/1994', ' The lives of two mob hit men a boxer a gangs', ' Won 1 Oscar. ', 0),
(8, 'The Lord of the Rings: The Return of the King', 'Peter Jackson', 'J.R.R. Tolkien', 'PG-13', '3h 21min', '1/10/2004', ' Gandalf and Aragorn lead the World of Men ag', ' Won 11 Oscars. ', 0),
(9, 'The Good the Bad and the Ugly (1966)', 'Sergio Leone', 'Luciano Vincenzoni', '', '2h 41min', '12/23/1966', ' A bounty hunting scam joins two men in an un', '', 0),
(10, 'Fight Club (1999)', 'David Fincher', 'Chuck Palahniuk', 'R', '2h 19min', '10/15/1999', ' An insomniac office worker looking for a way', ' Nominated for 1 Oscar. ', 0),
(11, 'The Lord of the Rings: The Fellowship of the ', 'Peter Jackson', 'J.R.R. Tolkien', 'PG-13', '2h 58min', '3/22/2002', ' A meek Hobbit and eight companions set out o', ' Won 4 Oscars. ', 0),
(12, 'Star Wars: Episode V - The Empire Strikes Bac', 'Irvin Kershner', 'Leigh Brackett', 'PG', '2h 4min', '4/23/1984', ' After the rebels have been brutally overpowe', ' Won 1 Oscar. ', 0),
(13, 'Forrest Gump (1994)', 'Robert Zemeckis', 'Winston Groom', 'PG-13', '2h 22min', '7/6/1994', ' Forrest Gump while not intelligent has accid', ' Won 6 Oscars. ', 0),
(14, 'Inception (2010)', 'Christopher Nolan', '', 'PG-13', '2h 28min', '7/23/2010', ' A thief who steals corporate secrets through', ' Won 4 Oscars. ', 0),
(15, 'The Lord of the Rings: The Two Towers (2002)', 'Peter Jackson', 'J.R.R. Tolkien', 'PG-13', '2h 59min', '1/10/2003', ' While Frodo and Sam edge closer to Mordor wi', ' Won 2 Oscars. ', 0),
(16, 'One Flew Over the Cuckoo''s Nest (1975)', 'Milos Forman', 'Lawrence Hauben', '', '2h 13min', '11/21/1975', ' A criminal pleads insanity after getting int', ' Won 5 Oscars. ', 0),
(17, 'Goodfellas (1990)', 'Martin Scorsese', 'Nicholas Pileggi', '', '2h 26min', '9/21/1990', ' Henry Hill and his friends work their way up', ' Won 1 Oscar. ', 0),
(18, 'The Matrix (1999)', '', 'Lilly Wachowski', 'R', '2h 16min', '9/3/1999', ' A computer hacker learns from mysterious reb', ' Won 4 Oscars. ', 0),
(19, 'Shichinin no samurai (1954)', 'Akira Kurosawa', 'Akira Kurosawa', '', '3h 27min', '4/26/1954', ' A poor village under attack by bandits recru', ' Nominated for 2 Oscars. ', 0),
(20, 'Star Wars (1977)', 'George Lucas', '', 'PG', '2h 1min', '4/26/1982', ' Luke Skywalker joins forces with a Jedi Knig', ' Won 6 Oscars. ', 0),
(21, 'Cidade de Deus (2002)', '', 'Paulo Lins', 'R', '2h 10min', '8/30/2002', ' Two boys growing up in a violent neighborhoo', ' Nominated for 4 Oscars. ', 0),
(22, 'Se7en (1995)', 'David Fincher', '', 'R', '2h 7min', '9/22/1995', ' Two detectives a rookie and a veteran hunt a', ' Nominated for 1 Oscar. ', 0),
(23, 'The Silence of the Lambs (1991)', 'Jonathan Demme', 'Thomas Harris', '', '1h 58min', '2/14/1991', ' A young F.B.I. cadet must confide in an inca', ' Won 5 Oscars. ', 0),
(24, 'It''s a Wonderful Life (1946)', 'Frank Capra', 'Frances Goodrich', 'PG', '2h 10min', '1/7/1947', ' An angel helps a compassionate but despairin', ' Nominated for 5 Oscars. ', 0),
(25, 'The Usual Suspects (1995)', 'Bryan Singer', '', 'R', '1h 46min', '9/15/1995', ' A sole survivor tells of the twisty events l', ' Won 2 Oscars. ', 0),
(26, 'La vita è bella (1997)', 'Roberto Benigni', 'Vincenzo Cerami', 'PG-13', '1h 56min', '12/20/1997', ' When an open-minded Jewish librarian and his', ' Won 3 Oscars. ', 0),
(27, 'Léon (1994)', 'Luc Besson', '', 'R', '1h 50min', '9/14/1994', ' Mathilda a 12-year-old girl is reluctantly t', '', 0),
(28, 'Sen to Chihiro no kamikakushi (2001)', 'Hayao Miyazaki', '', 'PG', '2h 5min', '7/20/2001', ' During her family''s move to the suburbs a su', ' Won 1 Oscar. ', 0),
(29, 'Once Upon a Time in the West (1968)', 'Sergio Leone', 'Sergio Donati', 'PG-13', '2h 55min', '12/21/1968', ' A mysterious stranger with a harmonica joins', '', 0),
(30, 'Saving Private Ryan (1998)', 'Steven Spielberg', '', 'R', '2h 49min', '7/24/1998', ' Following the Normandy Landings a group of U', ' Won 5 Oscars. ', 0),
(31, 'American History X (1998)', 'Tony Kaye', '', 'R', '1h 59min', '11/20/1998', ' A former neo-nazi skinhead tries to prevent ', ' Nominated for 1 Oscar. ', 0),
(32, 'Casablanca (1942)', 'Michael Curtiz', 'Julius J. Epstein', 'PG', '1h 42min', '1/23/1943', ' In Casablanca Morocco in December 1941 a cyn', ' Won 3 Oscars. ', 0),
(33, 'Interstellar (2014)', 'Christopher Nolan', 'Jonathan Nolan', 'PG-13', '2h 49min', '11/7/2014', ' A team of explorers travel through a wormhol', ' Won 1 Oscar. ', 0),
(34, 'Psycho (1960)', 'Alfred Hitchcock', 'Joseph Stefano', '', '1h 49min', '9/8/1960', ' A Phoenix secretary embezzles $40 000 from h', ' Nominated for 4 Oscars. ', 0),
(35, 'City Lights (1931)', 'Charles Chaplin', '', '', '1h 27min', '3/7/1931', ' With the aid of a wealthy erratic tippler a ', '', 0),
(36, 'Raiders of the Lost Ark (1981)', 'Steven Spielberg', 'Lawrence Kasdan', '', '1h 55min', '6/12/1981', ' Archaeologist and adventurer Indiana Jones i', ' Won 4 Oscars. ', 0),
(37, 'Modern Times (1936)', 'Charles Chaplin', '', '', '1h 27min', '2/25/1936', ' The Tramp struggles to live in modern indust', '', 0),
(38, 'The Green Mile (1999)', 'Frank Darabont', 'Stephen King', 'R', '3h 9min', '12/10/1999', ' The lives of guards on Death Row are affecte', ' Nominated for 4 Oscars. ', 0),
(39, 'The Intouchables (2011)', '', 'Olivier Nakache', 'R', '1h 52min', '11/2/2011', ' After he becomes a quadriplegic from a parag', ' Nominated for 1 Golden Globe. ', 0),
(40, 'Rear Window (1954)', 'Alfred Hitchcock', 'John Michael Hayes', '', '1h 52min', '6/18/2000', ' A wheelchair-bound photographer spies on his', ' Nominated for 4 Oscars. ', 0),
(41, 'Terminator 2: Judgment Day (1991)', 'James Cameron', 'James Cameron', 'R', '2h 17min', '7/3/1991', ' A cyborg identical to the one who failed to ', ' Won 4 Oscars. ', 0),
(42, 'The Pianist (2002)', 'Roman Polanski', 'Ronald Harwood', 'R', '2h 30min', '9/25/2002', ' A Polish Jewish musician struggles to surviv', ' Won 3 Oscars. ', 0),
(43, 'The Departed (2006)', 'Martin Scorsese', 'William Monahan', 'R', '2h 31min', '10/27/2006', ' An undercover cop and a mole in the police a', ' Won 4 Oscars. ', 0),
(44, 'Back to the Future (1985)', 'Robert Zemeckis', 'Robert Zemeckis', '', '1h 56min', '7/3/1985', ' Marty McFly a 17-year-old high school studen', ' Won 1 Oscar. ', 0),
(45, 'Whiplash (2014)', 'Damien Chazelle', '', 'R', '1h 47min', '10/15/2014', ' A promising young drummer enrolls at a cut-t', ' Won 3 Oscars. ', 0),
(46, 'Gladiator (2000)', 'Ridley Scott', 'David Franzoni', 'R', '2h 35min', '8/4/2000', ' When a Roman general is betrayed and his fam', ' Won 5 Oscars. ', 0),
(47, 'Memento (2000)', 'Christopher Nolan', 'Christopher Nolan', 'R', '1h 53min', '11/29/2002', ' A man juggles searching for his wife''s murde', ' Nominated for 2 Oscars. ', 0),
(48, 'Apocalypse Now (1979)', 'Francis Ford Coppola', 'John Milius', 'R', '2h 33min', '8/15/1979', ' During the Vietnam War Captain Willard is se', ' Won 2 Oscars. ', 0),
(49, 'The Prestige (2006)', 'Christopher Nolan', 'Jonathan Nolan', 'PG-13', '2h 10min', '1/12/2007', ' Two stage magicians engage in competitive on', ' Nominated for 2 Oscars. ', 0),
(50, 'The Lion King (1994)', '', 'Irene Mecchi', '', '1h 29min', '6/24/1994', ' Lion cub and future king Simba searches for ', ' Won 2 Oscars. ', 0),
(51, 'Dr. Strangelove or: How I Learned to Stop Wor', 'Stanley Kubrick', 'Stanley Kubrick', 'PG', '1h 35min', '1/29/1964', ' An insane general triggers a path to nuclear', ' Nominated for 4 Oscars. ', 0),
(52, 'Sunset Blvd. (1950)', 'Billy Wilder', 'Charles Brackett', '', '1h 50min', '9/29/1950', ' A hack screenwriter writes a screenplay for ', ' Won 3 Oscars. ', 0),
(53, 'Alien (1979)', 'Ridley Scott', 'Dan O''Bannon', 'R', '1h 57min', '6/22/1979', ' After a space merchant vessel perceives an u', ' Won 1 Oscar. ', 0),
(54, 'The Great Dictator (1940)', 'Charles Chaplin', '', '', '2h 5min', '3/7/1941', ' Dictator Adenoid Hynkel tries to expand his ', ' Nominated for 5 Oscars. ', 0),
(55, 'The Lives of Others (2006)', 'Florian Henckel von Donnersmarck', '', 'R', '2h 17min', '3/23/2006', ' In 1984 East Berlin an agent of the secret p', ' Won 1 Oscar. ', 0),
(56, 'Nuovo Cinema Paradiso (1988)', 'Giuseppe Tornatore', 'Giuseppe Tornatore', 'R', '2h 35min', '11/17/1988', ' A filmmaker recalls his childhood when he fe', ' Won 1 Oscar. ', 0),
(57, 'Paths of Glory (1957)', 'Stanley Kubrick', 'Stanley Kubrick', '', '1h 28min', '10/25/1957', ' After refusing to attack an enemy position a', ' Nominated for 1 BAFTA Film Award. ', 0),
(58, 'Django Unchained (2012)', 'Quentin Tarantino', '', 'R', '2h 45min', '1/18/2013', ' With the help of a German bounty hunter a fr', ' Won 2 Oscars. ', 0),
(59, 'The Shining (1980)', 'Stanley Kubrick', 'Stephen King', '', '2h 26min', '5/23/1980', ' A family heads to an isolated hotel for the ', '', 0),
(60, 'Hotaru no haka (1988)', 'Isao Takahata', 'Akiyuki Nosaka', '', '1h 29min', '4/16/1988', ' A young boy and his little sister struggle t', '', 0),
(61, 'WALL·E (2008)', 'Andrew Stanton', 'Andrew Stanton', '', '1h 38min', '9/5/2008', ' In the distant future a small waste-collecti', ' Won 1 Oscar. ', 0),
(62, 'The Dark Knight Rises (2012)', 'Christopher Nolan', 'Jonathan Nolan', 'PG-13', '2h 44min', '7/27/2012', ' Eight years after the Joker''s reign of anarc', ' Nominated for 1 BAFTA Film Award. ', 0),
(63, 'American Beauty (1999)', 'Sam Mendes', '', 'R', '2h 2min', '10/1/1999', ' A sexually frustrated suburban father has a ', ' Won 5 Oscars. ', 0),
(64, 'Mononoke-hime (1997)', 'Hayao Miyazaki', '', 'PG-13', '2h 14min', '7/12/1997', ' On a journey to find the cure for a Tatariga', '', 0),
(65, 'Aliens (1986)', 'James Cameron', 'James Cameron', 'R', '2h 17min', '7/18/1986', ' The moon from ', ' Won 2 Oscars. ', 0),
(66, 'Oldeuboi (2003)', 'Chan-wook Park', 'Garon Tsuchiya', 'R', '2h', '11/21/2003', ' After being kidnapped and imprisoned for 15 ', '', 0),
(67, 'Citizen Kane (1941)', 'Orson Welles', 'Herman J. Mankiewicz', '', '1h 59min', '9/5/1941', ' Following the death of a publishing tycoon n', ' Won 1 Oscar. ', 0),
(68, 'Once Upon a Time in America (1984)', 'Sergio Leone', 'Harry Grey', 'R', '3h 49min', '6/1/1984', ' A former Prohibition-era Jewish gangster ret', ' Nominated for 2 Golden Globes. ', 0),
(69, 'Das Boot (1981)', 'Wolfgang Petersen', 'Wolfgang Petersen', 'R', '2h 29min', '9/17/1981', ' The claustrophobic world of a WWII German U-', ' Nominated for 6 Oscars. ', 0),
(70, 'North by Northwest (1959)', 'Alfred Hitchcock', '', '', '2h 16min', '9/26/1959', ' A hapless New York advertising executive is ', ' Nominated for 3 Oscars. ', 0),
(71, 'Witness for the Prosecution (1957)', 'Billy Wilder', 'Agatha Christie', '', '1h 56min', '2/6/1958', ' A veteran British barrister must defend his ', ' Nominated for 6 Oscars. ', 0),
(72, 'Vertigo (1958)', 'Alfred Hitchcock', 'Alec Coppel', 'PG', '2h 8min', '7/21/1958', ' A San Francisco detective suffering from acr', ' Nominated for 2 Oscars. ', 0),
(73, 'Star Wars: Episode VI - Return of the Jedi (1', 'Richard Marquand', 'Lawrence Kasdan', 'PG', '2h 11min', '4/21/1986', ' After rescuing Han Solo from the palace of J', ' Nominated for 4 Oscars. ', 0),
(74, 'M (1931)', 'Fritz Lang', 'Thea von Harbou', '', '1h 57min', '8/31/1931', ' When the police in a German city are unable ', '', 0),
(75, 'Reservoir Dogs (1992)', 'Quentin Tarantino', 'Quentin Tarantino', 'R', '1h 39min', '9/2/1992', ' After a simple jewelry heist goes terribly w', '', 0),
(76, 'Braveheart (1995)', 'Mel Gibson', '', 'R', '2h 58min', '5/24/1995', ' When his secret bride is executed for assaul', ' Won 5 Oscars. ', 0),
(77, 'Amélie (2001)', 'Jean-Pierre Jeunet', 'Guillaume Laurant', 'R', '2h 2min', '11/29/2002', ' Am&eacute;lie is an innocent and naive girl ', ' Nominated for 5 Oscars. ', 0),
(78, 'Requiem for a Dream (2000)', 'Darren Aronofsky', 'Hubert Selby Jr.', 'R', '1h 42min', '12/15/2000', ' The drug-induced utopias of four Coney Islan', ' Nominated for 1 Oscar. ', 0),
(79, 'A Clockwork Orange (1971)', 'Stanley Kubrick', 'Stanley Kubrick', '', '2h 16min', '1/13/1972', ' In future Britain charismatic delinquent Ale', ' Nominated for 4 Oscars. ', 0),
(80, 'Taxi Driver (1976)', 'Martin Scorsese', '', '', '1h 53min', '2/8/1976', ' A mentally unstable Vietnam War veteran work', ' Nominated for 4 Oscars. ', 0),
(81, 'Double Indemnity (1944)', 'Billy Wilder', 'Billy Wilder', '', '1h 47min', '4/24/1944', ' An insurance representative lets himself be ', ' Nominated for 7 Oscars. ', 0),
(82, 'Lawrence of Arabia (1962)', 'David Lean', 'T.E. Lawrence', '', '3h 36min', '12/11/1962', ' The story of T.E. Lawrence the English offic', ' Won 7 Oscars. ', 0),
(83, 'Toy Story 3 (2010)', 'Lee Unkrich', 'John Lasseter', '', '1h 43min', '6/18/2010', ' The toys are mistakenly delivered to a day-c', ' Won 2 Oscars. ', 0),
(84, 'To Kill a Mockingbird (1962)', 'Robert Mulligan', 'Harper Lee', '', '2h 9min', '3/16/1963', ' Atticus Finch a lawyer in the Depression-era', ' Won 3 Oscars. ', 0),
(85, 'Eternal Sunshine of the Spotless Mind (2004)', 'Michel Gondry', 'Charlie Kaufman', 'R', '1h 48min', '1/7/2005', ' When their relationship turns sour a couple ', ' Won 1 Oscar. ', 0),
(86, 'Amadeus (1984)', 'Milos Forman', 'Peter Shaffer', 'R', '2h 40min', '10/31/1984', ' The incredible story of Wolfgang Amadeus Moz', ' Won 8 Oscars. ', 0),
(87, 'Full Metal Jacket (1987)', 'Stanley Kubrick', 'Gustav Hasford', '', '1h 56min', '7/10/1987', ' A pragmatic U.S. Marine observes the dehuman', ' Nominated for 1 Oscar. ', 0),
(88, 'The Sting (1973)', 'George Roy Hill', '', '', '2h 9min', '12/26/1973', ' In Chicago in September 1936 a young con man', ' Won 7 Oscars. ', 0),
(89, '2001: A Space Odyssey (1968)', 'Stanley Kubrick', 'Stanley Kubrick', '', '2h 29min', '5/12/1968', ' Humanity finds a mysterious obviously artifi', ' Won 1 Oscar. ', 0),
(90, 'Ladri di biciclette (1948)', 'Vittorio De Sica', 'Cesare Zavattini', '', '1h 29min', '11/24/1948', ' Set in Post-WWII Italy a working class man''s', ' Nominated for 1 Oscar. ', 0),
(91, 'Toy Story (1995)', 'John Lasseter', 'John Lasseter', '', '1h 21min', '11/22/1995', ' A cowboy doll is profoundly threatened and j', ' Nominated for 3 Oscars. ', 0),
(92, 'Singin'' in the Rain (1952)', '', 'Betty Comden', '', '1h 43min', '4/11/1952', ' A silent film production company and cast ma', ' Nominated for 2 Oscars. ', 0),
(93, 'Snatch (2000)', 'Guy Ritchie', '', 'R', '1h 44min', '9/1/2000', ' Unscrupulous boxing promoters violent bookma', '', 0),
(94, 'Inglourious Basterds (2009)', '', '', 'R', '2h 33min', '8/28/2009', ' In Nazi-occupied France during World War II ', ' Won 1 Oscar. ', 0),
(95, 'The Kid (1921)', 'Charles Chaplin', '', '', '1h 8min', '10/18/2003', ' The Tramp cares for an abandoned child but e', '', 0),
(96, 'Monty Python and the Holy Grail (1975)', '', 'Graham Chapman', '', '1h 31min', '5/23/1975', ' King Arthur and his knights embark on a low-', '', 0),
(97, 'L.A. Confidential (1997)', 'Curtis Hanson', 'James Ellroy', 'R', '2h 18min', '1/2/1998', ' As corruption grows in 1950s LA three police', ' Won 2 Oscars. ', 0),
(98, 'Per qualche dollaro in più (1965)', 'Sergio Leone', 'Sergio Leone', '', '2h 12min', '12/18/1965', ' Two bounty hunters with the same intentions ', '', 0),
(99, 'Rashômon (1950)', 'Akira Kurosawa', 'Ryûnosuke Akutagawa', '', '1h 28min', '8/26/1950', ' A heinous crime and its aftermath are recall', ' Nominated for 1 Oscar. ', 0),
(100, 'The Apartment (1960)', 'Billy Wilder', 'Billy Wilder', '', '2h 5min', '9/16/1960', ' A man tries to rise in his company by lettin', ' Won 5 Oscars. ', 0),
(101, 'Scarface (1983)', 'Brian De Palma', '', '', '2h 50min', '12/9/1983', ' In Miami in 1980 a determined Cuban immigran', ' Nominated for 3 Golden Globes. ', 0),
(102, 'Indiana Jones and the Last Crusade (1989)', 'Steven Spielberg', 'Jeffrey Boam', 'PG-13', '2h 7min', '5/24/1989', ' When Dr. Henry Jones Sr. suddenly goes missi', ' Won 1 Oscar. ', 0),
(103, '3 Idiots (2009)', 'Rajkumar Hirani', 'Rajkumar Hirani', 'PG-13', '2h 50min', '12/25/2009', ' Two friends are searching for their long los', '', 0),
(104, 'Jodaeiye Nader az Simin (2011)', 'Asghar Farhadi', '', 'PG-13', '2h 3min', '3/16/2011', ' A married couple are faced with a difficult ', ' Won 1 Oscar. ', 0),
(105, 'Metropolis (1927)', 'Fritz Lang', 'Thea von Harbou', '', '2h 33min', '3/5/1927', ' In a futuristic city sharply divided between', '', 0),
(106, 'Jagten (2012)', 'Thomas Vinterberg', 'Tobias Lindholm', 'R', '1h 55min', '1/10/2013', ' A teacher lives a lonely life all the while ', ' Nominated for 1 Oscar. ', 0),
(107, 'All About Eve (1950)', 'Joseph L. Mankiewicz', '', '', '2h 18min', '1/15/1951', ' An ingenue insinuates herself into the compa', ' Won 6 Oscars. ', 0),
(108, 'Yôjinbô (1961)', 'Akira Kurosawa', 'Akira Kurosawa', '', '1h 50min', '4/25/1961', ' A crafty ronin comes to a town divided by tw', ' Nominated for 1 Oscar. ', 0),
(109, 'Good Will Hunting (1997)', 'Gus Van Sant', 'Matt Damon', 'R', '2h 6min', '1/9/1998', ' Will Hunting a janitor at M.I.T. has a gift ', ' Won 2 Oscars. ', 0),
(110, 'Batman Begins (2005)', 'Christopher Nolan', 'Bob Kane', 'PG-13', '2h 20min', '6/17/2005', ' After training with his mentor Batman begins', ' Nominated for 1 Oscar. ', 0),
(111, 'The Treasure of the Sierra Madre (1948)', 'John Huston', 'John Huston', '', '2h 6min', '1/24/1948', ' Fred Dobbs and Bob Curtin two Americans sear', ' Won 3 Oscars. ', 0),
(112, 'Some Like It Hot (1959)', 'Billy Wilder', 'Billy Wilder', '', '2h', '4/14/1959', ' When two musicians witness a mob hit they fl', ' Won 1 Oscar. ', 0),
(113, 'Up (2009)', '', 'Pete Docter', 'PG', '1h 36min', '9/25/2009', ' Seventy-eight year old Carl Fredricksen trav', ' Won 2 Oscars. ', 0),
(114, 'Unforgiven (1992)', 'Clint Eastwood', '', 'R', '2h 11min', '8/7/1992', ' Retired Old West gunslinger William Munny re', ' Won 4 Oscars. ', 0),
(115, 'The Third Man (1949)', 'Carol Reed', 'Graham Greene', '', '1h 44min', '8/31/1949', ' Pulp novelist Holly Martins travels to shado', ' Won 1 Oscar. ', 0),
(116, 'Bacheha-Ye aseman (1997)', 'Majid Majidi', '', 'PG', '1h 29min', '1/22/1999', ' After a boy loses his sister''s pair of shoes', ' Nominated for 1 Oscar. ', 0),
(117, 'Der Untergang (2004)', 'Oliver Hirschbiegel', 'Bernd Eichinger', 'R', '2h 36min', '9/9/2005', ' Traudl Junge the final secretary for Adolf H', ' Nominated for 1 Oscar. ', 0),
(118, 'Raging Bull (1980)', 'Martin Scorsese', 'Jake LaMotta', '', '2h 9min', '12/19/1980', ' An emotionally self-destructive boxer''s jour', ' Won 2 Oscars. ', 0),
(119, 'Die Hard (1988)', 'John McTiernan', 'Roderick Thorp', '', '2h 11min', '7/20/1988', ' John McClane officer of the NYPD tries to sa', ' Nominated for 4 Oscars. ', 0),
(120, 'Inside Out (2015)', '', 'Pete Docter', 'PG', '1h 35min', '6/19/2015', ' After young Riley is uprooted from her Midwe', ' Won 1 Oscar. ', 0),
(121, 'The Great Escape (1963)', 'John Sturges', 'Paul Brickhill', '', '2h 52min', '7/4/1963', ' Allied P.O.W.s plan for several hundred of t', ' Nominated for 1 Oscar. ', 0),
(122, 'Chinatown (1974)', 'Roman Polanski', '', '', '2h 10min', '6/20/1974', ' A private detective hired to expose an adult', ' Won 1 Oscar. ', 0),
(123, 'Heat (1995)', 'Michael Mann', '', 'R', '2h 50min', '12/15/1995', ' A group of professional bank robbers start t', '', 0),
(124, 'Pan''s Labyrinth (2006)', 'Guillermo del Toro', '', 'R', '1h 58min', '12/28/2007', ' In the falangist Spain of 1944 the bookish y', ' Won 3 Oscars. ', 0),
(125, 'Room (2015)', 'Lenny Abrahamson', 'Emma Donoghue', 'R', '1h 58min', '1/15/2016', ' A young boy is raised within the confines of', ' Won 1 Oscar. ', 0),
(126, 'On the Waterfront (1954)', 'Elia Kazan', 'Budd Schulberg', '', '1h 48min', '6/22/1954', ' An ex-prize fighter turned longshoreman stru', ' Won 8 Oscars. ', 0),
(127, 'Tonari no Totoro (1988)', 'Hayao Miyazaki', '', '', '1h 26min', '4/16/1988', ' When two girls move to the country to be nea', '', 0),
(128, 'Ikiru (1952)', 'Akira Kurosawa', 'Akira Kurosawa', '', '2h 23min', '10/9/1952', ' A bureaucrat tries to find a meaning in his ', ' Nominated for 1 BAFTA Film Award. ', 0),
(129, 'Ran (1985)', 'Akira Kurosawa', 'Akira Kurosawa', '', '2h 42min', '6/1/1985', ' In Medieval Japan an elderly warlord retires', ' Won 1 Oscar. ', 0),
(130, 'The Gold Rush (1925)', 'Charles Chaplin', '', '', '1h 35min', '1/29/2004', ' A prospector goes to the Klondike in search ', ' Nominated for 2 Oscars. ', 0),
(131, 'Mr. Smith Goes to Washington (1939)', 'Frank Capra', 'Sidney Buchman', '', '2h 9min', '10/19/1939', ' A naive man is appointed to fill a vacancy i', ' Won 1 Oscar. ', 0),
(132, 'La passion de Jeanne d''Arc (1928)', 'Carl Theodor Dreyer', 'Joseph Delteil', '', '1h 50min', '10/25/1928', ' A chronicle of the trial of Jeanne d''Arc on ', '', 0),
(133, 'The Bridge on the River Kwai (1957)', 'David Lean', 'Pierre Boulle', 'PG', '2h 41min', '10/11/1957', ' After settling his differences with a Japane', ' Won 7 Oscars. ', 0),
(134, 'El secreto de sus ojos (2009)', 'Juan José Campanella', 'Eduardo Sacheri', 'R', '2h 9min', '8/13/2009', ' A retired legal counselor writes a novel hop', ' Won 1 Oscar. ', 0),
(135, 'Blade Runner (1982)', 'Ridley Scott', 'Hampton Fancher', 'R', '1h 57min', '6/25/1982', ' A blade runner must pursue and try to termin', ' Nominated for 2 Oscars. ', 0),
(136, 'Det sjunde inseglet (1957)', 'Ingmar Bergman', 'Ingmar Bergman', '', '1h 36min', '2/16/1957', ' A man seeks answers about life death and the', '', 0),
(137, 'Lock Stock and Two Smoking Barrels (1998)', 'Guy Ritchie', '', 'R', '1h 47min', '6/4/1999', ' A botched card game in London triggers four ', ' Nominated for 1 BAFTA Film Award. ', 0),
(138, 'Hauru no ugoku shiro (2004)', 'Hayao Miyazaki', 'Hayao Miyazaki', 'PG', '1h 59min', '11/20/2004', ' When an unconfident young woman is cursed wi', ' Nominated for 1 Oscar. ', 0),
(139, 'Casino (1995)', 'Martin Scorsese', 'Nicholas Pileggi', 'R', '2h 58min', '1/20/1996', ' Greed deception money power and murder occur', ' Nominated for 1 Oscar. ', 0),
(140, 'Sunrise: A Song of Two Humans (1927)', 'F.W. Murnau', 'Carl Mayer', '', '1h 34min', '11/4/1927', ' A married farmer falls under the spell of a ', ' Won 3 Oscars. ', 0),
(141, 'The General (1926)', '', 'Buster Keaton', '', '1h 7min', '2/24/1927', ' When Union spies steal an engineer''s beloved', '', 0),
(142, 'Smultronstället (1957)', 'Ingmar Bergman', '', '', '1h 31min', '12/26/1957', ' After living a life marked by coldness an ag', ' Nominated for 1 Oscar. ', 0),
(143, 'Judgment at Nuremberg (1961)', 'Stanley Kramer', 'Abby Mann', '', '3h 6min', '12/18/1961', ' In 1948 an American court in occupied German', ' Won 2 Oscars. ', 0),
(144, 'The Elephant Man (1980)', 'David Lynch', 'Christopher De Vore', '', '2h 4min', '10/10/1980', ' A Victorian surgeon rescues a heavily disfig', ' Nominated for 8 Oscars. ', 0),
(145, 'A Beautiful Mind (2001)', 'Ron Howard', 'Akiva Goldsman', 'PG-13', '2h 15min', '5/3/2002', ' After John Nash a brilliant but asocial math', ' Won 4 Oscars. ', 0),
(146, 'Warrior (2011)', 'Gavin O''Connor', 'Gavin O''Connor', 'PG-13', '2h 20min', '9/9/2011', ' The youngest son of an alcoholic former boxe', ' Nominated for 1 Oscar. ', 0),
(147, 'The Wolf of Wall Street (2013)', 'Martin Scorsese', 'Terence Winter', 'R', '3h', '12/25/2013', ' Based on the true story of ', ' Nominated for 5 Oscars. ', 0),
(148, 'V for Vendetta (2005)', 'James McTeigue', 'Lilly Wachowski', 'R', '2h 12min', '4/21/2006', ' In a future British tyranny a shadowy freedo', '', 0),
(149, 'Incendies (2010)', 'Denis Villeneuve', 'Denis Villeneuve', 'R', '2h 19min', '1/12/2011', ' Twins journey to the Middle East to discover', ' Nominated for 1 Oscar. ', 0),
(150, 'Tôkyô monogatari (1953)', 'Yasujirô Ozu', 'Kôgo Noda', '', '2h 16min', '11/3/1953', ' An old couple visit their children and grand', '', 0),
(151, 'Gran Torino (2008)', 'Clint Eastwood', 'Nick Schenk', 'R', '1h 56min', '1/9/2009', ' Disgruntled Korean War veteran Walt Kowalski', ' Nominated for 1 Golden Globe. ', 0),
(152, 'The Big Lebowski (1998)', '', 'Ethan Coen', 'R', '1h 57min', '1/15/1999', ' &quot;The Dude&quot; Lebowski mistaken for a', '', 0),
(153, 'Star Wars: Episode VII - The Force Awakens (2', 'J.J. Abrams', 'Lawrence Kasdan', 'PG-13', '2h 18min', '12/18/2015', ' Three decades after the defeat of the Galact', ' Nominated for 5 Oscars. ', 0),
(154, 'The Deer Hunter (1978)', 'Michael Cimino', 'Michael Cimino', '', '3h 3min', '2/23/1979', ' An in-depth examination of the ways in which', ' Won 5 Oscars. ', 0),
(155, 'Dial M for Murder (1954)', 'Alfred Hitchcock', 'Frederick Knott', '', '1h 45min', '5/29/1954', ' An ex-tennis pro carries out a plot to murde', ' Nominated for 1 BAFTA Film Award. ', 0),
(156, 'Trainspotting (1996)', 'Danny Boyle', 'Irvine Welsh', 'R', '1h 34min', '2/23/1996', ' Renton deeply immersed in the Edinburgh drug', ' Nominated for 1 Oscar. ', 0),
(157, 'Gone with the Wind (1939)', '', 'Margaret Mitchell', '', '3h 58min', '1/17/1940', ' A manipulative Southern belle carries on a t', ' Won 8 Oscars. ', 0),
(158, 'Fargo (1996)', '', 'Ethan Coen', 'R', '1h 38min', '4/5/1996', ' Jerry Lundegaard''s inept crime falls apart d', ' Won 2 Oscars. ', 0),
(159, 'Rebecca (1940)', 'Alfred Hitchcock', 'Daphne Du Maurier', '', '2h 10min', '4/12/1940', ' A self-conscious bride is tormented by the m', ' Won 2 Oscars. ', 0),
(160, 'Cool Hand Luke (1967)', 'Stuart Rosenberg', 'Donn Pearce', '', '2h 6min', '11/1/1967', ' A man refuses to conform to life in a rural ', ' Won 1 Oscar. ', 0),
(161, 'Finding Nemo (2003)', '', 'Andrew Stanton', '', '1h 40min', '5/30/2003', ' After his son is captured in the Great Barri', ' Won 1 Oscar. ', 0),
(162, 'How to Train Your Dragon (2010)', '', 'William Davies', 'PG', '1h 38min', '4/2/2010', ' A hapless young Viking who aspires to hunt d', ' Nominated for 2 Oscars. ', 0),
(163, 'The Sixth Sense (1999)', 'M. Night Shyamalan', '', 'PG-13', '1h 47min', '8/6/1999', ' A boy who communicates with spirits that don', ' Nominated for 6 Oscars. ', 0),
(164, 'The Thing (1982)', 'John Carpenter', 'Bill Lancaster', '', '1h 49min', '6/25/1982', ' It''s the first week of winter in 1982. An Am', '', 0),
(165, 'No Country for Old Men (2007)', '', 'Joel Coen', 'R', '2h 2min', '2/22/2008', ' Violence and mayhem ensue after a hunter stu', ' Won 4 Oscars. ', 0),
(166, 'The Message (1976)', 'Moustapha Akkad', 'H.A.L. Craig', '', '2h 57min', '7/8/1977', ' In the 7th century Mohammed is visited by An', ' Nominated for 1 Oscar. ', 0),
(167, 'Into the Wild (2007)', 'Sean Penn', 'Sean Penn', 'R', '2h 28min', '10/19/2007', ' After graduating from Emory University top s', ' Nominated for 2 Oscars. ', 0),
(168, 'Idi i smotri (1985)', 'Elem Klimov', 'Ales Adamovich', '', '2h 22min', '10/17/1985', ' After finding an old rifle a young boy joins', '', 0),
(169, 'Mary and Max (2009)', 'Adam Elliot', '', '', '1h 32min', '4/9/2009', ' A tale of friendship between two unlikely pe', '', 0),
(170, 'Gone Girl (2014)', 'David Fincher', 'Gillian Flynn', 'R', '2h 29min', '10/3/2014', ' With his wife''s disappearance having become ', ' Nominated for 1 Oscar. ', 0),
(171, 'Kill Bill: Vol. 1 (2003)', 'Quentin Tarantino', 'Quentin Tarantino', 'R', '1h 51min', '10/1/2004', ' The Bride wakens from a four-year coma. The ', ' Nominated for 1 Golden Globe. ', 0),
(172, 'It Happened One Night (1934)', 'Frank Capra', 'Robert Riskin', '', '1h 45min', '2/23/1934', ' A spoiled heiress running away from her fami', ' Won 5 Oscars. ', 0),
(173, 'There Will Be Blood (2007)', 'Paul Thomas Anderson', 'Paul Thomas Anderson', 'R', '2h 38min', '1/25/2008', ' A story of family religion hatred oil and ma', ' Won 2 Oscars. ', 0),
(174, 'Life of Brian (1979)', 'Terry Jones', 'Graham Chapman', '', '1h 34min', '11/8/1979', ' Brian is born on the original Christmas in t', '', 0),
(175, 'Rush (2013)', 'Ron Howard', '', 'R', '2h 3min', '9/27/2013', ' The merciless 1970s rivalry between Formula ', ' Nominated for 2 Golden Globes. ', 0),
(176, 'Le notti di Cabiria (1957)', 'Federico Fellini', 'Maria Molinari', '', '1h 50min', '5/26/1957', ' A waifish prostitute wanders the streets of ', ' Won 1 Oscar. ', 0),
(177, 'Hotel Rwanda (2004)', 'Terry George', 'Keir Pearson', 'PG-13', '2h 1min', '4/15/2005', ' Paul Rusesabagina was a hotel manager who ho', ' Nominated for 3 Oscars. ', 0),
(178, 'Platoon (1986)', 'Oliver Stone', '', '', '2h', '2/6/1987', ' A young recruit in Vietnam faces a moral cri', ' Won 4 Oscars. ', 0),
(179, 'Le salaire de la peur (1953)', 'Henri-Georges Clouzot', 'Georges Arnaud', '', '2h 11min', '4/22/1953', ' In a decrepit South American village men are', ' Won 1 BAFTA Film Award. ', 0),
(180, 'Network (1976)', 'Sidney Lumet', '', '', '2h 1min', '11/27/1976', ' A television network cynically exploits a de', ' Won 4 Oscars. ', 0),
(181, 'The Maltese Falcon (1941)', 'John Huston', 'John Huston', '', '1h 40min', '10/18/1941', ' A private detective takes on a case that inv', ' Nominated for 3 Oscars. ', 0),
(182, 'Spotlight (2015)', 'Tom McCarthy', 'Josh Singer', 'R', '2h 8min', '2/19/2016', ' The true story of how the Boston Globe uncov', ' Won 2 Oscars. ', 0),
(183, 'Shutter Island (2010)', 'Martin Scorsese', 'Laeta Kalogridis', 'R', '2h 18min', '2/19/2010', ' In 1954 a U.S. marshal investigates the disa', '', 0),
(184, 'Butch Cassidy and the Sundance Kid (1969)', 'George Roy Hill', '', '', '1h 50min', '10/24/1969', ' Two Western bank/train robbers flee to Boliv', ' Won 4 Oscars. ', 0),
(185, 'Mad Max: Fury Road (2015)', 'George Miller', 'George Miller', 'R', '2h', '5/15/2015', ' A woman rebels against a tyrannical ruler in', ' Won 6 Oscars. ', 0),
(186, 'Stand by Me (1986)', 'Rob Reiner', 'Stephen King', '', '1h 29min', '8/22/1986', ' After the death of a friend a writer recount', ' Nominated for 1 Oscar. ', 0),
(187, 'In the Name of the Father (1993)', 'Jim Sheridan', 'Gerry Conlon', 'R', '2h 13min', '12/27/1993', ' A man''s coerced confession to an IRA bombing', ' Nominated for 7 Oscars. ', 0),
(188, 'Les quatre cents coups (1959)', 'François Truffaut', 'François Truffaut', '', '1h 39min', '6/3/1959', ' Moving story of a young boy who left without', ' Nominated for 1 Oscar. ', 0),
(189, 'Persona (1966)', 'Ingmar Bergman', '', '', '1h 25min', '12/21/1966', ' A nurse is put in charge of an actress who c', ' Nominated for 1 BAFTA Film Award. ', 0),
(190, '12 Years a Slave (2013)', 'Steve McQueen', 'John Ridley', 'R', '2h 14min', '11/8/2013', ' In the antebellum United States ', ' Won 3 Oscars. ', 0),
(191, 'The Grand Budapest Hotel (2014)', 'Wes Anderson', 'Stefan Zweig', 'R', '1h 39min', '3/6/2014', ' The adventures of Gustave H a legendary conc', ' Won 4 Oscars. ', 0),
(192, 'Relatos salvajes (2014)', 'Damián Szifrón', '', 'R', '2h 2min', '8/21/2014', ' Six short stories that explore the extremiti', ' Nominated for 1 Oscar. ', 0),
(193, 'Ben-Hur (1959)', 'William Wyler', 'Lew Wallace', '', '3h 32min', '12/26/1959', ' When a Jewish prince is betrayed and sent in', ' Won 11 Oscars. ', 0),
(194, 'Amores perros (2000)', 'Alejandro G. Iñárritu', '', 'R', '2h 34min', '6/16/2000', ' A horrific car accident connects three stori', ' Nominated for 1 Oscar. ', 0),
(195, 'Million Dollar Baby (2004)', 'Clint Eastwood', 'Paul Haggis', 'PG-13', '2h 12min', '7/15/2005', ' A determined woman works with a hardened box', ' Won 4 Oscars. ', 0),
(196, 'Zootopia (2016)', '', 'Byron Howard', 'PG', '1h 48min', '3/4/2016', ' In a city of anthropomorphic animals a rooki', '', 0),
(197, 'The Princess Bride (1987)', 'Rob Reiner', 'William Goldman', '', '1h 38min', '10/9/1987', ' While home sick in bed a young boy''s grandfa', ' Nominated for 1 Oscar. ', 0),
(198, 'Jurassic Park (1993)', 'Steven Spielberg', 'Michael Crichton', 'PG-13', '2h 7min', '9/17/1993', ' During a preview tour a theme park suffers a', ' Won 3 Oscars. ', 0),
(199, 'Hachi: A Dog''s Tale (2009)', 'Lasse Hallström', 'Stephen P. Lindsey', '', '1h 33min', '3/12/2010', ' A college professor''s bond with the abandone', '', 0),
(200, 'Touch of Evil (1958)', 'Orson Welles', 'Orson Welles', 'PG-13', '1h 35min', '5/21/1958', ' A stark perverse story of murder kidnapping ', '', 0),
(201, 'Kaze no tani no Naushika (1984)', 'Hayao Miyazaki', 'Hayao Miyazaki', 'PG', '1h 57min', '3/11/1984', ' Warrior/pacifist Princess Nausica&auml; desp', '', 0),
(202, 'The Grapes of Wrath (1940)', 'John Ford', 'Nunnally Johnson', '', '2h 9min', '3/15/1940', ' A poor Midwest family is forced off of their', ' Won 2 Oscars. ', 0),
(203, 'Stalker (1979)', 'Andrei Tarkovsky', 'Arkadiy Strugatskiy', '', '2h 43min', '4/17/1980', ' A guide leads two men through an area known ', '', 0),
(204, 'Annie Hall (1977)', 'Woody Allen', 'Woody Allen', '', '1h 33min', '4/20/1977', ' Neurotic New York comedian Alvy Singer falls', ' Won 4 Oscars. ', 0),
(205, 'Salinui chueok (2003)', 'Joon-ho Bong', 'Joon-ho Bong', '', '2h 11min', '5/2/2003', ' In 1986 in the province of Gyunggi in South ', '', 0),
(206, 'Before Sunrise (1995)', 'Richard Linklater', 'Richard Linklater', 'R', '1h 45min', '1/27/1995', ' A young man and woman meet on a train in Eur', '', 0),
(207, 'The Truman Show (1998)', 'Peter Weir', '', 'PG', '1h 43min', '6/5/1998', ' An insurance salesman/adjuster discovers his', ' Nominated for 3 Oscars. ', 0),
(208, 'The Bourne Ultimatum (2007)', 'Paul Greengrass', 'Tony Gilroy', 'PG-13', '1h 55min', '8/17/2007', ' Jason Bourne dodges a ruthless CIA official ', ' Won 3 Oscars. ', 0),
(209, 'Gandhi (1982)', 'Richard Attenborough', '', '', '3h 11min', '2/17/1983', ' Gandhi''s character is fully explained as a m', ' Won 8 Oscars. ', 0),
(210, 'Les diaboliques (1955)', 'Henri-Georges Clouzot', 'Pierre Boileau', '', '1h 56min', '1/29/1955', ' The wife of a cruel headmaster and his mistr', '', 0),
(211, 'Rocky (1976)', 'John G. Avildsen', '', '', '2h', '12/3/1976', ' Rocky Balboa a small-time boxer gets a supre', ' Won 3 Oscars. ', 0),
(212, 'Donnie Darko (2001)', 'Richard Kelly', '', 'R', '1h 53min', '10/26/2001', ' A troubled teenager is plagued by visions of', '', 0),
(213, 'Harry Potter and the Deathly Hallows: Part 2 ', 'David Yates', 'Steve Kloves', 'PG-13', '2h 10min', '7/15/2011', ' Harry Ron and Hermione search for Voldemort''', ' Nominated for 3 Oscars. ', 0),
(214, '8½ (1963)', 'Federico Fellini', 'Federico Fellini', '', '2h 18min', '2/14/1963', ' A harried movie director retreats into his m', ' Won 2 Oscars. ', 0),
(215, 'Monsters Inc. (2001)', '', 'Pete Docter', 'G', '1h 32min', '3/29/2002', ' In order to power the city monsters have to ', ' Won 1 Oscar. ', 0),
(216, 'The Wizard of Oz (1939)', '', 'Noel Langley', '', '1h 42min', '8/25/1939', ' Dorothy Gale is swept away to a magical land', ' Won 2 Oscars. ', 0),
(217, 'The Terminator (1984)', 'James Cameron', 'James Cameron', '', '1h 47min', '10/26/1984', ' A human-looking indestructible cyborg is sen', '', 0),
(218, 'Twelve Monkeys (1995)', 'Terry Gilliam', 'Chris Marker', 'R', '2h 9min', '12/2/1996', ' In a future world devastated by disease a co', ' Nominated for 2 Oscars. ', 0),
(219, 'Groundhog Day (1993)', 'Harold Ramis', 'Danny Rubin', 'PG', '1h 41min', '2/12/1993', ' A weatherman finds himself living the same d', ' Won 1 BAFTA Film Award. ', 0),
(220, 'Song of the Sea (2014)', 'Tomm Moore', 'Will Collins', 'PG', '1h 33min', '12/10/2014', ' Ben a young Irish boy and his little sister ', ' Nominated for 1 Oscar. ', 0),
(221, 'The Best Years of Our Lives (1946)', 'William Wyler', 'Robert E. Sherwood', '', '2h 52min', '6/17/1947', ' Three World War II veterans return home to s', ' Won 7 Oscars. ', 0),
(222, 'Mou gaan dou (2002)', '', 'Alan Mak', 'R', '1h 41min', '12/12/2002', ' A story between a mole in the police departm', '', 0),
(223, 'Jaws (1975)', 'Steven Spielberg', 'Peter Benchley', '', '2h 4min', '6/20/1975', ' When a gigantic great white shark begins to ', ' Won 3 Oscars. ', 0),
(224, 'Deadpool (2016)', 'Tim Miller', 'Rhett Reese', 'R', '1h 48min', '2/12/2016', ' A former Special Forces operative turned mer', '', 0),
(225, 'Prisoners (2013)', 'Denis Villeneuve', '', 'R', '2h 33min', '9/20/2013', ' When Keller Dover''s daughter and her friend ', ' Nominated for 1 Oscar. ', 0),
(226, 'Strangers on a Train (1951)', 'Alfred Hitchcock', 'Raymond Chandler', 'PG', '1h 41min', '6/30/1951', ' A psychotic socialite confronts a pro tennis', ' Nominated for 1 Oscar. ', 0),
(227, 'La haine (1995)', 'Mathieu Kassovitz', '', '', '1h 38min', '5/31/1995', ' 24 hours in the lives of three young men in ', '', 0),
(228, 'Barry Lyndon (1975)', 'Stanley Kubrick', 'Stanley Kubrick', '', '3h 4min', '12/18/1975', ' An Irish rogue wins the heart of a rich wido', ' Won 4 Oscars. ', 0),
(229, 'Sin City (2005)', '', '', 'R', '2h 4min', '6/3/2005', ' A film that explores the dark and miserable ', '', 0),
(230, 'The Revenant (2015)', 'Alejandro G. Iñárritu', 'Mark L. Smith', 'R', '2h 36min', '1/22/2016', ' A frontiersman on a fur trading expedition i', ' Won 3 Oscars. ', 0),
(231, 'Kind Hearts and Coronets (1949)', 'Robert Hamer', 'Roy Horniman', '', '1h 46min', '1/20/1950', ' A distant poor relative of the Duke of D''Asc', ' Nominated for 1 BAFTA Film Award. ', 0),
(232, 'Catch Me If You Can (2002)', 'Steven Spielberg', 'Jeff Nathanson', 'PG-13', '2h 21min', '3/28/2003', ' The true story of ', ' Nominated for 2 Oscars. ', 0),
(233, 'La battaglia di Algeri (1966)', 'Gillo Pontecorvo', 'Franco Solinas', '', '2h 1min', '9/8/1966', ' In the 1950s fear and violence escalate as t', ' Nominated for 3 Oscars. ', 0),
(234, 'Dog Day Afternoon (1975)', 'Sidney Lumet', 'Frank Pierson', '', '2h 5min', '9/21/1975', ' A man robs a bank to pay for his lover''s ope', ' Won 1 Oscar. ', 0),
(235, 'Yip Man (2008)', 'Wilson Yip', 'Edmond Wong', 'R', '1h 46min', '12/12/2008', ' During the Japanese invasion of 1937 when a ', '', 0),
(236, 'Pirates of the Caribbean: The Curse of the Bl', 'Gore Verbinski', 'Ted Elliott', 'PG-13', '2h 23min', '9/26/2003', ' Blacksmith Will Turner teams up with eccentr', ' Nominated for 5 Oscars. ', 0),
(237, 'The Martian (2015)', 'Ridley Scott', 'Drew Goddard', 'PG-13', '2h 24min', '10/2/2015', ' An astronaut becomes stranded on Mars after ', ' Nominated for 7 Oscars. ', 0),
(238, 'The Help (2011)', 'Tate Taylor', 'Tate Taylor', 'PG-13', '2h 26min', '2/3/2012', ' An aspiring author during the civil rights m', ' Won 1 Oscar. ', 0),
(239, 'The Imitation Game (2014)', 'Morten Tyldum', 'Graham Moore', 'PG-13', '1h 54min', '1/2/2015', ' During World War II mathematician Alan Turin', ' Won 1 Oscar. ', 0),
(240, 'Gangs of Wasseypur (2012)', 'Anurag Kashyap', 'Akhilesh Jaiswal', '', '5h 20min', '8/2/2012', ' A clash between Sultan and Shahid Khan leads', '', 0),
(241, 'Captain America: Civil War (2016)', '', 'Christopher Markus', 'PG-13', '2h 27min', '4/29/2016', ' Political interference in the Avengers'' acti', '', 0),
(242, 'Fanny och Alexander (1982)', 'Ingmar Bergman', '', '', '3h 8min', '12/17/1982', ' Two young Swedish children experience the ma', ' Won 4 Oscars. ', 0),
(243, 'Tenkû no shiro Rapyuta (1986)', 'Hayao Miyazaki', '', '', '2h 5min', '8/2/1986', ' A young boy and a girl with a magic crystal ', '', 0),
(244, 'Roman Holiday (1953)', 'William Wyler', 'Ian McLellan Hunter', '', '1h 58min', '9/2/1953', ' A bored and sheltered princess escapes her g', ' Won 3 Oscars. ', 0),
(245, 'Per un pugno di dollari (1964)', 'Sergio Leone', 'Adriano Bolzoni', 'R', '1h 39min', '9/12/1964', ' A wandering gunfighter plays two rival famil', '', 0),
(246, 'Guardians of the Galaxy (2014)', 'James Gunn', 'James Gunn', 'PG-13', '2h 1min', '8/8/2014', ' A group of intergalactic criminals are force', ' Nominated for 2 Oscars. ', 0),
(247, 'The King''s Speech (2010)', 'Tom Hooper', '', 'R', '1h 58min', '2/25/2011', ' The story of King George VI of the United Ki', ' Won 4 Oscars. ', 0),
(248, 'The Avengers (2012)', 'Joss Whedon', 'Joss Whedon', 'PG-13', '2h 23min', '5/1/2012', ' Earth''s mightiest heroes must come together ', ' Nominated for 1 Oscar. ', 0),
(249, 'Kumonosu-jô (1957)', 'Akira Kurosawa', 'Hideo Oguni', '', '1h 50min', '1/15/1957', ' A war-hardened general egged on by his ambit', '', 0),
(250, 'Lagaan: Once Upon a Time in India (2001)', 'Ashutosh Gowariker', 'Ashutosh Gowariker', 'PG', '3h 44min', '6/15/2001', ' The people of a small village in Victorian I', ' Nominated for 1 Oscar. ', 0);

-- --------------------------------------------------------

--
-- Структура на таблица `movies_has_actors`
--

CREATE TABLE IF NOT EXISTS `movies_has_actors` (
  `Movies_idMovies` int(11) NOT NULL,
  `Actors_idActors` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура на таблица `movies_has_companies`
--

CREATE TABLE IF NOT EXISTS `movies_has_companies` (
  `Movies_idMovies` int(11) NOT NULL,
  `Companies_idCompanies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура на таблица `movies_has_genres`
--

CREATE TABLE IF NOT EXISTS `movies_has_genres` (
  `Genres_idGenres` int(11) NOT NULL,
  `Movies_idMovies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура на таблица `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `idReviews` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `text` mediumtext,
  `rating` double DEFAULT NULL,
  `Movies_idMovies` int(11) NOT NULL,
  `Users_idUsers` int(11) NOT NULL,
  `time_of_publishing` varchar(20) DEFAULT NULL,
  `number_of_rates` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `idUsers` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `yearImdbMember` varchar(45) DEFAULT NULL,
  `Users_Log_idUsers_Log` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`idActors`);

--
-- Indexes for table `calculate_usesr_rating`
--
ALTER TABLE `calculate_usesr_rating`
  ADD PRIMARY KEY (`idCalculate_Usesr_Rating`,`Users_idUsers`),
  ADD KEY `fk_Calculate_Usesr_Rating_Users1_idx` (`Users_idUsers`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`idComments`,`Users_idUsers`,`Movies_idMovies`),
  ADD KEY `fk_Comments_Users1_idx` (`Users_idUsers`),
  ADD KEY `fk_Comments_Movies1_idx` (`Movies_idMovies`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`idCompanies`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`idGenres`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`idMovies`),
  ADD UNIQUE KEY `idMovies` (`idMovies`);

--
-- Indexes for table `movies_has_actors`
--
ALTER TABLE `movies_has_actors`
  ADD PRIMARY KEY (`Movies_idMovies`,`Actors_idActors`),
  ADD KEY `fk_Movies_has_Actors_Actors1_idx` (`Actors_idActors`),
  ADD KEY `fk_Movies_has_Actors_Movies1_idx` (`Movies_idMovies`);

--
-- Indexes for table `movies_has_companies`
--
ALTER TABLE `movies_has_companies`
  ADD PRIMARY KEY (`Movies_idMovies`,`Companies_idCompanies`),
  ADD KEY `fk_Movies_has_Companies_Companies1_idx` (`Companies_idCompanies`),
  ADD KEY `fk_Movies_has_Companies_Movies1_idx` (`Movies_idMovies`);

--
-- Indexes for table `movies_has_genres`
--
ALTER TABLE `movies_has_genres`
  ADD PRIMARY KEY (`Genres_idGenres`,`Movies_idMovies`),
  ADD KEY `fk_Genres_has_Movies_Movies1_idx` (`Movies_idMovies`),
  ADD KEY `fk_Genres_has_Movies_Genres_idx` (`Genres_idGenres`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`idReviews`,`Movies_idMovies`,`Users_idUsers`),
  ADD KEY `fk_Reviews_Movies1_idx` (`Movies_idMovies`),
  ADD KEY `fk_Reviews_Users1_idx` (`Users_idUsers`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`,`Users_Log_idUsers_Log`);

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `calculate_usesr_rating`
--
ALTER TABLE `calculate_usesr_rating`
  ADD CONSTRAINT `fk_Calculate_Usesr_Rating_Users1` FOREIGN KEY (`Users_idUsers`) REFERENCES `users` (`idUsers`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения за таблица `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_Comments_Movies1` FOREIGN KEY (`Movies_idMovies`) REFERENCES `movies` (`idMovies`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Comments_Users1` FOREIGN KEY (`Users_idUsers`) REFERENCES `users` (`idUsers`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения за таблица `movies_has_actors`
--
ALTER TABLE `movies_has_actors`
  ADD CONSTRAINT `fk_Movies_has_Actors_Actors1` FOREIGN KEY (`Actors_idActors`) REFERENCES `actors` (`idActors`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Movies_has_Actors_Movies1` FOREIGN KEY (`Movies_idMovies`) REFERENCES `movies` (`idMovies`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения за таблица `movies_has_companies`
--
ALTER TABLE `movies_has_companies`
  ADD CONSTRAINT `fk_Movies_has_Companies_Companies1` FOREIGN KEY (`Companies_idCompanies`) REFERENCES `companies` (`idCompanies`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Movies_has_Companies_Movies1` FOREIGN KEY (`Movies_idMovies`) REFERENCES `movies` (`idMovies`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения за таблица `movies_has_genres`
--
ALTER TABLE `movies_has_genres`
  ADD CONSTRAINT `fk_Genres_has_Movies_Genres` FOREIGN KEY (`Genres_idGenres`) REFERENCES `genres` (`idGenres`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Genres_has_Movies_Movies1` FOREIGN KEY (`Movies_idMovies`) REFERENCES `movies` (`idMovies`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения за таблица `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_Reviews_Movies1` FOREIGN KEY (`Movies_idMovies`) REFERENCES `movies` (`idMovies`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reviews_Users1` FOREIGN KEY (`Users_idUsers`) REFERENCES `users` (`idUsers`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
