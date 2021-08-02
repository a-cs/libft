/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: acarneir <acarneir@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/07/30 21:07:55 by acarneir          #+#    #+#             */
/*   Updated: 2021/07/30 21:07:55 by acarneir         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strchr(const char *s, int c)
{
	char	char_c;

	char_c = (char) c;
	while (*s != '\0')
	{
		if (*s == char_c)
		{
			return ((char *)s);
		}
		s++;
	}
	if (char_c == '\0')
		return ((char *)s);
	return (NULL);
}
