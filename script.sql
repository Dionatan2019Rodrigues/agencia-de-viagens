- Cria o banco de dados
CREATE DATABASE AgenciaViagens;

-- Usa o banco de dados
USE AgenciaViagens;

-- Create Users table
CREATE TABLE Users (
  cpf VARCHAR(255) PRIMARY KEY,
  name VARCHAR(255),
  idade INT
);

-- Create Agendamento table
CREATE TABLE Agendamento (
  id VARCHAR(255) PRIMARY KEY,
  data DATE,
  destino VARCHAR(255),
  comprador VARCHAR(255),
  FOREIGN KEY (comprador) REFERENCES Users(cpf)
);

-- Create Viagem table
CREATE TABLE Viagem (
  id VARCHAR(255) PRIMARY KEY,
  veiculo VARCHAR(255),
  disponibilidade BOOLEAN,
  agendamentos VARCHAR(255), 
  FOREIGN KEY (veiculo) REFERENCES Onibus(id)
  FOREIGN KEY (agendamentos) REFERENCES Agendamento(id)
);

-- Create Onibus table
CREATE TABLE Onibus (
  id VARCHAR(255) PRIMARY KEY,
  disponibilidade BOOLEAN,
  viagensList VARCHAR(255)
);