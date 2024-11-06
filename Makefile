NAME = libft.a

FUNCS = $(addprefix strings/, ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_split.c \
	ft_strchr.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c) \
	$(addprefix characters/, ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_tolower.c ft_toupper.c) \
	$(addprefix memory/, ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_bzero.c ft_calloc.c ft_strdup.c) \
	$(addprefix file_descriptor/, ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c) \
	$(addprefix numbers/, ft_atoi ft_itoa)

BFUNCS = $(addprefix linked_list/, ft_lstnew.c ft_lstadd_front.c ft_lstadd_back.c ft_lstsize.c \
	 ft_lstlast.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c)

OBJECTS = $(FUNCS:.c=.o)
BONUS_OBJECTS = $(BFUNCS:.c=.o)

CC = gcc
CFLAGS = -Wall -Wextra -Werror
REM = rm -vf
AR = ar -r

all: $(NAME)

$(NAME): $(OBJECTS)
	$(AR) $(NAME) $(OBJECTS)

bonus: $(BONUS_OBJECTS)
	$(AR) $(NAME) $(BONUS_OBJECTS)

%.o: %.c
	$(CC) -c $(CFLAGS) $<

clean:
	$(REM) $(OBJECTS) $(BONUS_OBJECTS)

fclean: clean
	$(REM) $(NAME)

re: fclean all bonus

.PHONY: all bonus clean fclean re
