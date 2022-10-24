from modulis_praktinis import Pirkejai, Prekes, Uzsakymas, engine
from sqlalchemy.orm import sessionmaker

session = sessionmaker(engine)()


def registruoti_nauja_pirkeja():
    vardas = input("rekailingas vardas: ")
    pavarde = input("tai pat ir pavarde: ")
    el_pastas = input("iveskite el.pasta: ")
    # pirm_el_pastas = input("iveskite el.pasta: ")
    # pak_el_pastas = input("pakartuokite el.pasta: ")
    # if pak_el_pastas == pirm_el_pastas:
    #     el_pastas = pak_el_pastas
    # else: 
    #     print ("  - - KLAIDA! netaisingas el_pastas!\n  - - Iveskite viska is naujo!")
    #     registruoti_nauja_pirkeja()
    tel_numeris = int(input("telefono numeri: "))
    pirkejas = Pirkejai(vardas=vardas, pavarde=pavarde, el_pastas=el_pastas, tel_numeris=tel_numeris)

    session.add(pirkejas)
    session.commit()
    print(f"   - - Naujas pirkejas ({vardas} {pavarde}) yra sukurtas ir issaugotas! - -")
    



def padaryti_uzsakyma():
    pass

def perziureti_savo_uzsakyma():
    pass

def atsaukti_savo_uzsakyma():
    pass

def atnaujinti_savo_uzsakyma():
    pass

def perziureti_sandelio_likuti():
    pass

def papildyti_sandeli():
    pass

def perziureti_visus_pirkejus():
    pass

def perziureti_visus_uzsakymus():
    pass

while True:
    print("-- Menu --")
    ivestis = input("ivest:")
    if ivestis == "1":
        registruoti_nauja_pirkeja() 
        # vardas = input("rekailingas vardas: ")
        # pavarde = input("tai pat ir pavarde: ")
        # el_pastas = input("iveskite el.pasta: ")
        # tel_numeris = int(input("telefono numeri: "))
        # pirkejas = Pirkejai(vardas=vardas, pavarde=pavarde, el_pastas=el_pastas, tel_numeris=tel_numeris)
        # session.add(pirkejas)
        # session.commit()
        # print(f"   - - Naujas pirkejas ({vardas} {pavarde}) yra sukurtas ir issaugotas! - -")
    elif ivestis == "2":
        pass
    elif ivestis == "0":
        print("Aciu, kad apsilankote musu ne Super parduotuve! Laukiame suriztant! Iki...;)")
        break
    else:
        print(" -- Netaisingas ivestis! --")
    
