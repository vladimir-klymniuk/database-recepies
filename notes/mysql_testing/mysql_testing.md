

Функция MySQL BENCHMARK()

```sql
    SET @input := 'hello world';
    SELECT BENCHMARK(10000000, MD5(@input));
    SELECT BENCHMARK(10000000, SHA1(@input));
```