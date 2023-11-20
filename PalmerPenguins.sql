Select *
from [dbo].[PalmerPenguins] AS PalmerPenguins

Select species, 
Count (species) As SpeciesCount,
Count(*)*100/Sum (count(*))Over() As SpeciesPercent
From  PalmerPenguins
Group by species
Order By SpeciesCount Desc

Select species,healthmetrics,count (species) As healthmetricsCount
from  PalmerPenguins
Group by species,healthmetrics
order by Species,healthmetricsCount DESC

Select island, 
Count (island) As IslandCount,
Count(*)*100/Sum (count(*))Over() As IslandPercent
From  PalmerPenguins
Group by island
Order By IslandCount Desc

Select island ,count(species) As SpeciesCount
from  PalmerPenguins
Group by island
order by SpeciesCount

Select sex, 
Count (sex) As SexCount,
Count(*)*100/Sum (count(*))Over() As SexPercent
From  PalmerPenguins
Group by sex
Order By SexCount Desc

Select sex,healthmetrics,count (sex) As HealthmetricsBySexCount
from PalmerPenguins
Group by healthmetrics,sex
order by sex,HealthmetricsBySexCount DESC

Select sex, 
Count (healthmetrics) As OverweightCountbySex,
Count(*)*100/Sum (count(*))Over() As healthmetricsPercent
From  PalmerPenguins
Where healthmetrics='overweight'
Group by sex
Order By OverweightCountbySex Desc

Select sex,AVG(bodymassg) As SexVSBodymass
From PalmerPenguins
Where bodymassg is not null
Group by sex
Order By SexVSBodymass Desc

Select healthmetrics, 
Count (healthmetrics) As healthmetricsCount,
Count(*)*100/Sum (count(*))Over() As healthmetricsPercent
From  PalmerPenguins
Group by healthmetrics
Order By healthmetricsCount Desc

Select diet ,count (species) As OverweightCount
from  PalmerPenguins
Where healthmetrics = 'Overweight'
Group by diet
order by OverweightCount

Select diet ,count (species) As healthyCount
from  PalmerPenguins
Where healthmetrics = 'healthy'
Group by diet
order by healthyCount

Select diet ,count (species) As UnderweightCount
from  PalmerPenguins
Where healthmetrics = 'underweight'
Group by diet
order by UnderweightCount


Select lifestage, 
Count (lifestage) As lifestageCount,
Count(*)*100/Sum (count(*))Over() As lifestagePercent
From  PalmerPenguins
Group by lifestage
Order By lifestageCount Desc

Select  diet,AVG(bodymassg) As DietVSBodymass
From PalmerPenguins
Where bodymassg is not null
Group by diet
Order By DietVSBodymass Desc

Select  species,healthmetrics,AVG(bodymassg) As AVGweight
From PalmerPenguins
Group by species,healthmetrics
Order By species,AVGweight Desc

Select  species,lifestage,AVG(flipperlengthmm) As AVGflipperlength
From PalmerPenguins
Group by species,lifestage
Order By species,AVGflipperlength ASC

Select  species,lifestage,AVG(billlengthmm) As AVGbilllength
From PalmerPenguins
Group by species,lifestage
Order By species,AVGbilllength ASC

Select  species,lifestage, AVG(billdepthmm) As AVGbilldepth
From PalmerPenguins
Group by species,lifestage
Order By species,AVGbilldepth ASC

Select  species,Sex, AVG(flipperlengthmm) As AVGAVGflipperlength
From PalmerPenguins
Group by species,sex
Order By species,AVGAVGflipperlength ASC

Select  species,sex,AVG(billlengthmm) As AVGbilllength
From PalmerPenguins
Group by species,sex
Order By species,AVGbilllength ASC

Select  species,sex, AVG(billdepthmm) As AVGbilldepth
From PalmerPenguins
Group by species,sex
Order By species,AVGbilldepth ASC