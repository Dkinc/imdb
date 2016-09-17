-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema imdb_database
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema imdb_database
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `imdb_database` DEFAULT CHARACTER SET utf8 ;
USE `imdb_database` ;

-- -----------------------------------------------------
-- Table `imdb_database`.`Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_database`.`Users` (
  `idUsers` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `nickname` VARCHAR(45) NULL,
  `yearImdbMember` VARCHAR(45) NULL,
  `Users_Log_idUsers_Log` INT NOT NULL,
  PRIMARY KEY (`idUsers`, `Users_Log_idUsers_Log`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdb_database`.`Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_database`.`Users` (
  `idUsers` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `nickname` VARCHAR(45) NULL,
  `yearImdbMember` VARCHAR(45) NULL,
  `Users_Log_idUsers_Log` INT NOT NULL,
  PRIMARY KEY (`idUsers`, `Users_Log_idUsers_Log`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdb_database`.`Movies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_database`.`Movies` (
  `idMovies` INT NOT NULL,
  `title` VARCHAR(45) NULL,
  `director` VARCHAR(45) NULL,
  `writter` VARCHAR(45) NULL,
  `pg_rating` VARCHAR(45) NULL,
  `movie_length` DOUBLE NULL,
  `release_date` DATE NULL,
  `awards` VARCHAR(50) NULL,
  `resume` MEDIUMTEXT NULL,
  `movie_rating` DOUBLE NULL,
  `number_of_rates` INT NULL,
  PRIMARY KEY (`idMovies`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdb_database`.`Genres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_database`.`Genres` (
  `idGenres` INT NOT NULL,
  `genres_types` VARCHAR(45) NULL,
  PRIMARY KEY (`idGenres`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdb_database`.`Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_database`.`Users` (
  `idUsers` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `nickname` VARCHAR(45) NULL,
  `yearImdbMember` VARCHAR(45) NULL,
  `Users_Log_idUsers_Log` INT NOT NULL,
  PRIMARY KEY (`idUsers`, `Users_Log_idUsers_Log`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdb_database`.`Movies_has_Genres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_database`.`Movies_has_Genres` (
  `Genres_idGenres` INT NOT NULL,
  `Movies_idMovies` INT NOT NULL,
  PRIMARY KEY (`Genres_idGenres`, `Movies_idMovies`),
  INDEX `fk_Genres_has_Movies_Movies1_idx` (`Movies_idMovies` ASC),
  INDEX `fk_Genres_has_Movies_Genres_idx` (`Genres_idGenres` ASC),
  CONSTRAINT `fk_Genres_has_Movies_Genres`
    FOREIGN KEY (`Genres_idGenres`)
    REFERENCES `imdb_database`.`Genres` (`idGenres`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Genres_has_Movies_Movies1`
    FOREIGN KEY (`Movies_idMovies`)
    REFERENCES `imdb_database`.`Movies` (`idMovies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdb_database`.`Reviews`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_database`.`Reviews` (
  `idReviews` INT NOT NULL,
  `title` VARCHAR(45) NULL,
  `text` MEDIUMTEXT NULL,
  `rating` DOUBLE NULL,
  `Movies_idMovies` INT NOT NULL,
  `Users_idUsers` INT NOT NULL,
  `time_of_publishing` VARCHAR(20) NULL,
  `number_of_rates` INT NULL,
  PRIMARY KEY (`idReviews`, `Movies_idMovies`, `Users_idUsers`),
  INDEX `fk_Reviews_Movies1_idx` (`Movies_idMovies` ASC),
  INDEX `fk_Reviews_Users1_idx` (`Users_idUsers` ASC),
  CONSTRAINT `fk_Reviews_Movies1`
    FOREIGN KEY (`Movies_idMovies`)
    REFERENCES `imdb_database`.`Movies` (`idMovies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reviews_Users1`
    FOREIGN KEY (`Users_idUsers`)
    REFERENCES `imdb_database`.`Users` (`idUsers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdb_database`.`Comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_database`.`Comments` (
  `idComments` INT NOT NULL,
  `title` VARCHAR(45) NULL,
  `text_content` MEDIUMTEXT NULL,
  `time_of_publishing` VARCHAR(45) NULL,
  `Users_idUsers` INT NOT NULL,
  `Movies_idMovies` INT NOT NULL,
  PRIMARY KEY (`idComments`, `Users_idUsers`, `Movies_idMovies`),
  INDEX `fk_Comments_Users1_idx` (`Users_idUsers` ASC),
  INDEX `fk_Comments_Movies1_idx` (`Movies_idMovies` ASC),
  CONSTRAINT `fk_Comments_Users1`
    FOREIGN KEY (`Users_idUsers`)
    REFERENCES `imdb_database`.`Users` (`idUsers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comments_Movies1`
    FOREIGN KEY (`Movies_idMovies`)
    REFERENCES `imdb_database`.`Movies` (`idMovies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdb_database`.`Companies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_database`.`Companies` (
  `idCompanies` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `Companiescol` VARCHAR(45) NULL,
  PRIMARY KEY (`idCompanies`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdb_database`.`Movies_has_Companies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_database`.`Movies_has_Companies` (
  `Movies_idMovies` INT NOT NULL,
  `Companies_idCompanies` INT NOT NULL,
  PRIMARY KEY (`Movies_idMovies`, `Companies_idCompanies`),
  INDEX `fk_Movies_has_Companies_Companies1_idx` (`Companies_idCompanies` ASC),
  INDEX `fk_Movies_has_Companies_Movies1_idx` (`Movies_idMovies` ASC),
  CONSTRAINT `fk_Movies_has_Companies_Movies1`
    FOREIGN KEY (`Movies_idMovies`)
    REFERENCES `imdb_database`.`Movies` (`idMovies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Movies_has_Companies_Companies1`
    FOREIGN KEY (`Companies_idCompanies`)
    REFERENCES `imdb_database`.`Companies` (`idCompanies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdb_database`.`Calculate_Usesr_Rating`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_database`.`Calculate_Usesr_Rating` (
  `idCalculate_Usesr_Rating` INT NOT NULL,
  `rating` DOUBLE NULL,
  `number_of_rates` INT NULL,
  `Users_idUsers` INT NOT NULL,
  PRIMARY KEY (`idCalculate_Usesr_Rating`, `Users_idUsers`),
  INDEX `fk_Calculate_Usesr_Rating_Users1_idx` (`Users_idUsers` ASC),
  CONSTRAINT `fk_Calculate_Usesr_Rating_Users1`
    FOREIGN KEY (`Users_idUsers`)
    REFERENCES `imdb_database`.`Users` (`idUsers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdb_database`.`Actors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_database`.`Actors` (
  `idActors` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `biography` VARCHAR(45) NULL,
  `date_of_birth` VARCHAR(45) NULL,
  PRIMARY KEY (`idActors`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdb_database`.`Movies_has_Actors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_database`.`Movies_has_Actors` (
  `Movies_idMovies` INT NOT NULL,
  `Actors_idActors` INT NOT NULL,
  PRIMARY KEY (`Movies_idMovies`, `Actors_idActors`),
  INDEX `fk_Movies_has_Actors_Actors1_idx` (`Actors_idActors` ASC),
  INDEX `fk_Movies_has_Actors_Movies1_idx` (`Movies_idMovies` ASC),
  CONSTRAINT `fk_Movies_has_Actors_Movies1`
    FOREIGN KEY (`Movies_idMovies`)
    REFERENCES `imdb_database`.`Movies` (`idMovies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Movies_has_Actors_Actors1`
    FOREIGN KEY (`Actors_idActors`)
    REFERENCES `imdb_database`.`Actors` (`idActors`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
