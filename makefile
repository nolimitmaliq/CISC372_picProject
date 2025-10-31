all: image image_OpenMP
image:image.c image.h
	gcc -g image.c -o image -lm -lpthread
image_OpenMP: image_OpenMP.c image.h
	gcc -g image_OpenMP.c -o image_OpenMP -fopenmp -lm
clean:
	rm -f image image_OpenMP output.png
