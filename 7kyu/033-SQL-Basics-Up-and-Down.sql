select 
  case when sum(number1)%2=1 then min(number1) else max(number1) end as number1, 
  case when sum(number2)%2=1 then min(number2) else max(number2) end as number2
  from numbers