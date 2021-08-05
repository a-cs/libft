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

FT = ft_atoi.o\
		ft_bzero.o\
		ft_calloc.o\
		ft_isalnum.o\
		ft_isalpha.o\
		ft_isascii.o\
		ft_isdigit.o\
		ft_isprint.o\
		ft_memchr.o\
		ft_memcmp.o\
		ft_memcpy.o\
		ft_memmove.o\
		ft_memset.o\
		ft_strchr.o\
		ft_strdup.o\
		ft_strlcat.o\
		ft_strlcpy.o\
		ft_strlen.o\
		ft_strncmp.o\
		ft_strnstr.o\
		ft_strrchr.o\
		ft_substr.o\
		ft_tolower.o\
		ft_toupper.o

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
