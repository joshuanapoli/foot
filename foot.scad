rim=2;
height=15;
height_rim=height+rim;
diameter_outer=40;
diameter=30;
diameter_inner=20;
spoke=4;

difference() {
    union() {
        cylinder(h=height, d=diameter_outer);
        cylinder(h=height_rim, d=diameter);
    }
    cylinder(h=height_rim+1, d=diameter_inner);
    for (x = [0:2]) {
        rotate(x*180/3) {
            translate([-spoke/2, -diameter/2, height]) cube([spoke, diameter, height_rim]);
        }
    }
}

