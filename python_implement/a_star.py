from random import choice
from copy import deepcopy
from math import sqrt
import heapq


class Node(object):
    def __init__(self, obj, pre_move=None, predecessor=None):
        self.obj = obj
        self.predecessor = predecessor
        self.pre_move = pre_move


class Scene(object):
    def __init__(self, scene, dest):
        self.scene = scene
        self.dest = dest
        self.r = len(scene)
        self.c = len(scene[0])
        self.moves_set = [(-1, 0), (1, 0), (0, -1), (0, 1),
                          (-1, -1), (-1, 1), (1, -1), (1, 1)]

    def is_solved(self, position):
        if position == self.dest:
            return True
        else:
            return False

    def is_valid_move(self, position, move):
            des_i = position[0] + move[0]
            des_j = position[1] + move[1]
            if des_i < 0 or des_i >= self.r:
                return False
            if des_j < 0 or des_j >= self.c:
                return False
            if self.scene[des_i][des_j]:
                return False
            return True

    def get_valid_moves(self, position):
        valid_moves = []
        for move in self.moves_set:
            if self.is_valid_move(position, move):
                valid_moves.append(move)
        return valid_moves

    def perform_move(self, position, move):
        return (position[0] + move[0],
                position[1] + move[1])

    def successors(self, position):
        for move in self.get_valid_moves(position):
            yield self.perform_move(position, move)

def euclidean_dist(p1, p2):
    d_square = (p1[0] - p2[0])**2 + (p1[1] - p2[1])**2
    return sqrt(d_square)

def find_path(start, goal, scene):
    scene = Scene(scene, goal)
    visited = set()
    heap = []
    heapq.heappush(heap, (euclidean_dist(start, goal), 0,
                             Node(start, None, None)))
    sol_node = None
    while heap:
        _, g_cur, cur_node = heapq.heappop(heap)
        cur_pos = cur_node.obj
        if scene.is_solved(cur_pos):
            sol_node = cur_node
            break
        if cur_pos not in visited:
            visited.add(cur_pos)
            for successor in scene.successors(cur_pos):
                g_successor = g_cur + euclidean_dist(cur_pos, successor)
                heapq.heappush(heap, (euclidean_dist(successor, goal) +\
                                      g_successor,
                                      g_successor,
                                      Node(successor, None, cur_node)))
    if sol_node is None:
        return None
    solutions = []
    while sol_node is not None:
        solutions.append(sol_node.obj)
        sol_node = sol_node.predecessor
    solutions.reverse()
    print len(solutions)
    dis = 0
    for i in range(len(solutions) - 1):
        dis += euclidean_dist(solutions[i], solutions[i+1])
    print dis
    return solutions
