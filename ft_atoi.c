/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: acarneir <acarneir@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/08/02 23:33:35 by acarneir          #+#    #+#             */
/*   Updated: 2021/08/02 23:33:35 by acarneir         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_atoi(const char *str)
{
	int	pos;
	int	start;
	int	signal;
	int	number;

	start = 0;
	signal = 1;
	number = 0;
	pos = 0;
	while (str[pos] != '\0')
	{
		if ((start == 0 && (str[pos] == '+' || str[pos] == '-'))
			|| ft_isdigit(str[pos]) == 1)
		{
			start = 1;
			if (str[pos] == '-')
				signal = -1;
			if (ft_isdigit(str[pos]) == 1)
				number = number * 10 + signal * (str[pos] - '0');
		}
		else if (start == 1 || !(str[pos] >= 9 && str[pos] <= 13))
			break ;
		pos++;
	}
	return (number);
}
