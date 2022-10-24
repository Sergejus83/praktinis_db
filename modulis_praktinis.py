from sqlalchemy import Column, Integer, String, ForeignKey, create_engine, Table
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship, sessionmaker

engine = create_engine('sqlite:///data/praktinis_db.db')
Base = declarative_base()

class Pirkejai(Base):
    __tablename__ = "pirkejas"
    id = Column(Integer, primary_key = True)
    vardas = Column("vardas", String)
    pavarde = Column("pavarede", String)
    el_pastas = Column("el_pastas", String)
    tel_numeris = Column("tel_numeris", Integer)

    def __repr__(self):
        return f"{self.id}{self.vardas}{self.pavarde}{self.el_pastas}{self.tel_numeris}"

class Prekes(Base):
    __tablename__ = "prekes"
    id  = Column(Integer, primary_key = True)
    pavadinimas = Column("pavadinimas", String)
    kiekis = Column("kiekis_vnt", Integer)
    kaina = Column("kauna_eur", float)
