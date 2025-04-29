NAME=camagru

# Default target
all: $(NAME)

# Start and build
$(NAME):
	docker compose up -d --build

start:
	docker compose up -d

# Shutdown
down:
	docker compose down

# Rebuild
re: down $(NAME)

# Export database to backup.sql
db-export:
	@./scripts/export_db.sh

# Import database from backup.sql
db-import:
	@./scripts/import_db.sh

# Fix volume folder permissions
fix-permissions:
	sudo chown -R $$(id -u):$$(id -g) local
	chmod -R 777 local

.PHONY: all down re start db-export db-import fix-permissions
