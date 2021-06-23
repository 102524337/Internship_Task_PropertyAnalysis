/*task1.a*/
SELECT Property.Name, Property.Id, OwnerProperty.OwnerId AS Owner_ID
FROM Property
INNER JOIN OwnerProperty
ON Property.Id = OwnerProperty.PropertyId
WHERE OwnerProperty.OwnerId = '1426'


/*task1.b*/
SELECT Property.Name, Property.Id, PropertyHomeValue.Value,OwnerProperty.OwnerId AS Owner_ID
FROM Property
INNER JOIN OwnerProperty
ON Property.Id = OwnerProperty.PropertyId
INNER JOIN PropertyHomeValue
ON Property.Id = PropertyHomeValue.PropertyId
WHERE OwnerProperty.OwnerId = '1426'