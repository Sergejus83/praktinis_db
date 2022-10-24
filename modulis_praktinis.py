from sqlalchemy import Column, Integer, String, ForeignKey, create_engine, Table, DateTime, Date
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship, sessionmaker

engine = create_engine('sqlite:///data/praktinis_db.db')
Base = declarative_base()

class Pirkejai(Base):
    __tablename__ = "pirkejas"
    id = Column(Integer, primary_key = True)
    vardas = Column("vardas", String)
    pavarde = Column("pavarede", String)
    el_pastas = Column("el_pastas", String, unique = True)
    tel_numeris = Column("tel_numeris", Integer)
    uzsakymai = relationship("Uzsakymas", back_populates = "pirkejas")

    def __repr__(self):
        return f"{self.id}{self.vardas}{self.pavarde}{self.el_pastas}{self.tel_numeris}"

class Prekes(Base):
    __tablename__ = "prekes"
    id  = Column(Integer, primary_key = True)
    pavadinimas = Column("prekes_pavadinimas", String)
    kiekis = Column("kiekis_vnt", Integer)
    kaina_vnt = Column("kaina_eur", Integer)
    kaina_viso = Column("kaina_is_viso", Integer) 
    prekes = relationship("Uzsakymas", back_populates = "preke")

    def __repr__(self):
        return f"{self.id}{self.pavadinimas}{self.kiekis}{self.kaina_vnt}{self.kaina_viso}"

class Uzsakymas(Base):
    __tablename__ = "uzsakymas"
    id = Column(Integer, primary_key = True)
    pirkejas_id = Column("pirkejas_id", Integer, ForeignKey("pirkejas.id"))
    pirkejas = relationship("Pirkejas", back_populates = "uzsakymai")
    preke_id = Column("preke_id", Integer, ForeignKey("prekes.id"))
    preke = relationship("Prekes", back_populates = "prekes")
    data = Column("data", Date())

    def __repr__(self):
        return f"{self.id}{self.pirkejas_id}{self.preke_id}{self.data}"

if __name__ == "__main__":
    Base.metadata.drop_all(engine)
    Base.metadata.create_all(engine)
