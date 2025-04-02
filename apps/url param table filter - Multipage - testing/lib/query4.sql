select * from alice_users
WHERE ({{ !select1.value }} OR "name" = '{{ select1.value }}')