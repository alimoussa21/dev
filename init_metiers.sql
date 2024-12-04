DROP TABLE IF EXISTS metiers;

CREATE TABLE metiers (
    code_metier VARCHAR(255),  
    nom_usuel VARCHAR(255),  
    adresse TEXT,  
    code_postal VARCHAR(255),  
    code_insee VARCHAR(255),  
    code_dpt VARCHAR(255),  
    code_reg VARCHAR(255),  
    nom_commune VARCHAR(255),  
    x_wgs84 DOUBLE PRECISION,  
    y_wgs84 DOUBLE PRECISION,  
    id SERIAL PRIMARY KEY  
);

INSERT INTO metiers (code_metier, nom_usuel, adresse, code_postal, code_insee, code_dpt, code_reg, nom_commune, x_wgs84, y_wgs84)
VALUES
('MET001', 'Électricien', '10 Rue des Lilas', '75001', '75056', '75', '11', 'Paris', 2.3522, 48.8566),
('MET002', 'Plombier', '5 Avenue des Fleurs', '69001', '69389', '69', '84', 'Lyon', 4.8357, 45.7640),
('MET003', 'Maçon', '22 Boulevard des Champs', '31000', '31555', '31', '76', 'Toulouse', 1.4442, 43.6045);

