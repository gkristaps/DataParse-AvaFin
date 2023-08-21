CREATE DATABASE avafin_task;


CREATE TABLE dbo.parsed_data (
[pid] INT NOT NULL IDENTITY PRIMARY KEY,
[id] INT NOT NULL,
[salary] INT NULL,
[status] INT NULL,
[bank.issued] INT NULL,
[bank.status] INT NULL,
[non_bank.issued] INT NULL,
[non_bank.status] INT NULL,
[history.status] INT NULL,
[history.value] INT NULL,
[created_at] DATETIME NOT NULL DEFAULT GETDATE(),
[updated_at] DATETIME NULL DEFAULT NULL,
INDEX [parsed_data_id_idx] ([id] ASC),
INDEX [parsed_data_created_at_idx] ([created_at] DESC)
);
