CREATE DATABASE IF NOT EXISTS service;
USE service;
CREATE TABLE informatiiautovehicul (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca_model VARCHAR(100) NOT NULL,
    numar_inmatriculare VARCHAR(20) NOT NULL,
    nume_proprietar VARCHAR(100) NOT NULL,
    data_intrare DATE NOT NULL,
    problema_reclamata TEXT NOT NULL,
    piese_schimbate TEXT,
    -- Coloana pentru mecanic (vom stoca numele + rolul)
    mecanic VARCHAR(255) NOT NULL,
    observatii_recomandari TEXT
);
INSERT INTO informatiiautovehicul (marca_model, numar_inmatriculare, nume_proprietar, data_intrare, problema_reclamata, piese_schimbate, mecanic, observatii_recomandari)
VALUES
('Dacia Logan', 'B-101-AAA', 'Popescu Andrei', '2023-10-25', 'Zgomot la motor', 'Bujii, Filtru aer', 'Popescu Ion – Mecanic generalist', 'Recomandare schimb ulei in 2000km'),
('VW Golf 5', 'CJ-20-ABC', 'Ionescu Maria', '2023-10-26', 'Nu porneste', 'Baterie, Alternator', 'Ionescu Marian – Electrician auto', 'Verificare instalatie electrica peste 6 luni'),
('BMW Seria 3', 'B-99-BMW', 'Vasilescu George', '2023-10-27', 'Martor bord aprins', 'Senzor ABS', 'Georgescu Vasile – Diagnoza auto', 'Nicio recomandare suplimentara'),


('Volkswagen Golf 7', 'CJ-23-VWG', 'Ionescu Maria', '2023-10-26', 'Scartait la franare', 'Placute frana fata, Senzor uzura', 'Radu Mihai – Specialist frane', 'Discurile de frana sunt la 50% uzura'),

('BMW Seria 3', 'B-99-BMW', 'Stanciu George', '2023-10-27', 'Pierdere putere motor', 'Debimetru aer, Filtru combustibil', 'Stan George – Diagnostician', 'Necesita curatare EGR in viitorul apropiat'),

('Skoda Octavia', 'IF-05-SKD', 'Dumitrescu Elena', '2023-10-28', 'Bataie la roata dreapta fata', 'Bieleta antiruliu, Cap de bara', 'Popescu Ion – Mecanic generalist', 'S-a efectuat si geometria rotilor'),

('Ford Focus', 'B-412-FRD', 'Matei Cristian', '2023-10-29', 'Nu functioneaza AC-ul', 'Condensator AC, Completare freon', 'Vasilescu Dan – Electrician auto', 'Verificare etanseitate peste 3 luni'),

('Opel Astra J', 'DJ-10-OPS', 'Popa Vasile', '2023-10-30', 'Martor check engine aprins', 'Sonda Lambda 1', 'Stan George – Diagnostician', 'Eroarea a fost stearsa din computerul de bord'),

('Renault Clio', 'B-777-RNL', 'Enache Adrian', '2023-11-01', 'Zgomot la pornire', 'Electromotor reconditionat', 'Popescu Ion – Mecanic generalist', 'Bateria este veche, recomandare inlocuire'),

('Toyota Corolla', 'CT-88-TYT', 'Diaconu Ana', '2023-11-02', 'Revizie periodica', 'Ulei 5W30, Filtru ulei, Filtru polen', 'Radu Mihai – Mecanic intretinere', 'Urmatoarea revizie la 10.000 km sau 1 an'),

('Hyundai Tucson', 'IS-22-SUV', 'Gheorghe Vlad', '2023-11-03', 'Pedala ambreiaj moale', 'Pompa ambreiaj, Lichid frana', 'Popescu Ion – Mecanic generalist', 'Verificat sistem hidraulic, totul OK'),

('Mercedes C-Class', 'TM-01-MER', 'Lungu Silviu', '2023-11-04', 'Vibratii la viteze mari', 'Echilibrare roti, Anvelope noi', 'Radu Mihai – Vulcanizator', 'Janta dreapta spate prezinta o usoara deformare'),

('Audi A4', 'B-555-AUD', 'Nistor Carmen', '2023-11-05', 'Scurgere lichid sub masina', 'Furtun radiator, Antigel', 'Vasilescu Dan – Mecanic motor', 'Monitorizare nivel antigel in urmatoarea saptamana');