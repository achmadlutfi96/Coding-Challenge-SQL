SELECT x, REPLACE(x,' ', '') AS res FROM nospace;

-- ALTERNATIVE
CREATE OR REPLACE FUNCTION remove_spaces(input_string VARCHAR)
RETURNS VARCHAR AS $$
DECLARE
  i INTEGER := 1;
  len INTEGER := LENGTH(input_string);
  output_string VARCHAR := '';
BEGIN
  WHILE i <= len LOOP
    IF SUBSTRING(input_string FROM i FOR 1) != ' ' THEN
      output_string := output_string || SUBSTRING(input_string FROM i FOR 1);
    END IF;
    i := i + 1;
  END LOOP;

  RETURN output_string;
END;
$$ LANGUAGE plpgsql;
SELECT x, remove_spaces(x) AS res FROM nospace