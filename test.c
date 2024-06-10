#include <stdio.h>
#include <stdlib.h>

int dx[4] = { 1,-1,0,0 };
int dy[4] = { 0,0,1,-1 };

typedef struct 
{
	int x, y;
} Point;

Point queue[10000000];
int front = 0, rear = 0;

void insertqueue(int x, int y)
{
	queue[rear].x = x;
	queue[rear].y = y;
}

//큐 (front 증가)
Point dequeue()
{
	return queue[front++];
}

void bfs(int** box, int m, int n)
{
	while (front < rear)
	{
		Point p = dequeue();
		for (int i = 0; i < 4; i++)
		{
			int nx = p.x + dx[i];
			int ny = p.y + dy[i];
			if (nx >= 0 && nx < n && ny >= 0 && ny < m && box[nx][ny] == 0)
			{
				box[nx][ny] = box[p.x][p.y] + 1;
				insertqueue(nx, ny);
			}
		}
	}
}

int main()
{
	int M, N;
	scanf("%d %d", &M, &N);



	int** box = (int**)malloc(N * sizeof(int));
	for (int i = 0; i < N; i++)
	{
		box[i] = (int*)malloc(M * sizeof(int));
	}

	//m,n 확인 box
	for (int i = 0; i < N; i++)
	{
		for (int j = 0; j < M; j++)
		{
			scanf("%d", &box[i][j]);
			if (box[i][j] == 1)
			{
				dequeue(i, j);
			}
		}
	}
	
	bfs(box, M, N);

	//최대 날짜
	int day = 0;
	int all = 1;
	for (int i = 0; i < N; i++)
	{
		for (int j = 0; j < M; j++)
		{
			if (box[i][j] == 0)
			{
				all = 0;
			}
			if (box[i][j] > day)
			{
				day = box[i][j];
			}
		}
		
		if (all)
		{
			printf("-1\n");
		}
		else
		{
			printf("%d\n", day - 1);
		}
		//동적 메모리 헤제
		for (int i = 0; i < N; i++)
		{
			free(box[i]);
		}
		free(box);

		return 0;
	}
}
