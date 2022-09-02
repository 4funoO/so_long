# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: doreshev <doreshev@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/07 13:29:01 by doreshev          #+#    #+#              #
#    Updated: 2022/09/02 18:30:14 by doreshev         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = so_long

LIBFTDIR = ./libft

MLXDIR = ./mlx

CC = cc

RM = rm -f

FLAGS = -Wall -Wextra -Werror

SRC =	game/so_long.c \
		game/map_process.c \
		game/game.c \
		game/so_long_utils.c \
		game/key_hook.c \
		game/enemy.c \

OBJ = ${SRC:.c=.o}
INLIBFT = -L./libft -lft
INMLX = -L./mlx -lmlx

.c.o:
	${CC} ${FLAGS} -Imlx -c $< -o $@

${NAME}: ${OBJ}
	@make -C $(LIBFTDIR)
	@make -C $(MLXDIR)
	${CC} ${OBJ} ${INLIBFT} ${INMLX} -framework OpenGL -framework AppKit -o ${NAME} 


all: ${NAME}

clean:
	${RM} ${OBJ}
	@cd $(LIBFTDIR) && $(MAKE) clean
	@cd $(MLXDIR) && $(MAKE) clean

fclean: clean
	${RM} ${NAME}
	@cd $(LIBFTDIR) && $(MAKE) fclean

re: fclean all

.PHONY: all clean fclean re