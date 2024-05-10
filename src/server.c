/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   server.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: columbux <columbux@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/08 15:30:28 by alex              #+#    #+#             */
/*   Updated: 2024/05/09 17:04:45 by columbux         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minitalk.h"

void	mt_btoi(int signal)
{
	int	bit;
	int	i;

	i = 0;
	bit = 0;
	if (signal == SIGUSR1)
		i |= (0x01 << bit);
	bit++;
	if (bit == 8)
	{
		ft_printf("%c", i);
		i = 0;
		bit = 0;
	}
}

int	main(int argc, char **argv)
{
	int	pid;

	pid = getpid();
	if (argc == 1)
	{
		signal(SIGUSR1, mt_btoi);
		signal(SIGUSR2, mt_btoi);
		pause();
	}
	else
		ft_error("don't add arguments please");
	return (0);
}
