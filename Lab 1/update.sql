SELECT * from customer;

UPDATE customer
	SET email = 'ppicasso@gmail.com'
    WHERE customer_name = 'Pablo Picasso';
    
UPDATE customer
	SET email = 'lincoln@us.gov'
    WHERE customer_name = 'Abraham Lincoln';
    
UPDATE customer
	SET email = 'hello@napoleon.me'
    WHERE customer_name = 'Napoléon Bonaparte';
    
SELECT *
       FROM customer;