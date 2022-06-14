from sqlalchemy import create_engine

engine = create_engine(
    'postgresql://yuntianx2:password@localhost:5432/employee_DB')
connection = engine.connect()
