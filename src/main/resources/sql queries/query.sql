-- Table: task_list


create database taskmanager;

DROP TABLE task_list;

CREATE TABLE task_list
(
 task_id serial NOT NULL,
  task_name character varying(100) NOT NULL,
  task_description character varying(100),
  task_priority character varying(20),
  task_status character varying(20),
  task_start_time timestamp without time zone default (now() at time zone 'utc'),
  task_end_time timestamp without time zone default (now() at time zone 'utc'),
  task_archived integer default 0,
  CONSTRAINT task_list_pkey PRIMARY KEY (task_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE task_list
  OWNER TO postgres;

insert into task_list values(1,'Gathering Requirement','Requirement Gathering','MEDIUM','ACTIVE',now(),now() + interval '1h',0);
insert into task_list values(2,'Application Designing','Application Designing','MEDIUM','ACTIVE',now(),now() + interval '2h',0);
insert into task_list values(3,'Implementation','Implementation','MEDIUM','ACTIVE',now(),now() + interval '3h',0);
insert into task_list values(4,'Unit Testing','Unit Testing','LOW','ACTIVE',now(),now() + interval '4h',0);
insert into task_list values(5,'Maintanence','Maintanence','LOW','ACTIVE',now(),now() + interval '5h',0);

select * from task_list;