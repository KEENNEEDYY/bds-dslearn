INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown','ana@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown','bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green','maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');


INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role(user_id, role_id) VALUES(1,1);
INSERT INTO tb_user_role(user_id, role_id) VALUES(2,1);
INSERT INTO tb_user_role(user_id, role_id) VALUES(2,2);
INSERT INTO tb_user_role(user_id, role_id) VALUES(3,1);
INSERT INTO tb_user_role(user_id, role_id) VALUES(3,2);
INSERT INTO tb_user_role(user_id, role_id) VALUES(3,3);

INSERT INTO tb_course(name, img_uri, img_gray_uri) VALUES('BOOTCAMP HTML', 'https://ayltoninacio.com.br/img/p/90w750.jpg', 'https://img.ibxk.com.br/2014/3/materias/6032922646161611-t640.jpg');