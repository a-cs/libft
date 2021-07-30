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

FT = ft_bzero.o\
		ft_isalnum.o\
		ft_isalpha.o\
		ft_isascii.o\
		ft_isdigit.o\
		ft_isprint.o\
		ft_strlen.o\
		ft_tolower.o\
		ft_toupper.o\

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
