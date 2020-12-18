DELETE FROM countries;
DELETE FROM airports;
DELETE FROM runways;

-- H2 doesn't have a 'levenshtein' function, using UDF with Apache Commons-Text
CREATE ALIAS IF NOT EXISTS levenshtein FOR "com.lunatech.airportassessment.repositories.H2Levenshtein.apply";

-- Countries
INSERT INTO countries(id, code, name, continent, wikipedia_link, keywords) VALUES (1, 'US', 'United States', 'NA', 'http://en.wikipedia.org/wiki/United_States', 'America');
INSERT INTO countries(id, code, name, continent, wikipedia_link, keywords) VALUES (2, 'NL', 'Netherlands', 'EU', 'http://en.wikipedia.org/wiki/Netherlands', 'Holland');
INSERT INTO countries(id, code, name, continent, wikipedia_link, keywords) VALUES (3, 'AR', 'Argentina', 'SA', 'http://en.wikipedia.org/wiki/Argentina', 'Asado');
INSERT INTO countries(id, code, name, continent, wikipedia_link, keywords) VALUES (4, 'BE', 'Belgium', 'EU', 'http://en.wikipedia.org/wiki/Belgium', 'Chocolates');

-- Airports
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (1,'00A','heliport','Total Rf Heliport',40.07080078125,-74.93360137939453,11,'NA','US','US-PA','Bensalem','no','00A',null,'00A',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (2,'00AK','small_airport','Lowell Field',59.94919968,-151.695999146,450,'NA','US','US-AK','Anchor Point','no','00AK',null,'00AK',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (3,'00AL','small_airport','Epps Airpark',34.86479949951172,-86.77030181884766,820,'SA','AR','US-AL','Harvest','no','00AL',null,'00AL',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (4,'00AR','heliport','Newport Hospital & Clinic Heliport',35.608699798583984,-91.25489807128906,237,'NA','US','US-AR','Newport','no','00AR',null,'00AR',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (5,'00AZ','small_airport','Cordes Airport',34.305599212646484,-112.16500091552734,3810,'NA','US','US-AZ','Cordes','no','00AZ',null,'00AZ',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (6,'00CA','small_airport','Goldstone /Gts/ Airport',35.350498199499995,-116.888000488,3038,'NA','US','US-CA','Barstow','no','00CA',null,'00CA',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (7,'00CO','small_airport','Cass Field',40.62220001220703,-104.34400177001953,4830,'NA','US','US-CO','Briggsdale','no','00CO',null,'00CO',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (8,'00FA','small_airport','Grass Patch Airport',28.64550018310547,-82.21900177001953,53,'NA','US','US-FL','Bushnell','no','00FA',null,'00FA',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (9,'00FD','heliport','Ringhaver Heliport',28.846599578857422,-82.34539794921875,25,'NA','US','US-FL','Riverview','no','00FD',null,'00FD',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (10,'00FL','small_airport','River Oak Airport',27.230899810791016,-80.96920013427734,35,'NA','US','US-FL','Okeechobee','no','00FL',null,'00FL',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (11,'00GA','small_airport','Lt World Airport',33.76750183105469,-84.06829833984375,700,'NA','US','US-GA','Lithonia','no','00GA',null,'00GA',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (12,'00GE','heliport','Caffrey Heliport',33.88420104980469,-84.73390197753906,957,'NA','US','US-GA','Hiram','no','00GE',null,'00GE',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (13,'00HI','heliport','Kaupulehu Heliport',19.832500457763672,-155.98199462890625,43,'NA','US','US-HI','Kailua/Kona','no','00HI',null,'00HI',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (14,'00ID','small_airport','Delta Shores Airport',48.145301818847656,-116.21399688720703,2064,'SA','AR','US-ID','Clark Fork','no','00ID',null,'00ID',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (15,'00II','heliport','Bailey Generation Station Heliport',41.644500732421875,-87.122802734375,600,'NA','US','US-IN','Chesterton','no','00II',null,'00II',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (16,'00IL','small_airport','Hammer Airport',41.97840118408203,-89.5604019165039,840,'NA','US','US-IL','Polo','no','00IL',null,'00IL',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (17,'00IN','heliport','St Mary Medical Center Heliport',41.51139831542969,-87.2605972290039,634,'NA','US','US-IN','Hobart','no','00IN',null,'00IN',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (18,'00IS','small_airport','Hayenga''s Cant Find Farms Airport',40.02560043334961,-89.1229019165039,820,'NA','US','US-IL','Kings','no','00IS',null,'00IS',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (19,'00KS','small_airport','Hayden Farm Airport',38.72779846191406,-94.93049621582031,1100,'SA','AR','US-KS','Gardner','no','00KS',null,'00KS',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (20,'00KY','small_airport','Robbins Roost Airport',37.409400939941406,-84.61969757080078,1265,'NA','US','US-KY','Stanford','no','00KY',null,'00KY',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (21,'00LA','heliport','Shell Chemical East Site Heliport',30.191944,-90.980833,15,'NA','US','US-LA','Gonzales','no','00LA',null,'00LA',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (22,'00LL','heliport','Ac & R Components Heliport',39.66529846191406,-89.70559692382812,600,'NA','US','US-IL','Chatham','no','00LL',null,'00LL',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (23,'00LS','small_airport','Lejeune Airport',30.13629913330078,-92.42939758300781,12,'NA','US','US-LA','Esterwood','no','00LS',null,'00LS',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (24,'00MD','small_airport','Slater Field',38.75709915161133,-75.75379943847656,45,'SA','AR','US-MD','Federalsburg','no','00MD',null,'00MD',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (25,'00MI','heliport','Dow Chemical Heliport',43.94940185546875,-86.41670227050781,588,'SA','AR','US-MI','Ludington','no','00MI',null,'00MI',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (26,'00MN','small_airport','Battle Lake Municipal Airport',46.29999923706055,-95.70030212402344,1365,'NA','US','US-MN','Battle Lake','no','00MN',null,'00MN',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (27,'00MO','small_airport','Cooper Flying Service Airport',37.20280075073242,-94.41239929199219,970,'NA','US','US-MO','Alba','no','00MO',null,'00MO',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (28,'00MT','small_airport','Sands Ranch Airport',48.537498474121094,-109.70500183105469,2600,'SA','AR','US-MT','Havre','no','00MT',null,'00MT',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (29,'00N','small_airport','Bucks Airport',39.473201751708984,-75.1852035522461,105,'NA','US','US-NJ','Bridgeton','no','00N',null,'00N',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (30,'00NC','small_airport','North Raleigh Airport',36.085201263427734,-78.37139892578125,348,'NA','US','US-NC','Louisburg','no','00NC',null,'00NC',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (31,'00NJ','heliport','Colgate-Piscataway Heliport',40.52090072631836,-74.47460174560547,78,'NA','US','US-NJ','New Brunswick','no','00NJ',null,'00NJ',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (32,'00NY','small_airport','Weiss Airfield',42.90010070800781,-77.49970245361328,1000,'NA','US','US-NY','West Bloomfield','no','00NY',null,'00NY',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (33,'00OH','small_airport','Exit 3 Airport',41.59090042114258,-84.14219665527344,785,'NA','US','US-OH','Wauseon','no','00OH',null,'00OH',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (34,'00OI','heliport','Miami Valley Hospital Heliport',39.74530029296875,-84.1874008178711,905,'NA','US','US-OH','Dayton','no','00OI',null,'00OI',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (35,'00OR','heliport','Steel Systems Heliport',44.932899475097656,-123.12999725341797,195,'NA','US','US-OR','Salem','no','00OR',null,'00OR',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (36,'00PA','heliport','R J D Heliport',39.94889831542969,-75.74690246582031,402,'EU','NL','US-PA','Coatesville','no','00PA',null,'00PA',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (37,'00PN','small_airport','Ferrell Field',41.2995,-80.211111,1301,'EU','NL','US-PA','Mercer','no','00PN',null,'00PN',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (38,'00PS','small_airport','Thomas Field',40.37779998779297,-77.36530303955078,815,'NA','US','US-PA','Loysville','no','00PS',null,'00PS',null,null,null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (39,'00S','small_airport','Mc Kenzie Bridge State Airport',44.183200836199994,-122.088996887,1620,'NA','US','US-OR','Mc Kenzie Bridge','no','00S',null,'00S',null,'http://en.wikipedia.org/wiki/McKenzie_Bridge_State_Airport',null);
INSERT INTO airports(id, ident, type, name, latitude_deg, longitude_deg, elevation_ft, continent, iso_country, iso_region, municipality, scheduled_service, gps_code, iata_code, local_code, home_link, wikipedia_link, keywords)
VALUES (40,'00SC','small_airport','Flying O Airport',34.0093994140625,-80.26719665527344,150,'NA','US','US-SC','Sumter','no','00SC',null,'00SC',null,null,null);

-- Runways
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (269408,1,'00A',80,80,'ASPH-G',1,0,'H1',null,null,null,null,null,null,null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (255155,2,'00AK',2500,70,'GRVL',0,0,'N',null,null,null,null,null,'S',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (254165,3,'00AL',2300,200,'TURF',0,0,'01',null,null,null,null,null,'19',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (270932,4,'00AR',40,40,'GRASS',0,0,'H1',null,null,null,null,null,'H1',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (257681,5,'00AZ',1700,60,'GRAVEL',0,0,'15',null,null,null,null,null,'33',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (245528,6,'00CA',6000,80,'ASPH',0,0,'04',35.3493,-116.893,null,50,null,'22',35.3603,-116.878,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (250597,7,'00CO',3900,20,'TURF-G',0,0,'16',null,null,null,null,null,'34',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (247972,8,'00FA',3200,100,'TURF',0,0,'08',null,null,null,null,null,'26',null,null,null,null,800);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (265037,9,'00FD',74,74,'TURF',0,0,'H1',null,null,null,null,null,null,null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (250414,10,'00FL',4090,100,'TURF',0,0,'12',null,null,null,null,null,'30',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (253429,11,'00GA',2600,80,'TURF',0,0,'09',null,null,null,null,null,'27',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (265038,12,'00GE',125,95,'ASPH',1,0,'H1',null,null,null,null,null,null,null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (265039,13,'00HI',1155,45,'ASPH-G',0,0,'H1',null,null,null,null,null,null,null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (246648,14,'00ID',3300,40,'TURF',0,0,'08',null,null,null,null,null,'26',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (246649,15,'00ID',2700,40,'TURF',0,0,'11',null,null,null,null,null,'29',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (252182,16,'00IL',2500,75,'TURF-F',0,0,'18',null,null,null,null,290,'36',null,null,null,null,350);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (265040,17,'00IN',40,40,'MATS',1,0,'H1',null,null,null,null,null,null,null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (254597,18,'00IS',1600,70,'TURF',0,0,'E',null,null,null,null,null,'W',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (256603,19,'00KS',2600,85,'TURF',0,0,'17',null,null,null,null,null,'35',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (251984,20,'00KY',2100,100,'TURF',0,0,'01',null,null,null,null,null,'19',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (264322,21,'00LA',40,40,'TURF',0,0,'H1',null,null,null,null,null,null,null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (265041,22,'00LL',25,25,'CONC',0,0,'H1',null,null,null,null,null,null,null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (255958,23,'00LS',2600,100,'TURF',0,0,'18',null,null,null,null,null,'36',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (255848,24,'00MD',1700,75,'TURF',0,0,'1`4',null,null,null,null,null,'32',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (265042,25,'00MI',100,100,'TURF',0,0,'H1',null,null,null,null,null,null,null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (255865,26,'00MN',2949,200,'TURF-G',1,0,'06',null,null,null,null,null,'24',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (254820,27,'00MO',2400,25,'TURF',0,0,'08',null,null,null,null,null,'26',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (257131,28,'00MT',2000,75,'TURF',0,0,'E',null,null,null,null,null,'W',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (249208,29,'00N',1900,150,'TURF-G',1,0,'18',null,null,null,null,null,'36',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (249382,30,'00NC',2650,36,'ASPH-G',0,0,'05',null,null,null,null,null,'23',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (269409,31,'00NJ',50,50,'ASPH',0,0,'H1',null,null,null,null,null,null,null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (248635,32,'00NY',2350,80,'TURF',1,0,'03',null,null,null,null,null,'21',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (255568,33,'00OH',2695,90,'TURF-G',0,0,'08',null,null,null,null,null,'26',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (269410,34,'00OI',42,42,'CONC',0,0,'H1',null,null,null,null,null,null,null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (269411,35,'00PA',80,80,'TURF-G',0,0,'H1',null,null,null,null,null,null,null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (264557,36,'00PN',500,75,'TURF',0,0,'12',null,null,null,null,null,'30',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (251695,37,'00PS',3100,100,'TURF-G',0,0,'08',null,null,null,null,1335,'26',null,null,null,null,1072);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (250124,38,'00S',2600,90,'TURF-P',0,0,'06',null,null,null,null,null,'24',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (250457,39,'00SC',2900,100,'TURF',0,0,'08',null,null,null,null,null,'26',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (269412,40,'00TA',85,85,'CONC-G',0,0,'H1',null,null,null,null,null,null,null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (269413,1,'00TE',48,48,'TURF',0,0,'H1',null,null,null,null,null,null,null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (251439,2,'00TN',1800,150,'TURF',0,0,'09',null,null,null,null,null,'27',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (248688,3,'00TS',1200,45,'TURF',0,0,'01',null,null,null,null,null,'19',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (269414,4,'00TX',50,50,'CONC',0,0,'H1',null,null,null,null,null,null,null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (251342,5,'00VA',1300,100,'TURF',0,0,'01',null,null,null,null,null,'19',null,null,null,270,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (247311,6,'00VI',1500,50,'TURF',0,0,'09',null,null,null,null,null,'27',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (254777,7,'00W',3400,50,'GRAVEL-F',0,0,'14',null,null,null,null,null,'32',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (247637,8,'00WA',1105,70,'TURF-G',0,0,'08',null,null,null,null,null,'26',null,null,null,null,null);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (240309,9,'00WI',1000,60,'TURF',0,0,'09',44.3042,-89.052,null,87.2,null,'27',44.3044,-89.0482,null,null,200);
INSERT INTO runways (id,airport_ref,airport_ident,length_ft,width_ft,surface,lighted,closed,le_ident,le_latitude_deg,le_longitude_deg,le_elevation_ft,le_heading_degT,le_displaced_threshold_ft,he_ident,he_latitude_deg,he_longitude_deg,he_elevation_ft,he_heading_degT,he_displaced_threshold_ft)
VALUES (250630,10,'00WN',1440,50,'TURF-G',0,0,'05',null,null,null,null,null,'23',null,null,null,null,null);
