class ImmutablePoint {
    final int x, y;
    const ImmutablePoint([this.x=0, this.y=0]);
}

void main() {
    // 这里需要加const才能实例化一个compile-time constant
    // 不加也可以实例化，但是不是compile-time const
    var p = const ImmutablePoint();
}
