-- Which collars have a known owner? Display only collars with known owners and those owners' names.
SELECT dog_owners.name, lost_dog_collars.dog_name
  FROM dog_owners
  JOIN lost_dog_collars
  ON dog_owners.dog_name = lost_dog_collars.dog_name;

-- For which collars is there no known owner? Display only collars without known owners.
SELECT dog_owners.name, lost_dog_collars.dog_name
  FROM dog_owners
  RIGHT JOIN lost_dog_collars
  ON dog_owners.dog_name = lost_dog_collars.dog_name
  WHERE dog_owners.name IS NULL;

-- What collars are in our possession? Display all collars in our possession. If an owner exists for a given collar, display that also.
SELECT dog_owners.name, lost_dog_collars.dog_name
  FROM dog_owners
  FULL JOIN lost_dog_collars
  ON dog_owners.dog_name = lost_dog_collars.dog_name
  WHERE lost_dog_collars.dog_name IS NOT NULL;

-- What owners do we know about? Display all owners known to us. If a collar matches that owner, display the collar also.
SELECT dog_owners.name, lost_dog_collars.dog_name
  FROM dog_owners
  FULL JOIN lost_dog_collars
  ON dog_owners.dog_name = lost_dog_collars.dog_name
  WHERE dog_owners.name IS NOT NULL;
