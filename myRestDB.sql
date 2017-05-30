--SEQUENCE=====================================================
CREATE SEQUENCE hero_id_seq
  START WITH 1
  INCREMENT BY 1;
/
--TABLES ===============================================================

--REFRENCE TABLE--------------------
DROP TABLE HERO_TYPES;
/
DROP TABLE HEROES;
/
DROP TABLE ABILITIES;
/

CREATE TABLE HERO_TYPES
(
  ID NUMBER,
  TYPE VARCHAR2(250),
  
  CONSTRAINT hero_type_pk PRIMARY KEY (ID)
);
/
--ACTUAL TABLES --------------------------------------

CREATE TABLE HEROES
(
  ID NUMBER,
  name VARCHAR2(250),
  hero_type NUMBER,
  picture VARCHAR(250),
  
  CONSTRAINT hero_pk PRIMARY KEY (ID),
  CONSTRAINT type_fk FOREIGN KEY (hero_type) REFERENCES HERO_TYPES
);
/
CREATE TABLE ABILITIES
(
  ID NUMBER,
  ab1 VARCHAR2(100),
  ab2 VARCHAR2(100),
  ab3 VARCHAR2(100),
  ab4 VARCHAR2(100),
  ult VARCHAR2(100),
  
  CONSTRAINT ab_fk FOREIGN KEY(ID) REFERENCES HEROES
);
/
--TRIGGERS============================
CREATE OR REPLACE TRIGGER hero_id
  BEFORE 
    INSERT ON HEROES
  FOR EACH ROW
  BEGIN
    SELECT hero_id_seq.NEXTVAL
    INTO :new.id
    FROM dual;
  END;
/

--INSERTIONS =========================================
--HERO_TYPES
INSERT INTO HERO_TYPES VALUES (1, 'OFFENSE');
/
INSERT INTO HERO_TYPES VALUES (2, DEFENSE);
/
INSERT INTO HERO_TYPES VALUES (3, 'TANK');
/
INSERT INTO HERO_TYPES VALUES (4, 'SUPPORT');
--HEROS
INSERT INTO HEROES VALUES ( 0,'Ana', 4, 'https://blzgdapipro-a.akamaihd.net/media/screenshot/ana-screenshot-004.jpg');
/
INSERT INTO HEROES VALUES ( 0, 'Bastion',  1, ' https://blzgdapipro-a.akamaihd.net/hero/bastion/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 21, ' Configuration: Recon', ' Configuration: Sentry', ' Reconfigure', ' Self-Repair', ' Configuration: TANK');
/
INSERT INTO HEROES VALUES ( 0, 'D.Va',  3, ' https://blzgdapipro-a.akamaihd.net/hero/dva/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 22, ' Fusion Cannons/Light Gun', ' Boosters', ' Defense Matrix', ' N/A', ' SELF-DESTRUCT/CALL MECH');
/
INSERT INTO HEROES VALUES ( 0, 'Genji',  1, ' https://blzgdapipro-a.akamaihd.net/hero/genji/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 23, ' Shuriken', ' Deflect', ' Swift Strike', ' N/A', ' DRAGONBLADE');
/
INSERT INTO HEROES VALUES ( 0, 'Hanzo',  1, ' https://blzgdapipro-a.akamaihd.net/hero/hanzo/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 24, ' Storm Bow', ' Sonic Arrow', ' Scatter Arrow', ' N/A', ' DRAGONSTRIKE');
/
INSERT INTO HEROES VALUES ( 0, 'Junkrat',  1, ' https://blzgdapipro-a.akamaihd.net/hero/junkrat/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 25, ' Frag Launcher', ' Concussion Mine', ' Steel Trap', ' Total Mayhem', ' RIP-TIRE');
/
INSERT INTO HEROES VALUES ( 0, 'Lúcio',  4, ' https://blzgdapipro-a.akamaihd.net/hero/lucio/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 26, ' Sonic Amplifier', ' Crossfire', ' Amp It Up', ' N/A', ' Sound Barrier');
/
INSERT INTO HEROES VALUES ( 0, 'McCree',  1, ' https://blzgdapipro-a.akamaihd.net/hero/mccree/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 27, ' PeaceKeeper', ' Combar Roll', ' Flash Bang', ' N/A', ' DEADEYE');
/
INSERT INTO HEROES VALUES ( 0, 'Mei',  2, ' https://blzgdapipro-a.akamaihd.net/hero/mei/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 28, ' Endothermic Blaster', ' Cryo-Freeze', ' Ice Wall', ' N/A', ' BLIZZARD');
/
INSERT INTO HEROES VALUES ( 0, 'Mercy',  4, ' https://blzgdapipro-a.akamaihd.net/hero/mercy/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 29, ' Caduceus Staff', ' Caduceus Blaster', ' Guardian Angel', ' Angelic Descent', ' Ressurect');
/
INSERT INTO HEROES VALUES ( 0, 'Orisa',  3, ' https://blzgdapipro-a.akamaihd.net/hero/orisa/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 30, ' Fusion Driver', ' Fortify', ' Halt!', ' Protective Barrier', ' SUPERCHARGER');
/
INSERT INTO HEROES VALUES ( 0, 'Pharah',  1, ' https://blzgdapipro-a.akamaihd.net/hero/pharah/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 31, ' Rocket Launcher', ' Jump Jet', ' Concussive Blast', ' N/A', ' BARRAGE');
/
INSERT INTO HEROES VALUES ( 0, 'Reaper',  1, ' https://blzgdapipro-a.akamaihd.net/hero/reaper/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 32, ' Hellfire Shotgun', ' Wraith Form', ' Shadow Step', ' N/A', ' DEATH BLOSSOM');
/
INSERT INTO HEROES VALUES ( 0, 'Reinhardt',  3, ' https://blzgdapipro-a.akamaihd.net/hero/reinhardt/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 33, ' Rocket Hammer', ' Barrier Field', ' Charge', ' First Strike', ' EARTHSHATTER');
/
INSERT INTO HEROES VALUES ( 0, 'Roadhog',  3, ' https://blzgdapipro-a.akamaihd.net/hero/roadhog/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 34, ' Scrap Gun', ' Take A Breather', ' Chain Hook', ' N/A', ' WHOLE HOG');
/
INSERT INTO HEROES VALUES ( 0, 'Soldier: 76',  1, ' https://blzgdapipro-a.akamaihd.net/hero/soldier-76/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 35, ' Heavy Pulse Rifle', ' Helix Rockets', ' Sprint', ' Biotic Field', ' TACTICAL VISOR');
/
INSERT INTO HEROES VALUES ( 0, 'Sombra',  1, ' https://blzgdapipro-a.akamaihd.net/hero/sombra/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 36, ' Machine Pistol', ' Hack', ' Stealth', ' Translocator', ' EMP');
/
INSERT INTO HEROES VALUES ( 0, 'Symmetra',  4, ' https://blzgdapipro-a.akamaihd.net/hero/symmetra/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 37, ' Photon Projector', ' Sentry Turret', ' Photon Barrier', ' N/A', ' TELEPORTER/SHIELD GENERATOR');
/
INSERT INTO HEROES VALUES ( 0, 'Torbjorn',  2, ' https://blzgdapipro-a.akamaihd.net/hero/torbjorn/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 38, ' Rivet Gun', ' Forge Hummer', ' Build Turret', ' Armor Pack', ' MOLTEN CORE');
/
INSERT INTO HEROES VALUES ( 0, 'Tracer',  1, ' https://blzgdapipro-a.akamaihd.net/hero/tracer/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 39, ' Pulse Pistols', ' Blink', ' Recall', ' N/A', ' PULSE BOMB');
/
INSERT INTO HEROES VALUES ( 0, 'Widowmaker',  2, ' https://blzgdapipro-a.akamaihd.net/hero/widowmaker/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 40, ' Widows Kiss', ' Grappling Hook', ' Venom Mine', ' N/A', ' INFRA-SIGHT');
/
INSERT INTO HEROES VALUES ( 0, 'Winston',  3, ' https://blzgdapipro-a.akamaihd.net/hero/winston/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 41, ' Tesla Cannon', ' Jump Pack', ' Barrier Projector', ' N/A', ' PRIMAL RAGE');
/
INSERT INTO HEROES VALUES ( 0, 'Zarya',  3, ' https://blzgdapipro-a.akamaihd.net/hero/zarya/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 42, ' Particle Cannon', ' Particle Barrier', ' Projected Barrier', ' N/A', ' GRAVITON SURGE');
/
INSERT INTO HEROES VALUES ( 0, 'Zenyatta',  4, ' https://blzgdapipro-a.akamaihd.net/hero/zenyatta/hero-select-portrait.png');
INSERT INTO ABILITIES VALUES ( 43, ' Orb Of Destruction', ' Orb Of Harmony', ' Orb Of Discord', ' N/A', ' TRANSCENDENCE');
/
COMMIT;