create database Data_encryption;
use Data_encryption;

create table login(
id int auto_increment primary key,
username varchar(50),
enc_password varbinary (255) not null);

insert into login(username, enc_password) values(
'CSA',aes_encrypt("CSA@1992","Jaunpur"));

select * from login;

select id,username,aes_decrypt(enc_password,"Jaunpur") from login;

create table register(
id int auto_increment primary key,
username varchar(50),
enc_password varbinary(255) not null,
uq_id varbinary(100) not null);

insert into register(username,enc_password,uq_id) values(
'Akriti',aes_encrypt("akr@2009","Kanpur"),
aes_encrypt("345678902345","Adarno"));

select * from register;

select id,username,aes_decrypt(enc_password,"Kanpur") from register;

select id,aes_decrypt(uq_id,"Adarno") from register;

# Hashing

create table hashing(
id int auto_increment primary key,
username varchar(50),
enc_password char (64) not null);

insert into hashing(username,enc_password)
values ("Arjun",sha2("Arjuna@2025",256));

select * from hashing;

