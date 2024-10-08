-- MySQL Script generated by MySQL Workbench
-- Wed Jun 26 12:08:18 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `tastydash` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tastydash` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `tastydash` ;

-- -----------------------------------------------------
-- Table `categorias`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `categorias` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `categorias` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NULL,
  PRIMARY KEY (`id_categoria`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `descuentos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `descuentos` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `descuentos` (
  `id_descuento` INT NOT NULL AUTO_INCREMENT,
  `descuento` INT NULL,
  `imagen` VARCHAR(45) NULL,
  `nombreProd` VARCHAR(45) NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_descuento`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `productos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `productos` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `productos` (
  `id_producto` INT NOT NULL AUTO_INCREMENT,
  `imagen` VARCHAR(45) NULL,
  `nomProd` VARCHAR(45) NULL,
  `descProd` VARCHAR(45) NULL,
  `precio` INT NULL,
  `resProducto` INT NULL,
  PRIMARY KEY (`id_producto`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `restaurantes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `restaurantes` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `restaurantes` (
  `id_restaurante` INT NOT NULL AUTO_INCREMENT,
  `nomRes` VARCHAR(45) NULL,
  `distancia` TINYINT(10) NULL,
  `categoriaRes` INT NULL,
  PRIMARY KEY (`id_restaurante`))
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
