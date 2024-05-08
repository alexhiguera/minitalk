/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alex <alex@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/08 15:29:07 by alex              #+#    #+#             */
/*   Updated: 2024/05/08 18:55:23 by alex             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <signal.h>
#include "libft_2.0/src/libft.h"

int	main(int argc, char **argv)
{
	pid_t	pid;

	pid = getpid();
	ft_printf("En proceso");
	return (0);
}
