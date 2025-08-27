SELECT * FROM estudiantes;
SELECT id_estudiante, correo FROM estudiantes;
SELECT id_estudiante FROM estudiantes WHERE id_estudiante = 10;
SELECT fecha FROM tutorias.tutorias WHERE 2024-03-15;
SELECT nom_docente FROM docente ORDER BY id_docente DESC;
SELECT nom_docente FROM docente LIMIT 10;
select nom_docente from docente where nom_docente like 'A%';
SELECT count(*) from tutorias.tutorias;
SELECT * FROM tutorias.tutorias;

