# AcademiaDB

**AcademiaDB** é um banco de dados desenvolvido para gerenciar dados de uma academia, incluindo informações sobre usuários, atividades realizadas e exercícios físicos. O projeto foi desenvolvido em MySQL e visa facilitar o registro, o acompanhamento e a análise das atividades físicas dos usuários.

## Estrutura do Banco de Dados

O banco de dados **AcademiaDB** possui as seguintes tabelas:

1. **usuarios**: Armazena informações sobre os usuários da academia.
   - `id_usuario`: Identificador único do usuário (chave primária).
   - `nome`: Nome completo do usuário.
   - `cpf`: CPF do usuário (único).
   - `telefone`: Número de telefone do usuário.
   - `endereco`: Endereço completo do usuário.
   - `data_de_nascimento`: Data de nascimento do usuário.

2. **atividade**: Registra as atividades realizadas pelos usuários.
   - `id_atividade`: Identificador único da atividade (chave primária).
   - `data`: Data da atividade realizada.
   - `duracao_min`: Duração da atividade em minutos.
   - `id_usuario`: ID do usuário que realizou a atividade (chave estrangeira).
   - `calorias_queimadas`: Calorias queimadas durante a atividade.
   - `id_exercicio`: ID do exercício realizado (chave estrangeira).

3. **exercicios_**: Armazena informações sobre os exercícios realizados na academia.
   - `id_exercicio`: Identificador único do exercício (chave primária).
   - `nome_exercicio`: Nome do exercício.
   - `grupo_muscular`: Grupo muscular trabalhado pelo exercício.
   - `media_calorias_por_min`: Média de calorias queimadas por minuto durante o exercício.

4. **Relacionamento_2**: Relaciona as tabelas de atividades e exercícios.
   - `fk_atividade_id_atividade`: ID da atividade (chave estrangeira).
   - `fk_exercicios__id_exercicio`: ID do exercício (chave estrangeira).

## Operações Realizadas

O banco de dados realiza as seguintes operações:

- **Criação de Tabelas**: Estrutura básica para armazenar dados sobre usuários, atividades e exercícios.
- **Inserção de Dados**: Inserção de dados exemplo para testar o funcionamento do banco.
- **Consultas**: Consultas SQL que recuperam informações, como atividades realizadas pelos usuários e os exercícios associados.

## Exemplos de Consultas

Aqui estão alguns exemplos de consultas realizadas no banco de dados:

- Consulta para buscar os usuários e os exercícios realizados por cada um:
```sql
SELECT usuarios.nome, exercicios_.grupo_muscular
FROM usuarios
JOIN atividade ON usuarios.id_usuario = atividade.id_usuario
JOIN exercicios_ ON atividade.id_exercicio = exercicios_.id_exercicio;
