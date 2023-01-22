select 
Username,
MAX(CASE WHEN (Field = 'Phone') THEN Data ELSE NULL END) AS Phone,
MAX(CASE WHEN (Field = 'Email') THEN Data ELSE NULL END) AS Email,
MAX(CASE WHEN (Field = 'Position') THEN Data ELSE NULL END) AS Position
from UserData 
inner join User on User.id = UserData.UserID 
inner join UserFieldName on UserFieldName.id = UserData.FieldID
group by User.id;