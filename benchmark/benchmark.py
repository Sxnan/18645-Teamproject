import subprocess

def run_benchmark(source, goal):
    res = subprocess.run(['./main', 'maze512-1-0.map',
                          str(source[0]), str(source[1]),
                          str(goal[0]), str(goal[1])],
                         capture_output=True)
    res = res.stdout.decode('utf-8')
    res = res.split("\n")[:2]
    return int(res[1]), int(res[0])


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
                step, time = \
                    run_benchmark((scene[4], scene[5]), (scene[6], scene[7]))
                if step != int(scene[8]):
                    print("wrong answer")
                    print(step, scene[8])
                else:
                    outputs.append((step, time))
    outputs.sort()

    with open("output", "w") as f:
        for output in outputs:
            f.write("%d, %d\n" % output)

    pass


if __name__ == "__main__":
    main()
