SRCS		= main.c color_utils.c image_utils.c mlx_utils.c key_hooks.c mouse_hooks.c

HEADER		= fractol.h

LIB			= ./libft/libft.a

MLX			= ./mlx/libmlx.a

NAME 		= fractol

MAKEFILE	= Makefile

HEADER		= fractol.h

CC			= gcc

CFLAGS		= -Wall -Wextra -Werror -I .

RM			= rm -f

.PHONY: all clean fclean re mlx

all: $(MLX) $(NAME)

$(NAME): $(MAKEFILE) $(HEADER) $(SRCS) $(HEADER) $(LIB) $(MLX)
	$(CC) $(CFLAGS) $(SRCS) $(LIB) $(MLX) -framework OpenGL -framework AppKit -o $(NAME)

$(LIB):
	@make -C libft

mlx:
	@make -C -s mlx

clean:
	@make clean -C libft
	@make clean -C mlx
	$(RM) $(NAME)

fclean: clean
	$(RM) $(NAME)
	make fclean -C libft

re:  fclean all


