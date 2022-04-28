# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

1.times do 
   vicente = User.new({
        username: "Vicente",
        name_country: "Angola",
        localization_description: "Luanda/Kilamba", 
        email: "vicente@gmail.com",
        password: "vicente",
        password_confirmation: "vicente",
        type_subscription: "Company"
        })
  vicente.save

   galinha = User.new({
    username: "Galinha",
    name_country: "Angola",
    localization_description: "Luanda/Kilamba", 
    email: "galinha@gmail.com",
    password: "galinha",
    password_confirmation: "galinha",
    type_subscription: "Candidate"
    })
    galinha.save

end

Category.create(name: "Programming")
Category.create(name: "Construction")
Category.create(name: "Movie")
Category.create(name: "Others")

6.times do |job_number|

    Job.create(
        title: "Ruby on rails Dev #{job_number}", 
        description: "Developer new feacture", 
        salary: 4500*job_number, 
        category_id: job_number,
        type_job: "Presencial",
        expiry_date: "2022/#{job_number}/14",
        user_id: 1

    )
    Job.create(
        title: "Phython Dev #{job_number}", 
        description: "Developer new application", 
        salary: 4500*job_number, 
        category_id: job_number,
        type_job: "Remote",
        expiry_date: "2022/#{job_number}/14",
        user_id: 2

    )
end

Albania
Algeria
American Samoa
Andorra
Angola
Anguilla
Antarctica
Antigua and Barbuda
Argentina
Armenia
Aruba
Australia
Austria
Azerbaijan
Bahamas
Bahrain
Bangladesh
Barbados
Belarus
Belgium
Belize
Benin
Bermuda
Bhutan
Bolivia
Bonaire, Sint Eustatius and Saba
Bosnia and Herzegovina
Botswana
Bouvet Island
Brazil
British Indian Ocean Territory
Brunei Darussalam
Bulgaria
Burkina Faso
Burundi
Cabo Verde
Cambodia
Cameroon
Canada
Cayman Islands
Central African Republic
Chad
Chile
China
Christmas Island
Cocos (Keeling) Islands
Colombia
Comoros
Congo
Congo, The Democratic Republic of the
Cook Islands
Costa Rica
Croatia
Cuba
Curaçao
Cyprus
Czechia
Côte d'Ivoire
Denmark
Djibouti
Dominica
Dominican Republic
Ecuador
Egypt
El Salvador
Equatorial Guinea
Eritrea
Estonia
Eswatini
Ethiopia
Falkland Islands (Malvinas)
Faroe Islands
Fiji
Finland
France
French Guiana
French Polynesia
French Southern Territories
Gabon
Gambia
Georgia
Germany
Ghana
Gibraltar
Greece
Greenland
Grenada
Guadeloupe
Guam
Guatemala
Guernsey
Guinea
Guinea-Bissau
Guyana
Haiti
Heard Island and McDonald Islands
Holy See (Vatican City State)
Honduras
Hong Kong
Hungary
Iceland
India
Indonesia
Iran, Islamic Republic of
Iraq
Ireland
Isle of Man
Israel
Italy
Jamaica
Japan
Jersey
Jordan
Kazakhstan
Kenya
Kiribati
Kuwait
Kyrgyzstan
Lao People's Democratic Republic
Latvia
Lebanon
Lesotho
Liberia
Libya
Liechtenstein
Lithuania
Luxembourg
Macao
Madagascar
Malawi
Malaysia
Maldives
Mali
Malta
Marshall Islands
Martinique
Mauritania
Mauritius
Mayotte
Mexico
Micronesia, Federated States of
Moldova
Monaco
Mongolia
Montenegro
Montserrat
Morocco
Mozambique
Myanmar
Namibia
Nauru
Nepal
Netherlands
New Caledonia
New Zealand
Nicaragua
Niger
Nigeria
Niue
Norfolk Island
North Korea
North Macedonia
Northern Mariana Islands
Norway
Oman
Pakistan
Palau
Palestine, State of
Panama
Papua New Guinea
Paraguay
Peru
Philippines">Philippines
Pitcairn">Pitcairn
Poland">Poland
Portugal">Portugal
Puerto Rico">Puerto Rico
Qatar">Qatar
Romania">Romania
Russian Federation">Russian Federation
Rwanda">Rwanda
Réunion">Réunion
Saint Barthélemy">Saint Barthélemy
Saint Helena, Ascension and Tristan da Cunha">Saint Helena, Ascension and Tristan da Cunha
Saint Kitts and Nevis">Saint Kitts and Nevis
Saint Lucia">Saint Lucia
Saint Martin (French part)">Saint Martin (French part)
Saint Pierre and Miquelon">Saint Pierre and Miquelon
Saint Vincent and the Grenadines">Saint Vincent and the Grenadines
Samoa">Samoa
San Marino">San Marino
Sao Tome and Principe">Sao Tome and Principe
Saudi Arabia">Saudi Arabia
Senegal">Senegal
Serbia">Serbia
Seychelles">Seychelles
Sierra Leone">Sierra Leone
Singapore">Singapore
Sint Maarten (Dutch part)">Sint Maarten (Dutch part)
Slovakia">Slovakia
Slovenia">Slovenia
Solomon Islands">Solomon Islands
Somalia">Somalia
South Africa">South Africa
South Georgia and the South Sandwich Islands">South Georgia and the South Sandwich Islands
South Korea">South Korea
South Sudan">South Sudan
Spain">Spain
Sri Lanka">Sri Lanka
Sudan">Sudan
Suriname">Suriname
Svalbard and Jan Mayen">Svalbard and Jan Mayen
Sweden">Sweden
Switzerland">Switzerland
Syrian Arab Republic">Syrian Arab Republic
Taiwan">Taiwan
Tajikistan">Tajikistan
Tanzania">Tanzania
Thailand">Thailand
Timor-Leste">Timor-Leste
Togo">Togo
Tokelau">Tokelau
Tonga">Tonga
Trinidad and Tobago">Trinidad and Tobago
Tunisia">Tunisia
Turkey">Turkey
Turkmenistan">Turkmenistan
Turks and Caicos Islands">Turks and Caicos Islands
Tuvalu">Tuvalu
Uganda">Uganda
Ukraine">Ukraine
United Arab Emirates">United Arab Emirates
United Kingdom">United Kingdom
United States">United States
United States Minor Outlying Islands">United States Minor Outlying Islands
Uruguay">Uruguay
Uzbekistan">Uzbekistan
Vanuatu">Vanuatu
Venezuela">Venezuela
Vietnam">Vietnam
Virgin Islands, British">Virgin Islands, British
Virgin Islands, U.S.">Virgin Islands, U.S.
Wallis and Futuna">Wallis and Futuna
Western Sahara">Western Sahara
Yemen">Yemen
Zambia">Zambia
Zimbabwe">Zimbabwe
Åland Islands">Åland Islands</select></div>