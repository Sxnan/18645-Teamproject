def main():
    with open('maze512', 'r') as f:
        maze = f.read()
    maze = maze.split('\n')
    with open('maze', 'w') as f:
        for i in range(64):
            f.write(maze[i][:64] + '\n')

if __name__ == "__main__":
    main()
