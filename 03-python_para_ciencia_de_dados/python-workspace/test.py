points = [(2.5, 3.1), (1.0, 0.5), (5.5, 9.9)]

def centroid(points):
    if len(points) == 0:
        return None
    if type(points[0]) == int:
        return mean(points)
    dimension = len(points[0])
    return tuple([mean([p[axis] for p in points]) for axis in range(dimension)])

def mean(numbers):
    return sum(numbers) / len(numbers)

print(centroid(points))