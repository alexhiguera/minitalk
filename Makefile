# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alex <alex@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/08 15:23:34 by alex              #+#    #+#              #
#    Updated: 2024/05/08 21:42:54 by alex             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#████████████████████████████ Configuration ███████████████████████████████████#

NAME			:= minitalk
SERVER			:= server
CLIENT 			:= client
CC				:= gcc
CFLAGS			:= -Wall -Wextra -Werror

#██████████████████████████████ Colors ████████████████████████████████████████#

DEF_COLOR 		=	\033[0;39m
GRAY 			=	\033[0;90m
RED 			=	\033[0;91m
GREEN 			=	\033[0;92m
YELLOW 			=	\033[0;93m
BLUE 			=	\033[0;94m
MAGENTA 		=	\033[0;95m
CYAN 			=	\033[0;96m
WHITE 			=	\033[0;97m

#█████████████████████████████ SOURCES █████████████████████████████████████████#

SRC_SERVER		:=	src/server.c
SRC_CLIENT 		:= 	src/client.c

SRC_LIBFT		:=	libft_2.0/libft.a

#████████████████████████████ Rules ████████████████████████████████████████████#

all:$(NAME)

$(NAME): 	$(SRC)
				@echo "$(CYAN)Compiling $(NAME)...$(WHITE)\n"
				@make re -C libft_2.0/
				@$(CC) $(CFLAGS) $(SRC_LIBFT) $(SRC_SERVER) -o $(SERVER)
				@$(CC) $(CFLAGS) $(SRC_LIBFT) $(SRC_CLIENT) -o $(CLIENT)
				@echo "$(GREEN)$(NAME) compiled! 🚀$(WHITE)\n"


clean:	

fclean: 	clean
				@rm -rf $(SERVER)
				@rm -rf $(CLIENT)

re: 		fclean all

.PHONY: 	all clean fclean re normi 

#█████████████████████████████ Custom rules ████████████████████████████████████#

normi:
						@echo "$(YELLOW)Norminette...\n$(WHITE)"
						@norminette $(SRC) src/*.h
						@echo "$(GREEN)\nNorminette Done!\n"
