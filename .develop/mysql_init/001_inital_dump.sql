CREATE TABLE questions(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    question_text VARCHAR(255) NOT NULL UNIQUE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO questions (questions_text)
VALUES ("Какое дерево становится мокрым после дождя?");

CREATE TABLE answers (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    answers_text VARCHAR(255),
    question_id INT, 
    right_answer TINYINT(1),
    FOREIGN KEY(questions_id) REFERENCES questions(id)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO answers (answers_text, question_id, right_answer)
VALUES
("Береза", 1,0),
("Дуб", 1, 0),
("Любое", 1, 1),
("Ёлка", 1, 0);