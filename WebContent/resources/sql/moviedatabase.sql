select * from movies;


INSERT INTO movies VALUES('LALALAND','�θǽ�,���',10000, '��������,���̾� ����','���̹̾� ����', '��ü������', 'hollywood', '2016-12-07', 'lala.PNG',200);
INSERT INTO movies VALUES('DarkNight','�׼�,���',10000, 'ũ������ ����','ũ�������� ���', '12��������', 'hollywood', '2008-08-06', 'dark.PNG',174);
INSERT INTO movies VALUES('Social Network','���',10000, '���� ����������,�ص�� ���ʵ�','���̺� ��ó', '15��������', 'hollywood', '2010-11-18', 'social.PNG',182);
INSERT INTO movies VALUES('Fast&Furious9','�׼�',10000, '�� ����,�� �ó�','����ƾ ��', '12��������', 'hollywood', '2021-05-19', 'fast.PNG',200);
INSERT INTO movies VALUES('Cruella','���',10000, '���� ����,���� �轼','ũ���̱� ��������', '12��������', 'hollywood', '2021-05-26', 'cruella.PNG',162);
INSERT INTO movies VALUES('The Conjuring3','����,������',10000, '��Ʈ�� ����,���� �Ĺ̰�','����Ŭ ������', '15��������', 'hollywood', '2021-06-03', 'conjuring.PNG',142);


CREATE TABLE IF NOT EXISTS movies(
	m_name VARCHAR(20) NOT NULL,
	m_genre VARCHAR(20) NOT NULL,
	m_price  INTEGER NOT NULL,
	m_actor VARCHAR(20) NOT NULL,
   	m_director VARCHAR(20) NOT NULL,
	m_limit VARCHAR(20) NOT NULL,
	m_manufacturer VARCHAR(20) NOT NULL,
	m_date VARCHAR(20) NOT NULL,
	m_filename  VARCHAR(20) NOT NULL,
	m_sit INTEGER NOT NULL,
	PRIMARY KEY (m_name)
)
default CHARSET=utf8;

update movies set m_sit=26 where m_name="Cruella";
update movies set m_sit=22 where m_name="DarkNight";
update movies set m_sit=58 where m_name="Fast&Furious9";
update movies set m_sit=117 where m_name="Social Network";
update movies set m_sit=12 where m_name="The Conjuring3";
update movies set m_sit=7 where m_name="LALALAND";

update movies set m_filename="car.PNG" where m_name="Fast&Furious9";



CREATE TABLE IF NOT EXISTS soons(
	m_name VARCHAR(40) NOT NULL,
	m_genre VARCHAR(20) NOT NULL,
	m_actor VARCHAR(20) NOT NULL,
   	m_director VARCHAR(20) NOT NULL,
	m_limit VARCHAR(20) NOT NULL,
	m_manufacturer VARCHAR(20) NOT NULL,
	m_date VARCHAR(20) NOT NULL,
	m_filename  VARCHAR(20) NOT NULL,
	PRIMARY KEY (m_name)
)default CHARSET=utf8;

select * from soons;
INSERT INTO soons VALUES('Eternals','�׼�,SF','������������, ������','Ŭ���� �ڿ�', '��ü������', 'hollywood', '2021-11', 'eternals.PNG');
INSERT INTO soons VALUES('Black Widow','�׼�','��Į�� ���ѽ�, �÷η��� ǻ','����Ʈ ��Ʈ����', '12��������', 'hollywood', '2021-07-07', 'black.PNG');
INSERT INTO soons VALUES('Venom-Let there be carnage','�׼�,������','�� �ϵ�,��� �췲��','���� ��Ű��', '����', 'hollywood', '2021-11', 'venom.PNG');
INSERT INTO soons VALUES('007-No Time To Die','�׼�,���','�ٴϿ� ũ���̱�,�Ƴ� �� �Ƹ�����','ĳ�� ������', '12��������', 'hollywood', '2021-11', '007.PNG');
INSERT INTO soons VALUES('Suicide Squad','�׼�,SF','����κ�,�̵帮�� ����,�� �ó�','���ӽ� ��', '12��������', 'hollywood', '2021-8', 'suicide.PNG');
INSERT INTO soons VALUES('Spiderman-No way Home','�׼�,SF','�� Ȧ����,�ص�� ���ʵ�, ��� �ư��̾�','�� ����', '12��������', 'hollywood', '2021-12', 'spider.PNG');

