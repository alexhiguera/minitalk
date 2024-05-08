# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alex <alex@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/08 15:23:34 by alex              #+#    #+#              #
#    Updated: 2024/05/08 15:26:37 by alex             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#████████████████████████████ Configuration ███████████████████████████████████#

NAME			:= minishell
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

SRC 		:= 	server.c	client.c

#████████████████████████████ Rules ████████████████████████████████████████████#

all:$(NAME)

$(NAME): 	$(SRC)
				@echo "$(CYAN)Compiling $(NAME)...$(WHITE)\n"
				@$(CC) $(CFLAGS) -o $(NAME)
				@echo "$(GREEN)$(NAME) compiled! 🚀$(WHITE)\n"

clean:

fclean: 	clean
				@rm -rf $(NAME)

re: 		fclean all

.PHONY: 	all clean fclean re normi 

#█████████████████████████████ Custom rules ████████████████████████████████████#

normi:
						@echo "$(YELLOW)Norminette...\n$(WHITE)"
						@norminette $(SRC) src/*.h
						@echo "$(GREEN)\nNorminette Done!\n"
