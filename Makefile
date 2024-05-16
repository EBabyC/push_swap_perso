# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: elichan < elichan@student.42.fr >          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/13 10:20:41 by elichan           #+#    #+#              #
#    Updated: 2024/05/13 10:41:27 by elichan          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

### INCLUDES ###

INCLUDES		= push_swap.h

### SOURCES ###

SRC = push_swap.c \
		init.c \
		instruc_swap_or_push.c \
		instruc_rev_or_rot.c \
		instruc_dual.c \
		sorting_simple.c \
		optimization.c \
		sorting_quartile.c \
		inti_edit_rot_rev_cmd.c \

SOURCES 		= $(addprefix $(SRCFLDR), $(SRC))

OBJECTS 		= $(addprefix $(SRCFLDR), $(OBJS))


### FOLDER PATH ###

SRCFLDR			= sources/

### MACROS ###

NAME			= push_swap
OBJS			= $(SOURCES:.c=.0)

CC 				= gcc
CFLAGS			= -Wall -Werror -Wextra -gcc

### RULES ###

$(NAME): $(OBJS) $(INCLUDES) Makefile
		$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

all : $(NAME)

.objects/%.o: %.c 
		${CC} ${CFLAGS} -c $<

clean:
		rm -f $(OBJS)

fclean:
		rm -f $(OBJS) $(NAME)

re: fclean all
		
.PHONY: all clean fclean re bonus