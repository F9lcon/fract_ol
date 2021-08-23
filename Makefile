SRCS	= main.c color_utils.c image_utils.c mlx_utils.c key_hooks.c mouse_hooks.c

HEADER	= fractol.h

LIB		= ./libft/libft.a

MLX		= ./mlx/libmlx.a

NAME 	= fractol

CC		= gcc

CFLAGS	= -Wall -Wextra -Werror -I .

RM		= rm -f

.PHONY: all clean fclean re fractol

all: $(NAME)

$(NAME): $(SRCS) $(HEADER) $(LIB) $(MLX)
	$(CC) $(CFLAGS) $(SRCS) $(LIB) $(MLX) -framework OpenGL -framework AppKit -o $(NAME)

lib:
	@make -C libft

mlx:
	@make -C mlx

clean:
	make clean -C libft
	$(RM) $(NAME)

fclean: clean
	$(RM) $(NAME)
	make fclean -C libft

re:  fclean all


