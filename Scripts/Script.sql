-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema hospitalcarro
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hospitalcarro
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hospitalcarro` DEFAULT CHARACTER SET utf8 ;
USE `hospitalcarro` ;

-- -----------------------------------------------------
-- Table `hospitalcarro`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalcarro`.`cliente` (
  `idCliente` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `dataNascimento` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hospitalcarro`.`tipocarro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalcarro`.`tipocarro` (
  `idtipoCarro` INT(11) NOT NULL AUTO_INCREMENT,
  `tipoCarro` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipoCarro`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hospitalcarro`.`carro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalcarro`.`carro` (
  `idCarro` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  `ano` INT(4) NOT NULL,
  `tipoCarro_idtipoCarro` INT(11) NOT NULL,
  `Cliente_idCliente` INT(11) NOT NULL,
  PRIMARY KEY (`idCarro`),
  INDEX `fk_Carro_tipoCarro_idx` (`tipoCarro_idtipoCarro` ASC) ,
  INDEX `fk_Carro_Cliente1_idx` (`Cliente_idCliente` ASC) ,
  CONSTRAINT `fk_Carro_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `hospitalcarro`.`cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Carro_tipoCarro`
    FOREIGN KEY (`tipoCarro_idtipoCarro`)
    REFERENCES `hospitalcarro`.`tipocarro` (`idtipoCarro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hospitalcarro`.`curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalcarro`.`curso` (
  `idCurso` INT(11) NOT NULL AUTO_INCREMENT,
  `curso` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idCurso`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hospitalcarro`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalcarro`.`funcionario` (
  `idFuncionario` INT(11) NOT NULL AUTO_INCREMENT,
  `CPF` INT(30) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idFuncionario`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hospitalcarro`.`funcionario_has_curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalcarro`.`funcionario_has_curso` (
  `funcionario_idFuncionario` INT(11) NOT NULL,
  `curso_idCuso` INT(11) NOT NULL,
  PRIMARY KEY (`funcionario_idFuncionario`, `curso_idCuso`),
  INDEX `fk_funcionario_has_curso_curso1_idx` (`curso_idCuso` ASC) ,
  INDEX `fk_funcionario_has_curso_funcionario1_idx` (`funcionario_idFuncionario` ASC) ,
  CONSTRAINT `fk_funcionario_has_curso_curso1`
    FOREIGN KEY (`curso_idCuso`)
    REFERENCES `hospitalcarro`.`curso` (`idCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcionario_has_curso_funcionario1`
    FOREIGN KEY (`funcionario_idFuncionario`)
    REFERENCES `hospitalcarro`.`funcionario` (`idFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hospitalcarro`.`servico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalcarro`.`servico` (
  `idServico` INT(11) NOT NULL AUTO_INCREMENT,
  `precoServico` DOUBLE NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `Carro_idCarro` INT(11) NOT NULL,
  PRIMARY KEY (`idServico`),
  INDEX `fk_Servico_Carro1_idx` (`Carro_idCarro` ASC) ,
  CONSTRAINT `fk_Servico_Carro1`
    FOREIGN KEY (`Carro_idCarro`)
    REFERENCES `hospitalcarro`.`carro` (`idCarro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hospitalcarro`.`funcionario_has_servico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalcarro`.`funcionario_has_servico` (
  `Funcionario_idFuncionario` INT(11) NOT NULL,
  `Servico_idServico` INT(11) NOT NULL,
  PRIMARY KEY (`Funcionario_idFuncionario`, `Servico_idServico`),
  INDEX `fk_Funcionario_has_Servico_Servico1_idx` (`Servico_idServico` ASC) ,
  INDEX `fk_Funcionario_has_Servico_Funcionario1_idx` (`Funcionario_idFuncionario` ASC) ,
  CONSTRAINT `fk_Funcionario_has_Servico_Funcionario1`
    FOREIGN KEY (`Funcionario_idFuncionario`)
    REFERENCES `hospitalcarro`.`funcionario` (`idFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Funcionario_has_Servico_Servico1`
    FOREIGN KEY (`Servico_idServico`)
    REFERENCES `hospitalcarro`.`servico` (`idServico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hospitalcarro`.`pecas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalcarro`.`pecas` (
  `idpecas` INT(11) NOT NULL AUTO_INCREMENT,
  `nomePeca` VARCHAR(45) NOT NULL,
  `precoPeca` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idpecas`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hospitalcarro`.`pecas_has_servico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalcarro`.`pecas_has_servico` (
  `pecas_idpecas` INT(11) NOT NULL,
  `Servico_idServico` INT(11) NOT NULL,
  PRIMARY KEY (`pecas_idpecas`, `Servico_idServico`),
  INDEX `fk_pecas_has_Servico_Servico1_idx` (`Servico_idServico` ASC) ,
  INDEX `fk_pecas_has_Servico_pecas1_idx` (`pecas_idpecas` ASC) ,
  CONSTRAINT `fk_pecas_has_Servico_Servico1`
    FOREIGN KEY (`Servico_idServico`)
    REFERENCES `hospitalcarro`.`servico` (`idServico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pecas_has_Servico_pecas1`
    FOREIGN KEY (`pecas_idpecas`)
    REFERENCES `hospitalcarro`.`pecas` (`idpecas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
