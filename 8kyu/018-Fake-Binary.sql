SELECT x, TRANSLATE(x, '123456789', '000011111') AS res 
FROM fakebin

-- Alternative
SELECT x, (
  SELECT (
	  string_agg(
		  CASE WHEN ch::int >= 5 THEN '1'
		  ELSE '0'
		  END,
	    ''
    )
  ) as val 
  FROM regexp_split_to_table(x, '') AS ch
) as res
FROM fakebin;


-- ALTERNATIVE 2
create or replace function binString(s text)       
    RETURNS  text 
LANGUAGE 'plpgsql' AS $$  

      DECLARE RetString text :='';
      Declare tempString text:='';
      Declare temp_no INT;
      declare i int :=length(s);
      declare cout int :=1;
    BEGIN   
     WHILE (cout <= i) LOOP
         temp_no = cast(substring(s,cout,1) as INT);
         if (temp_no >= 5) then
          RetString := concat(RetString,'1');
        
         elsif (temp_no < 5) and (temp_no >=0) then
          RetString := concat(RetString,'0');
         end if;
         cout:= cout + 1;
      END LOOP;
    RETURN RetString; 
  END; $$; 
  
  Select x, binString(x) as res from fakebin;