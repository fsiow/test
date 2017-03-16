SELECT
  Section.SectionName, 
  Business.BusDisplay AS Company,
  People.FirstName,
  People.MiddleInitial,
  People.LastName,
  People.Title,
  People.Phone,
  People.Email,
  Address.Addr1,
  Address.Addr2,
  Address.City,
  Address.`State`,
  Address.Zip,
  Address.Country
FROM
  OGFSv2003data.Section
LEFT JOIN
  OGFSv2003data.People ON Section.Section LIKE CONCAT('%',People.SectId,'%')
LEFT JOIN
  OGFSv2003data.Address USING(AddrID)
LEFT JOIN
  OGFSv2003data.Business USING(BusID)
WHERE
  Section.Section IN ('3A', '3B', '3C', '4A', '4D', '5B')
AND
  Business.Active = 1
ORDER BY Section.SectionName, Business.BusDisplay, People.LastName