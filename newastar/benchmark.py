import subprocess

def run_benchmark(source, goal):
    res = subprocess.run(['./main',
                          str(source[0]), str(source[1]),
                          str(goal[0]), str(goal[1])],
                         capture_output=True)
    res = res.stdout.decode('utf-8')
    res = res.split("\n")[:3]
    return (int(res[0].split(":")[1]), int(res[1].split(":")[1]), \
            int(res[2].split(":")[1]))



def main():
    outputs = []
    count = 0
    with open("./maze512-1-0.map.scen") as f:
        for line in f:
            count += 1
            if count % 10 == 0:
                print(count)
            scene = line.strip().split('\t')
            if len(scene) == 9:
                step, time, node_visited = \
                    run_benchmark((scene[4], scene[5]), (scene[6], scene[7]))
                if step != int(scene[8]):
                    print("wrong answer")
                    print(step, scene[8])
                else:
                    outputs.append((node_visited, time/10.0))
    outputs.sort()

    with open("output", "w") as f:
        for output in outputs:
            f.write("%d, %d\n" % output)

    pass


if __name__ == "__main__":
    main()
