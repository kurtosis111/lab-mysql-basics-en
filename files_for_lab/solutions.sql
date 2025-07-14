use bank;
select * from client;

-- Query1
select client_id from client
where district_id = 1
limit 5;

-- Query2
select max(client_id) as last_client
from client
where district_id = 72;

-- Query 3
select distinct amount from loan
order by amount asc
limit 3;

-- Query4
select distinct status from loan
order by status;

-- Query5
select loan_id from loan
order by payments desc
limit 1;

-- Query6
select
	account_id,
    amount
from loan
order by account_id asc
limit 5;

-- Query7
select account_id from loan
where duration=60
order by amount
limit 5;

-- Query8
select distinct k_symbol from `order`
where k_symbol is not null 
order by k_symbol;

-- Query9
select order_id from `order`
where account_id = 34;

-- Qeury10
select distinct account_id from `order`
where order_id between 29540 and 29560;

-- Query11
select amount from `order`
where account_to = 30067122;

-- Query12
select 
	trans_id,
    date,
    type,
    amount
from trans
where account_id = 793
order by date desc
limit 10;

-- Query13
select
	district_id,
    count(client_id)
from client
where district_id < 10
group by district_id
order by district_id asc;

-- Query14
select
	type,
    count(card_id) as card_freq
from card
group by type
order by card_freq desc;

-- Query15
select 
	account_id,
    sum(amount) as loan_amount
from loan
group by account_id
order by loan_amount desc
limit 10;

-- Query16
select
	date,
    count(loan_id) as number_of_laon
from loan
where date < 930907
group by date
order by date desc
limit 5;

-- Query17
select
	date,
    duration,
    count(loan_id) as num_loan
from loan
where year(date) = 1997 and month(date) = 12
group by date, duration
order by date asc, duration asc;

-- Query18
select 
	account_id,
    type,
    sum(amount)
from trans
where account_id = 396
group by type
order by type asc;