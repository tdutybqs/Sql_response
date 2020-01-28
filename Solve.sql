SET SQL_SAFE_UPDATES = 0;
create database if not exists firm;
use Firm;
CREATE TABLE predpr (
    id_pr SMALLINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nazvp NVARCHAR(20),
    city NVARCHAR(15),
    header NVARCHAR(30),
    phone NVARCHAR(12)
);

CREATE TABLE agents (
    id_ag SMALLINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    fam NVARCHAR(30),
    name NVARCHAR(15),
    otch NVARCHAR(25),
    date DATE,
    payment INT,
    id_pr SMALLINT,
    FOREIGN KEY (id_pr)
        REFERENCES predpr (id_pr)
);

CREATE TABLE tovary (
    id_tov SMALLINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nametov NVARCHAR(35),
    cenaopt INT,
    cenarozn INT
);

CREATE TABLE zakaz (
    id_zak SMALLINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    zakazano SMALLINT NOT NULL,
    prodano SMALLINT NOT NULL,
    date_zak DATE,
    id_ag SMALLINT,
    id_tov SMALLINT,
    FOREIGN KEY (id_ag)
        REFERENCES agents (id_ag),
    FOREIGN KEY (id_tov)
        REFERENCES tovary (id_tov)
);

insert into predpr (nazvp,city,header,phone) values ("АО Интерсевис","Новосибирск","Иванов ИИ","57-34-54");
insert into predpr (nazvp,city,header,phone) values ("АО Компьютер","Одесса","Петров ПП","38-32-24");
insert into predpr (nazvp,city,header,phone) values ("ТОО Интеркомбанк","Одесса","Сидоров СС","38-45-31");
insert into predpr (nazvp,city,header,phone) values ("Банк Программ","Новгород","Олегов ОО","32-45-31");
insert into predpr (nazvp,city,header,phone) values ("ИЧП Элвис","Новгород","Сергеев СС","81-60-17");
insert into predpr (nazvp,city,header,phone) values ("Bel-IBM","Новгород","Орлов РЛ","32-45-31");
insert into predpr (nazvp,city,header,phone) values ("СП КомпСофт","Новочеркасск","Грибов ГГ","35-31-24");
insert into predpr (nazvp,city,header,phone) values ("Bel-IBM","Н.Новгород","Ильин ИИ","81-66-25");
insert into predpr (nazvp,city,header,phone) values ("СП АВМ-Сервис","Новосибириск","Алепов АА","53-12-45");
insert into predpr (nazvp,city,header,phone) values ("Стингер","Новосибириск","Полинов ПП","83-12-12");
insert into predpr (nazvp,city,header,phone) values ("Комп-Граф","Н.Новгород","Тамарова ТТ","38-32-45");
insert into predpr (nazvp,city,header,phone) values ("Айрат","Н.Новгород","Комаров КК","50-27-19");
insert into predpr (nazvp,city,header,phone) values ("Офис-Сервис","Новосибириск","Ульянов УУ","33-12-46");
insert into predpr (nazvp,city,header,phone) values ("АО РосКОМ","Новочеркасск","Галинова ГГ","16-01-77");
insert into predpr (nazvp,city,header,phone) values ("АО Фигон","Новочеркасск","Арбатова МВ","35-31-24");

insert into agents (id_ag,fam,name,otch,date,payment,id_pr) values (id_ag,"Алексеенков","Сергей","Иванович","1964-04-10",12390,3);
insert into agents (id_ag,fam,name,otch,date,payment,id_pr) values (id_ag,"Ткаченко","Марина","Михайловна","1967-10-25",13890,7);
insert into agents (id_ag,fam,name,otch,date,payment,id_pr) values (id_ag,"Морозов","Юрий","Анатольевич","1956-12-23",14500,6);
insert into agents (id_ag,fam,name,otch,date,payment,id_pr) values (id_ag,"Петров","Михаил","Николаевич","1956-12-15",15620,4);
insert into agents (id_ag,fam,name,otch,date,payment,id_pr) values (id_ag,"Ильин","Филипп","Петрович","1972-02-03",12360,11);
insert into agents (id_ag,fam,name,otch,date,payment,id_pr) values (id_ag,"Петров","Михаил","Николаевич","1948-03-14",14510,15);
insert into agents (id_ag,fam,name,otch,date,payment,id_pr) values (id_ag,"Зайцева","Людмила","Николаевна","1974-04-03",13470,8);
insert into agents (id_ag,fam,name,otch,date,payment,id_pr) values (id_ag,"Загревский","Андрей","Анатольевич","1962-05-17",22200,2);
insert into agents (id_ag,fam,name,otch,date,payment,id_pr) values (id_ag,"Смесов","Филипп","Петрович","1959-02-06",13650,5);
insert into agents (id_ag,fam,name,otch,date,payment,id_pr) values (id_ag,"Сухарев","Андрей","Анатольевич","1968-03-29",24160,2);
insert into agents (id_ag,fam,name,otch,date,payment,id_pr) values (id_ag,"Зайцева","Дарья","Михайловна","1974-07-15",15190,9);
insert into agents (id_ag,fam,name,otch,date,payment,id_pr) values (id_ag,"Фролов","Виктор","Михайлович","1957-11-27",22500,10);
insert into agents (id_ag,fam,name,otch,date,payment,id_pr) values (id_ag,"Свешников","Сергей","Иванович","1949-03-30",13400,12);
insert into agents (id_ag,fam,name,otch,date,payment,id_pr) values (id_ag,"Уханов","Михаил","Сергеевич","1970-10-12",14590,15);
insert into agents (id_ag,fam,name,otch,date,payment,id_pr) values (id_ag,"Морозов","Андрей","Михайлович","1953-12-28",23370,1);
insert into agents (id_ag,fam,name,otch,date,payment,id_pr) values (id_ag,"Райский","Михаил","Сергеевич","1964-06-22",13520,5);

insert into tovary (nametov,cenaopt,cenarozn) values ("CP 35 FX",1000,1200);
insert into tovary (nametov,cenaopt,cenarozn) values ("CP 40 MC",1400,1580);
insert into tovary (nametov,cenaopt,cenarozn) values ("CP 55 FX",1800,1950);
insert into tovary (nametov,cenaopt,cenarozn) values ("CP 55 LS",1390,1500);
insert into tovary (nametov,cenaopt,cenarozn) values ("Вист 133",2800,3000);
insert into tovary (nametov,cenaopt,cenarozn) values ("Andy 586",3900,4500);
insert into tovary (nametov,cenaopt,cenarozn) values ("Borland C++",5000,5200);
insert into tovary (nametov,cenaopt,cenarozn) values ("Delphi",2600,2800);
insert into tovary (nametov,cenaopt,cenarozn) values ("Microsoft Office",4000,4600);
insert into tovary (nametov,cenaopt,cenarozn) values ("Microsoft Office Pro",5000,5900);

insert into zakaz (id_ag,id_tov,zakazano,prodano,date_zak) values (3,2,23,21,"2018-01-02"); -- Morozov
insert into zakaz (id_ag,id_tov,zakazano,prodano,date_zak) values (5,4,12,12,"2018-01-03");
insert into zakaz (id_ag,id_tov,zakazano,prodano,date_zak) values (9,7,10,10,"2018-02-01");
insert into zakaz (id_ag,id_tov,zakazano,prodano,date_zak) values (5,6,8,7,"2018-02-05");
insert into zakaz (id_ag,id_tov,zakazano,prodano,date_zak) values (14,7,15,15,"2018-02-13");
insert into zakaz (id_ag,id_tov,zakazano,prodano,date_zak) values (8,8,15,15,"2018-01-01");
insert into zakaz (id_ag,id_tov,zakazano,prodano,date_zak) values (9,5,8,8,"2018-01-05");
insert into zakaz (id_ag,id_tov,zakazano,prodano,date_zak) values (14,10,11,9,"2018-01-05");
insert into zakaz (id_ag,id_tov,zakazano,prodano,date_zak) values (8,6,24,24,"2018-03-05");
insert into zakaz (id_ag,id_tov,zakazano,prodano,date_zak) values (6,4,10,10,"2018-01-05");
insert into zakaz (id_ag,id_tov,zakazano,prodano,date_zak) values (11,3,9,7,"2018-02-25"); -- Zaiceva
insert into zakaz (id_ag,id_tov,zakazano,prodano,date_zak) values (3,2,5,4,"2018-02-26"); -- Morozov
insert into zakaz (id_ag,id_tov,zakazano,prodano,date_zak) values (10,5,13,11,"2018-02-10"); -- Suharev
insert into zakaz (id_ag,id_tov,zakazano,prodano,date_zak) values (8,4,22,22,"2018-02-10");
insert into zakaz (id_ag,id_tov,zakazano,prodano,date_zak) values (5,8,5,5,"2018-01-10");

/* 1) Создать запрос Заказы агентов, отобразив в нем ФИО агента, название и количество заказанного им товара, и дату заказа*/
select concat(fam," ",left(name,1),".",left(otch,1)) as "ФИО", nametov "Название товара", zakazano "Заказано", date_zak "Дата заказа" 
from agents a, tovary t, zakaz z 
where a.id_ag=z.id_ag and z.id_tov = t.id_tov;

-- Второй способ
select concat(fam," ",left(name,1),".",left(otch,1)) as "ФИО", nametov "Название товара", zakazano "Заказано", date_zak "Дата заказа" 
from
zakaz left join agents on agents.id_ag = zakaz.id_ag 
left join tovary on tovary.id_tov = zakaz.id_tov order by fam;

/* 2) Создать запрос, позволяющий выяснить, кто из агентов, работающих на фирме, не сделал ни одного заказа*/
-- Alekseenko S.I - id 1
-- Tkachenko M.M - id 2 
-- Petrov M.N - id 4
-- Zaiceva L.N - id 7
-- Frolov V.M - id 12
-- Sveshnikov S.I - id 13
-- Morozov A.M - id 15
-- Raiskii M.S - id 16
SELECT concat(fam," ",left(name,1),".",left(otch,1)) as "ФИО"
FROM agents
LEFT OUTER JOIN  zakaz ON zakaz.id_ag = agents.id_ag
WHERE zakaz.id_ag is NULL order by agents.id_ag;

-- Второй способ
SELECT fam, name, otch
FROM agents a
WHERE NOT EXISTS( 
	SELECT id_ag 
    FROM zakaz z
	WHERE a.id_ag = z.id_ag);

/* 3) Создать запрос, содержащий информацию о минимальной, максимальной и средней цене на товары по каждому предприятию*/
select nazvp "Название предприятия", nametov "Товар", Min(cenaopt) "Минимальная цена", AVG(cenaopt) "Средняя цена", Max(cenaopt) "Максимальная цена"
from
predpr inner join agents on predpr.id_pr = agents.id_pr
inner join zakaz on zakaz.id_ag = agents.id_ag
inner join tovary on zakaz.id_tov = tovary.id_tov group by predpr.nazvp;

-- Второй способ
SELECT 
    nazvp,
    MIN(cenarozn) AS min,
    AVG(cenarozn) AS avg,
    MAX(cenarozn) AS max
FROM
    predpr p,
    agents a,
    tovary t,
    zakaz z
WHERE
    p.id_pr = a.id_pr AND a.id_ag = z.id_ag
        AND z.id_tov = t.id_tov
GROUP BY nazvp;

/* 4) Выбрать записи о продажах в Новосибирск или Одессу или в акционерные общества*/
select nazvp "Название предъприятия", city "Город", concat(fam," ",left(name,1),".",left(otch,1)) as "ФИО" , zakazano "Заказано", nametov "Название товара", date_zak "Дата заказа"
from
predpr left join agents on predpr.id_pr = agents.id_pr  
right join zakaz on zakaz.id_ag = agents.id_ag 
inner join tovary on zakaz.id_tov = tovary.id_tov
where (city = "Новосибирск" OR city = "Одесса" OR SUBSTRING(nazvp, 1, 2) = "АО") order by fam;

/* 5) Создать запрос, позволяющий вычислить прибыль каждого агента по каждому из его сделанных заказов*/

select concat(fam," ",left(name,1),".",left(otch,1)) as "ФИО", nametov "Название товара", zakazano "Заказано",prodano "Продано",
cenaopt "Оптовая цена", cenarozn "Розничная цена", date_zak "Дата заказа", prodano*tovary.cenarozn-zakaz.zakazano*tovary.cenaopt "Прибыль"
from
zakaz left join agents on agents.id_ag = zakaz.id_ag 
left join tovary on tovary.id_tov = zakaz.id_tov 
order by fam;

-- Второй способ
SELECT 
   concat(fam," ",left(name,1),".",left(otch,1)) as "ФИО",
   SUM(prodano * cenarozn - zakazano * cenaopt) AS pribl
FROM
    zakaz z,
    agents a,
    tovary t
WHERE
    a.id_ag = z.id_ag
        AND z.id_tov = t.id_tov
GROUP BY z.id_zak;

/* 6) Подсчитать остатки по каждому товару как разность между суммарным количеством заказов и суммарным количеством продаж*/
select nametov "Название товара",Count(zakaz.zakazano) as "Общее количество заказов",Count(zakaz.prodano) as "Общее количество продаж", Sum(zakaz.zakazano)-Sum(zakaz.prodano) "Остаток"
from tovary
inner join (agents inner join zakaz on agents.id_ag = zakaz.id_ag) on tovary.id_tov = zakaz.id_tov 
group by tovary.id_tov;

-- Второй способ
SELECT 
    nametov, SUM(zakazano) - SUM(prodano) AS ostatki
FROM
    zakaz z,
    predpr p,
    agents a,
    tovary t
WHERE
    p.id_pr = a.id_pr AND a.id_ag = z.id_ag
        AND z.id_tov = t.id_tov
GROUP BY t.id_tov;

/* 7) Создадим запрос, который показывает фамилию агента, у которого суммарная прибыль по всем его сделанным заказам максимальна */
/*select concat(fam," ",left(name,1),".",left(otch,1)) as "ФИО", Sum(zakazano) "Заказано",Sum(prodano) "Продано", Sum(prodano*tovary.cenarozn-zakaz.zakazano*tovary.cenaopt) as "Прибыль"
from
zakaz inner join agents on agents.id_ag = zakaz.id_ag 
inner join tovary on tovary.id_tov = zakaz.id_tov 
group by agents.id_ag 
order by Sum(prodano*tovary.cenarozn-zakaz.zakazano*tovary.cenaopt) desc limit 1;*/

select fam "Фамилия", winner "Сумма"
from
(Select fam,sum(prodano*cenarozn-zakazano*cenaopt) as total 
from agents a, tovary t, zakaz z 
where a.id_ag = z.id_ag and t.id_tov = z.id_tov 
group by fam) d,
(select max(total) as winner 
from 
(select fam,sum(prodano*cenarozn-zakazano*cenaopt) as total 
from agents a, tovary t, zakaz z 
where a.id_ag = z.id_ag and t.id_tov=z.id_tov
group by fam) B) C 
where total = winner;

/* 8) Опираясь на предыдущий запрос, показать фамилию агента, который делал заказы наибольшее количество раз и само это количество*/
select fam "Фамилия", winner "Заказно товаров"
from
(Select fam,sum(zakazano) as total 
from agents a, tovary t, zakaz z 
where a.id_ag = z.id_ag and t.id_tov = z.id_tov 
group by fam) d,
(select max(total) as winner 
from 
(select fam,sum(zakazano) as total 
from agents a, tovary t, zakaz z 
where a.id_ag = z.id_ag and t.id_tov=z.id_tov
group by fam) B) C 
where total = winner;

/* 9) Отобразить в запросе наименование товара, который был заказан наибольшее количество раз*/
select nametov "Товар", winner "Заказано"
from
(Select nametov,sum(zakazano) as total 
from tovary t, zakaz z 
where t.id_tov = z.id_tov 
group by t.id_tov) D,
(select max(total) as winner 
from 
(select nametov,sum(zakazano) as total 
from tovary t, zakaz z 
where t.id_tov = z.id_tov 
group by nametov) B) C 
where total = winner;

/* 10) В каком месяце было сделано наибольшее количество заказов*/
select Distinct winner "Месяц"
from
(Select Sum(zakazano) ,Month(date_zak)  as total 
from tovary t, zakaz z 
where t.id_tov = z.id_tov 
group by t.id_tov) D,
(select Max(total) as winner 
from 
(select Sum(zakazano),Month(date_zak)  as total 
from tovary t, zakaz z 
where t.id_tov = z.id_tov 
group by t.id_tov) B) C 
where total = winner;

/* 11) Пусть для каждого агента начисляется премия по итогам его работы за период. 
Премия составляет 10% от прибыли по каждому заказу, если прибыль не более 1500 р., 
12%, если прибыль составляет от 1500 до 3000 р. и 15%, если прибыль более 3000 р. 
Если прибыль отрицательна, выдать сообщение “Заказ убыточен!!!” Создать запрос, вычисляющий премию каждого агента*/
select fam "Фамилия", prodano*cenarozn-zakazano*cenaopt "Получено", 
If(prodano*cenarozn-zakazano*cenaopt<0, "Заказ убыточен!!!", 
	If(prodano*cenarozn-zakazano*cenaopt<1500, 0.1*(prodano*cenarozn-zakazano*cenaopt), 
		If(prodano*cenarozn-zakazano*cenaopt<3000, 0.12*(prodano*cenarozn-zakazano*cenaopt), 0.15*(prodano*cenarozn-zakazano*cenaopt)))) "Премия"
from agents a,tovary t, zakaz z
where a.id_ag = z.id_ag and t.id_tov = z.id_tov;

/* 12) Создать запрос, позволяющий определить возраст каждого агента, месяц его рождения и в случае, 
если число полных лет оканчивается на 10(так называемая “круглая дата”), “напомнить” о необходимости поощрения премией. */
select concat(fam," ",left(name,1),".",left(otch,1)) "ФИО", Year(Now())-Year(agents.date) "Возраст агента",
If(convert(Year(Now())-Year(agents.date),signed) mod 10 = 0, "Поздравить с круглой датой и выдать премию!"," ") "Сообщение"
from agents;
describe tovary;
describe zakaz;
/* 13) Создать запрос, который увеличивает на 10% цену на те товары, которые пользуются спросом (которых продано более 20 единиц в заказе) */
-- Уникальные записи
select Distinct nametov, cenaopt 
from tovary t, zakaz z
where 
t.id_tov = z.id_tov AND z.zakazano>20;

UPDATE tovary t, zakaz z 
SET t.cenaopt = t.cenaopt + t.cenaopt * 0.1
WHERE t.id_tov = z.id_tov 
  AND z.zakazano > 20;

/* 14) Показать агентов, которые делали заказы в одном месяце с агентом Ильиным*/

SELECT DISTINCT
    a2.fam AS "Фамилия ",
    Month(z2.date_zak) "Месяц заказа агента",
    a1.fam "Ильин",
    Month(z1.date_zak) "Месяц заказа Ильина"
FROM
    zakaz z1,
    zakaz z2,
    agents a1,
    agents a2
WHERE
    a1.fam = 'Ильин'
        AND a1.id_ag = z1.id_ag
        AND a2.id_ag = z2.id_ag
        AND a1.id_ag <> a2.id_ag
        AND MONTH(z1.date_zak) = MONTH(z2.date_zak)
ORDER BY z1.date_zak;

/* 15) Получить список товаров с указанием количества- сколько раз каждый товар был заказан тем или иным агентом*/

SELECT 
    nametov 'Название товара',
    COUNT(*) 'Количество'
FROM
    tovary t,
    zakaz z
WHERE
    t.id_tov = z.id_tov
GROUP BY nametov 
	UNION 
SELECT 
    nametov, 0 'Количество'
FROM
    tovary t
WHERE
    NOT EXISTS( SELECT 
            *
        FROM
            zakaz z
        WHERE
            t.id_tov = z.id_tov)
ORDER BY 'Количество' DESC;

/* 16) Получить фамилии агентов с указанием количества заказов*/
SELECT 
    fam 'Фамилия',
    COUNT(*) 'Количество'
FROM
	agents a,
    zakaz z
WHERE
    a.id_ag = z.id_ag
GROUP BY fam 
	UNION 
SELECT 
    fam, 0 'Количество'
FROM
    agents a
WHERE
    NOT EXISTS( SELECT 
            *
        FROM
            zakaz z
        WHERE
            a.id_ag = z.id_ag)
ORDER BY 'Количество' DESC;

-- drop database firm;