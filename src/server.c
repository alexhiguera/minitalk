/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   server.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alex <alex@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/08 15:30:28 by alex              #+#    #+#             */
/*   Updated: 2024/05/08 16:18:57 by alex             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <signal.h>

void	mt_btoi(int signal)
{
	//
}

int	main(int argc, char **argv)
{
	pid_t	pid;

	pid = getpid();
	if (argc == 1)
	{
		signal(SIGUSR1, mt_btoi);
		signal(SIGUSR2, mt_btoi);
		pause();
	}
	return (0);
}