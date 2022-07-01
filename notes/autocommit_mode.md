In default mode database work in autocommit mode.

```sql
    SHOW VARIABLES LIKE 'AUTOCOMMIT';
    SET AUTOCOMMIT = 1;
```
AUTOCOMMIT option affect only transactions table. 
MyISAM or Memory tables always work in AUTOCOMMIT ON mode.
In autocommit OFF mode you work in transaction until you launch COMMIT or ROLLBACK command.