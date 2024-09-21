CREATE FUNCTION increment(age integer) RETURNS integer AS $$
BEGIN
  RETURN age + 1;
END;
$$ LANGUAGE plpgsql;