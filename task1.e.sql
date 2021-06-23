/*task1.e - 1st version*/
SELECT Property.Name, Tenant.Id AS Tenant_ID, Person.FirstName, Person.LastName, TenantProperty.PaymentAmount, TenantPaymentFrequencies.Name AS Payment_Period
FROM Person
INNER JOIN OwnerProperty /*Person AND OwnerProperty*/
ON Person.id = OwnerProperty.OwnerId
INNER JOIN Tenant /*Person AND Tenant*/
ON Person.id = Tenant.Id
INNER JOIN Property /*OwnerProperty AND Property*/
ON Property.id = OwnerProperty.PropertyId
INNER JOIN TenantProperty /*Tenant AND TenantProperty*/
ON Tenant.id = TenantProperty.TenantId 
LEFT JOIN TenantPaymentFrequencies /*TenantProperty AND TenantPaymentFrequencies*/
ON TenantProperty.PaymentFrequencyId = TenantPaymentFrequencies.Id
WHERE OwnerProperty.OwnerId = '1426'


/*task1.e - 2nd version*/
SELECT Property.Name, Person.FirstName, Person.LastName, TargetRentType.Name
FROM Property 
INNER JOIN OwnerProperty ---Join between Property AND OwnerProperty
ON Property.Id = OwnerProperty.PropertyId
INNER JOIN PropertyRentalPayment prp --- Join between Property AND PropertyRentalPayment
ON Property.id = prp.PropertyId
INNER JOIN TargetRentType --- Join between Property AND TargetRentType
ON Property.TargetRentTypeId = TargetRentType.Id
INNER JOIN Person
ON OwnerProperty.OwnerId = Person.Id
INNER JOIN Tenant
ON Person.Id = Tenant.Id
WHERE OwnerProperty.OwnerId = '1426'