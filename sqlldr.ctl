OPTIONS (skip=1)
--skip the first row of header name
--replace
LOAD DATA 
INFILE 'C:\Users\ShiRi\Desktop\目黒さん\インデックス配賦_BS_20181027.csv' 
BADFILE 'C:\Users\ShiRi\Desktop\目黒さん\data.bad'
DISCARDFILE 'C:\Users\ShiRi\Desktop\目黒さん\data.dsc'
DISCARDMAX 1000

APPEND
INTO TABLE "F0912A"
FIELDS TERMINATED BY ','
TRAILING NULLCOLS
(
RIFCC           CHAR(12) "LPAD(NVL(:RIFCC,' '), 12, ' ')",
RIOBJF          CHAR(6)  "RPAD(NVL(:RIOBJF,' '), 6, ' ')",
RIOBJT          CHAR(6)  "RPAD(NVL(:RIOBJT,' '), 6, ' ')",
RIFSUB          CHAR(8)  "RPAD(NVL(:RIFSUB,' '), 8, ' ')",
RIFLT           CHAR(2)  "LPAD(NVL(:RIFLT,' '), 2, ' ')",
RIRFAC          INTEGER EXTERNAL "TO_NUMBER(:RIRFAC*100000000,'999999999')",
RIMCU           CHAR(12) "LPAD(NVL(:RIMCU,' '),  12, ' ')",
RIOBJ           CHAR(6)  "RPAD(NVL(:RIOBJ,' '),  6, ' ')",
RISUBT          CHAR(8)  "RPAD(NVL(:RISUBT,' '), 8, ' ')",
RISUB           CHAR(8)  "RPAD(NVL(:RISUB,' '),  8, ' ')",
RILT            CHAR(2)  "LPAD(NVL(:RILT,' '),   2, ' ')",
RIHST           CHAR(1)  "'A'",
RIALOC          CHAR(1)  "'B'",
RISEN           INTEGER EXTERNAL  "'0'",
RIFROM          CHAR(15) "LPAD(NVL(:RIFROM,' '), 15, ' ')",
RITHRU          CHAR(15) "LPAD(NVL(:RITHRU,' '), 15, ' ')",
RIMY            CHAR(1)  "LPAD(NVL('Y',' '), 1, ' ')",
RIUSER          CHAR(10) "RPAD(NVL('NAJP01',' '), 10, ' ')",
RIAID           CHAR(8)  "LPAD(NVL('01618086',' '), 8, ' ')",
RIANI           CHAR(29) "RPAD(LPAD(NVL(:RIFCC,' '), 12, ' ') || '.' || NVL(:RIOBJ,'') || '.' || RPAD(NVL(:RISUB,' '),  8, ' '), 29, ' ')",
RICO            CHAR(5)  "'00001'",
RISBL           CHAR(8) "LPAD(NVL(:RISBL,' '), 8, ' ')",
RIAM            CHAR(1) "LPAD(NVL('2',' '), 1, ' ')",
RIGLC           CHAR(4) "LPAD(NVL(:RIGLC,' '), 4, ' ')",
RIR1            CHAR(8) "LPAD(NVL(:RIR1,' '), 8, ' ')",
RIR2            CHAR(8) "LPAD(NVL(:RIR2,' '), 8, ' ')",
RIDCT           CHAR(2) "'J9'",
RIDOC           INTEGER EXTERNAL    "80000002",
RISFX           CHAR(3) "LPAD(NVL(:RISFX,' '), 3, ' ')",
RIASID          CHAR(25)"LPAD(NVL(:RIASID,' '), 25, ' ')",
RIDGJ           INTEGER EXTERNAL(6) "'118304'",
RIDSVJ          INTEGER EXTERNAL(6) "'118304'",
RIEXA           CHAR(30)"RPAD(NVL('事業部別配賦-0010-BS',' '), 30, ' ')",
RIEXR           CHAR(30)"LPAD(NVL(:RIEXR,' '), 30, ' ')",
RIAA            INTEGER EXTERNAL    "'0'",
RIU             INTEGER EXTERNAL    "'0'",
RIJELN          INTEGER EXTERNAL    "1",
RIRE            CHAR(1) "LPAD(NVL('R',' '), 1, ' ')",
RIDOI           INTEGER EXTERNAL    "'0'",
RIBC            CHAR(1) "LPAD(NVL(:RIBC,' '), 1, ' ')",
RIFY            INTEGER EXTERNAL    "'0'",
RIPN            INTEGER EXTERNAL    "'0'",
RICTRY          INTEGER EXTERNAL    "'0'",
RIRF            CHAR(2) "LPAD(NVL('MO',' '), 2, ' ')",
RIFPN           INTEGER EXTERNAL    "'7'",
RIFFY           INTEGER EXTERNAL    "'18'",
RIFCTY          INTEGER EXTERNAL    "'20'",
RIFSBL          CHAR(8) "LPAD(NVL(:RIFSBL,' '), 8, ' ')",
RISLK           CHAR(1) "LPAD(NVL(:RISLK,' '),  1, ' ')",
RIBCF           CHAR(1) "LPAD(NVL(:RIBCF,' '),  1, ' ')",
RIBCTO          CHAR(1) "LPAD(NVL(:RIBCTO,' '), 1, ' ')",
RIFCO           CHAR(5) "LPAD(NVL(:RIFCO,' '),  5, ' ')",
RISBLT          CHAR(1) "LPAD(NVL(:RISBLT,' '), 1, ' ')",
RICCS           CHAR(1) "LPAD(NVL(:RICCS,' '),  1, ' ')",
RIOBS           CHAR(1) "LPAD(NVL(:RIOBS,' '),  1, ' ')",
RISUBS          CHAR(1) "LPAD(NVL(:RISUBS,' '), 1, ' ')",
RISSBL          CHAR(1) "LPAD(NVL(:RISSBL,' '), 1, ' ')",
RISDTE          INTEGER EXTERNAL(6) "'0'",
RIPID           CHAR(10)"RPAD(NVL('EP09121',' '),  10, ' ')",
RIUPMJ          INTEGER EXTERNAL(6) "'118344'",
RIJOBN          CHAR(10)"RPAD(NVL('gmfdpsj0',' '), 10, ' ')",
RIUPMT          INTEGER EXTERNAL "'153932'"
)