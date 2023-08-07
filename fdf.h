/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fdf.h                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: Kekuhne <kekuehne@student.42wolfsburg.d    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/04 19:12:25 by Kekuhne           #+#    #+#             */
/*   Updated: 2023/04/18 16:14:35 by Kekuhne          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FDF_H
# define FDF_H
# include "mlx/mlx.h"
# include "libft/libft.h"
# include <math.h>
# include <stdio.h>
typedef struct	s_win {
	void	*mlx_win;
	int		length;
	int		height;
	int		center;
}				t_win;

typedef struct	s_data {
	void	*img;
	char	*addr;
	int		bits_per_pixel;
	int		line_length;
	int		endian;
}				t_data;

// pixel.c
void	set_pixel(t_data *data, int x, int y, int color);
void	draw_line(t_data *data, int x1, int y1, int x2, int y2, int color);
//utils.c
int	abs_value(int i);
int	round_float(float num);
int	int_max(int n1, int n2);
//main.c
int main(void);
#endif
