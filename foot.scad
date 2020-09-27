height=15;
height_rim=16;
diameter_outer=40;
diameter_rim=39;
diameter_inner=32;

linear_extrude(height_rim) {
    difference() {
        circle(d=diameter_outer);
        circle(d=diameter_rim);
    }
}

linear_extrude(height) {
    difference() {
        circle(d=diameter_outer);
        circle(d=diameter_inner);
    }
}
