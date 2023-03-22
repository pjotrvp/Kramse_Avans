USE [CountryKnowledge]
GO
/****** Object:  Table [dbo].[CountryISO3]    Script Date: 16-3-2023 10:03:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryISO3](
	[ISO3] [nvarchar](3) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ISO3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ABW', N'Aruba')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'AFG', N'Afghanistan')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'AGO', N'Angola')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'AIA', N'Anguilla')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ALA', N'Åland Islands')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ALB', N'Albania')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'AND', N'Andorra')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ANT', N'Netherlands Antilles')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ARE', N'United Arab Emirates')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ARG', N'Argentina')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ARM', N'Armenia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ASM', N'American Samoa')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ATA', N'Antarctica')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ATF', N'French Southern Territories')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ATG', N'Antigua and Barbuda')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'AUS', N'Australia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'AUT', N'Austria')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'AZE', N'Azerbaijan')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BDI', N'Burundi')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BEL', N'Belgium')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BEN', N'Benin')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BFA', N'Burkina Faso')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BGD', N'Bangladesh')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BGR', N'Bulgaria')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BHR', N'Bahrain')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BHS', N'Bahamas')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BIH', N'Bosnia and Herzegovina')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BLM', N'Saint Barthélemy')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BLR', N'Belarus')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BLZ', N'Belize')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BMU', N'Bermuda')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BOL', N'Bolivia, Plurinational State of')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BRA', N'Brazil')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BRB', N'Barbados')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BRN', N'Brunei Darussalam')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BTN', N'Bhutan')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BVT', N'Bouvet Island')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'BWA', N'Botswana')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'CAF', N'Central African Republic')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'CAN', N'Canada')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'CCK', N'Cocos (Keeling) Islands')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'CHE', N'Switzerland')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'CHL', N'Chile')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'CHN', N'China')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'CIV', N'Côte d''Ivoire')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'CMR', N'Cameroon')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'COD', N'Congo, the Democratic Republic of the')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'COG', N'Congo')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'COK', N'Cook Islands')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'COL', N'Colombia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'COM', N'Comoros')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'CPV', N'Cape Verde')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'CRI', N'Costa Rica')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'CUB', N'Cuba')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'CXR', N'Christmas Island')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'CYM', N'Cayman Islands')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'CYP', N'Cyprus')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'CZE', N'Czech Republic')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'DEU', N'Germany')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'DJI', N'Djibouti')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'DMA', N'Dominica')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'DNK', N'Denmark')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'DOM', N'Dominican Republic')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'DZA', N'Algeria')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ECU', N'Ecuador')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'EGY', N'Egypt')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ERI', N'Eritrea')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ESH', N'Western Sahara')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ESP', N'Spain')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'EST', N'Estonia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ETH', N'Ethiopia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'FIN', N'Finland')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'FJI', N'Fiji')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'FLK', N'Falkland Islands (Malvinas)')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'FRA', N'France')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'FRO', N'Faroe Islands')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'FSM', N'Micronesia, Federated States of')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GAB', N'Gabon')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GBR', N'United Kingdom')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GEO', N'Georgia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GGY', N'Guernsey')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GHA', N'Ghana')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GIB', N'Gibraltar')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GIN', N'Guinea')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GLP', N'Guadeloupe')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GMB', N'Gambia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GNB', N'Guinea-Bissau')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GNQ', N'Equatorial Guinea')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GRC', N'Greece')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GRD', N'Grenada')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GRL', N'Greenland')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GTM', N'Guatemala')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GUF', N'French Guiana')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GUM', N'Guam')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'GUY', N'Guyana')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'HKG', N'Hong Kong')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'HMD', N'Heard Island and McDonald Islands')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'HND', N'Honduras')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'HRV', N'Croatia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'HTI', N'Haiti')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'HUN', N'Hungary')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'IDN', N'Indonesia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'IMN', N'Isle of Man')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'IND', N'India')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'IOT', N'British Indian Ocean Territory')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'IRL', N'Ireland')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'IRN', N'Iran, Islamic Republic of')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'IRQ', N'Iraq')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ISL', N'Iceland')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ISR', N'Israel')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ITA', N'Italy')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'JAM', N'Jamaica')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'JEY', N'Jersey')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'JOR', N'Jordan')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'JPN', N'Japan')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'KAZ', N'Kazakhstan')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'KEN', N'Kenya')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'KGZ', N'Kyrgyzstan')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'KHM', N'Cambodia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'KIR', N'Kiribati')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'KNA', N'Saint Kitts and Nevis')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'KOR', N'Korea, Republic of')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'KWT', N'Kuwait')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'LAO', N'Lao People''s Democratic Republic')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'LBN', N'Lebanon')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'LBR', N'Liberia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'LBY', N'Libyan Arab Jamahiriya')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'LCA', N'Saint Lucia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'LIE', N'Liechtenstein')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'LKA', N'Sri Lanka')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'LSO', N'Lesotho')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'LTU', N'Lithuania')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'LUX', N'Luxembourg')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'LVA', N'Latvia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MAC', N'Macao')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MAF', N'Saint Martin (French part)')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MAR', N'Morocco')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MCO', N'Monaco')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MDA', N'Moldova, Republic of')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MDG', N'Madagascar')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MDV', N'Maldives')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MEX', N'Mexico')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MHL', N'Marshall Islands')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MKD', N'Macedonia, the former Yugoslav Republic of')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MLI', N'Mali')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MLT', N'Malta')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MMR', N'Myanmar')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MNE', N'Montenegro')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MNG', N'Mongolia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MNP', N'Northern Mariana Islands')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MOZ', N'Mozambique')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MRT', N'Mauritania')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MSR', N'Montserrat')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MTQ', N'Martinique')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MUS', N'Mauritius')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MWI', N'Malawi')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MYS', N'Malaysia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'MYT', N'Mayotte')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'NAM', N'Namibia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'NCL', N'New Caledonia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'NER', N'Niger')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'NFK', N'Norfolk Island')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'NGA', N'Nigeria')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'NIC', N'Nicaragua')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'NIU', N'Niue')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'NLD', N'Netherlands')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'NOR', N'Norway')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'NPL', N'Nepal')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'NRU', N'Nauru')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'NZL', N'New Zealand')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'OMN', N'Oman')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'PAK', N'Pakistan')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'PAN', N'Panama')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'PCN', N'Pitcairn')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'PER', N'Peru')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'PHL', N'Philippines')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'PLW', N'Palau')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'PNG', N'Papua New Guinea')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'POL', N'Poland')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'PRI', N'Puerto Rico')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'PRK', N'Korea, Democratic People''s Republic of')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'PRT', N'Portugal')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'PRY', N'Paraguay')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'PSE', N'Palestinian Territory, Occupied')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'PYF', N'French Polynesia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'QAT', N'Qatar')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'REU', N'Réunion')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ROU', N'Romania')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'RUS', N'Russian Federation')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'RWA', N'Rwanda')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SAU', N'Saudi Arabia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SDN', N'Sudan')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SEN', N'Senegal')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SGP', N'Singapore')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SGS', N'South Georgia and the South Sandwich Islands')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SHN', N'Saint Helena, Ascension and Tristan da Cunha')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SJM', N'Svalbard and Jan Mayen')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SLB', N'Solomon Islands')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SLE', N'Sierra Leone')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SLV', N'El Salvador')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SMR', N'San Marino')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SOM', N'Somalia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SPM', N'Saint Pierre and Miquelon')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SRB', N'Serbia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'STP', N'Sao Tome and Principe')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SUR', N'Suriname')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SVK', N'Slovakia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SVN', N'Slovenia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SWE', N'Sweden')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SWZ', N'Swaziland')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SYC', N'Seychelles')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'SYR', N'Syrian Arab Republic')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'TCA', N'Turks and Caicos Islands')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'TCD', N'Chad')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'TGO', N'Togo')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'THA', N'Thailand')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'TJK', N'Tajikistan')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'TKL', N'Tokelau')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'TKM', N'Turkmenistan')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'TLS', N'Timor-Leste')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'TON', N'Tonga')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'TTO', N'Trinidad and Tobago')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'TUN', N'Tunisia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'TUR', N'Turkey')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'TUV', N'Tuvalu')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'TWN', N'Taiwan, Province of China')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'TZA', N'Tanzania, United Republic of')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'UGA', N'Uganda')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'UKR', N'Ukraine')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'UMI', N'United States Minor Outlying Islands')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'URY', N'Uruguay')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'USA', N'United States')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'UZB', N'Uzbekistan')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'VAT', N'Holy See (Vatican City State)')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'VCT', N'Saint Vincent and the Grenadines')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'VEN', N'Venezuela, Bolivarian Republic of')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'VGB', N'Virgin Islands, British')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'VIR', N'Virgin Islands, U.S.')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'VNM', N'Viet Nam')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'VUT', N'Vanuatu')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'WLF', N'Wallis and Futuna')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'WSM', N'Samoa')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'YEM', N'Yemen')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ZAF', N'South Africa')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ZMB', N'Zambia')
GO
INSERT [dbo].[CountryISO3] ([ISO3], [Country]) VALUES (N'ZWE', N'Zimbabwe')
GO
