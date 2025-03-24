NAME=camagru

$(NAME):
	docker compose up -d --build

all: $(NAME)

down:
	docker compose down

re: down $(NAME)

.PHONY: all down re