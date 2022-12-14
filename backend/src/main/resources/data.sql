INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown','alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
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

INSERT INTO tb_offer(edition, start_moment, end_moment, course_id) VALUES('1.0', TIMESTAMP WITH TIME ZONE '2020-11-13T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-13T03:00:00Z', 1);
INSERT INTO tb_offer(edition, start_moment, end_moment, course_id) VALUES('2.0', TIMESTAMP WITH TIME ZONE '2020-12-13T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-13T03:00:00Z', 1);

INSERT INTO tb_resource(title, description, position, img_uri, type, offer_id, external_link) VALUES('Trilha HTML', 'Trilha principal do curso', 1, 'https://ayltoninacio.com.br/img/p/90w750.jpg', 1,1,'');
INSERT INTO tb_resource(title, description, position, img_uri, type, offer_id, external_link) VALUES('Forum', 'Tire suas duvidas', 2, 'https://ayltoninacio.com.br/img/p/90w750.jpg', 2,1,'');
INSERT INTO tb_resource(title, description, position, img_uri, type, offer_id, external_link) VALUES('Lives', 'Lives exclusivas para a turma', 3, 'https://ayltoninacio.com.br/img/p/90w750.jpg', 0,1,'');

INSERT INTO tb_section(title, description, position, img_uri, resource_id, prerequisite_id) VALUES('Cap??tulo 1','Neste cap??tulo vamos come??ar', 1, 'https://ayltoninacio.com.br/img/p/90w750.jpg', 1, NULL);
INSERT INTO tb_section(title, description, position, img_uri, resource_id, prerequisite_id) VALUES('Cap??tulo 2','Neste cap??tulo continuar', 2, 'https://ayltoninacio.com.br/img/p/90w750.jpg', 1, 1);
INSERT INTO tb_section(title, description, position, img_uri, resource_id, prerequisite_id) VALUES('Cap??tulo 3','Neste cap??tulo vamos finalizar', 3, 'https://ayltoninacio.com.br/img/p/90w750.jpg', 1, 2);

INSERT INTO tb_enrollment(user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES(1,1,TIMESTAMP WITH TIME ZONE '2020-11-13T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment(user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES(2,1,TIMESTAMP WITH TIME ZONE '2020-11-13T13:00:00Z', null, true, false);

INSERT INTO tb_lesson(title, position, section_id) VALUES('Aula 1 do cap??tulo 1', 1, 1);
INSERT INTO tb_lesson(title, position, section_id) VALUES('Aula 2 do cap??tulo 1', 2, 1);
INSERT INTO tb_lesson(title, position, section_id) VALUES('Aula 3 do cap??tulo 1', 3, 1);
INSERT INTO tb_lesson(title, position, section_id) VALUES('Tarefa do capitulo 1', 4, 1);

INSERT INTO tb_content(id, text_content, video_uri) VALUES(1, 'Material de apoio: abc','https://youtu.be/bIPd_451uEg');
INSERT INTO tb_content(id, text_content, video_uri) VALUES(2, 'Titulo da aula 2','https://youtu.be/bIPd_451uEg');
INSERT INTO tb_content(id, text_content, video_uri) VALUES(3, 'Titulo da aula 3','https://youtu.be/bIPd_451uEg');

INSERT INTO tb_task(id, description, question_count, approval_count, weight, due_date) VALUES(4, 'Fazer um trabalho legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T03:00:00Z');

INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES(1, 1, 1);
INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES(2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Notification class ok',TIMESTAMP WITH TIME ZONE '2020-11-13T03:04:00Z',TRUE, '/notifications/1', 2);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', TRUE, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', TRUE, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', TRUE, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_deliver(uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES('https://github.com/KEENNEEDYY/bds-dslearn', TIMESTAMP WITH TIME ZONE '2022-08-02T10:37:00Z', 0, NULL, NULL, 4, 1, 1);

INSERT INTO tb_topic( title, body, moment, author_id, offer_id, lesson_id) VALUES('T??tulo do t??pico 1', 'Corpo do t??pico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic( title, body, moment, author_id, offer_id, lesson_id) VALUES('T??tulo do t??pico 2', 'Corpo do t??pico 2', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic( title, body, moment, author_id, offer_id, lesson_id) VALUES('T??tulo do t??pico 3', 'Corpo do t??pico 3', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic( title, body, moment, author_id, offer_id, lesson_id) VALUES('T??tulo do t??pico 4', 'Corpo do t??pico 4', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic( title, body, moment, author_id, offer_id, lesson_id) VALUES('T??tulo do t??pico 5', 'Corpo do t??pico 5', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic( title, body, moment, author_id, offer_id, lesson_id) VALUES('T??tulo do t??pico 6', 'Corpo do t??pico 6', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes(topic_id, user_id) VALUES(1, 2);
INSERT INTO tb_topic_likes(topic_id, user_id) VALUES(2, 1);

INSERT INTO tb_reply(body, moment, topic_id, author_id) VALUES('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1,2);
INSERT INTO tb_reply(body, moment, topic_id, author_id) VALUES('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes(reply_id, user_id) VALUES(1, 1);
