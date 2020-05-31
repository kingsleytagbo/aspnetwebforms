CREATE LOGIN kingsleytagbo WITH PASSWORD = 'code.full-stack.guru';
CREATE USER kingsleytagbo FOR LOGIN kingsleytagbo;
exec sp_addrolemember 'db_owner', kingsleytagbo;