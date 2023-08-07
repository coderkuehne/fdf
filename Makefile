# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kekuhne <kekuhne@student.42wolfsburg.de    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/04 18:18:00 by Kekuhne           #+#    #+#              #
#    Updated: 2023/08/07 16:11:47 by kekuhne          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fdf

LIBMLX = libmlx.a
LIBFT = libft.a

SRC		=	src/main.c	\
			src/pixel.c	\
			src/utils.c	\

OBJ 	=	$(SRC:.c=.o) 	

all: $(NAME)

$(NAME): $(OBJ)  $(LIBMLX) $(LIBFT)
	$(CC) $(OBJ) $(LIBMLX) $(LIBFT) -framework OpenGL -framework AppKit -o $(NAME)
	chmod a+x $(NAME)

$(OBJ): $(SRC)
	$(CC) -Wall -Wextra -Werror -Imlx -c -g $(SRC)

$(LIBMLX):
	cd mlx && $(MAKE)
	mv mlx/libmlx.a libmlx.a

 $(LIBFT):
	cd libft && $(MAKE)
	mv libft/libft.a libft.a

clean:
	rm -f *.o
	make clean -C ./libft

fclean: clean
	rm -f $(NAME) 
	rm -f $(LIBMLX)
	rm -f $(LIBFT)
	make fclean -C ./libft
	make clean -C ./mlx

re:	fclean all

.PHONY: all clean fclean re