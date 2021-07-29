# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: acarneir <acarneir@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/07/28 23:56:43 by acarneir          #+#    #+#              #
#    Updated: 2021/07/28 23:56:43 by acarneir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAGS = -Wall -Wextra -Werror

FT = ft_bzero.o

all: $(NAME)

$(NAME): $(FT)
	ar -rcs $(NAME) *.o

%.o: %.c
	gcc $(FLAGS) -c $< -o $@

clean: 
	rm -rf *.o

fclean: clean
	rm -rf $(NAME)

re : fclean all
