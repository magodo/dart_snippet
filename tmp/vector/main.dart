class Vector {
    final num x, y;
    Vector(this.x, this.y);

    Vector operator +(Vector o) => Vector(x+o.x, y+o.y);
    Vector operator -(Vector o) => Vector(x-o.x, y-o.y);
}

void main() {
    final v1 = Vector(1,1);
    final v2 = Vector(1,1);
    assert(v1+v2 == Vector(2,2));
    assert(v1-v2 == Vector(0,0));
}
