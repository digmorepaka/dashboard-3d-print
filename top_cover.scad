$fn = 100; 



//dash(); 
translate ([0, 0, 0]) difference() {
    front();
    dash();
}

module front() {
    translate ([15, 0, 7]) cube([3, 36, 3]);
    translate ([3, 0, 7]) cube([3, 36, 3]);
    translate ([-3.2, 0, 7]) cube([28, 36, 2]);
    
}
 
module dash() {
    translate([2, 2, 0]) cylinder(2, 2, 2); 
    translate([22, 2, 0]) cylinder(2, 2, 2);
    translate([2, 34, 0]) cylinder(2, 2, 2);
    translate([22, 34, 0]) cylinder(2, 2, 2);

    difference () {
        assembled_dividers();
        translate ([15, 0, 6]) cube([3, 50, 3]);
        translate ([3, 0, 6]) cube([3, 50, 3]);
    
    }
    difference () {
        cube([24, 36, 2]);
        translate([8.75, 2, -0.1]) cube([6, 6, 2.2]);
        translate([8.75, 10, -0.1]) cube([6, 6, 2.2]);
        translate([8.75, 18, -0.1]) cube([6, 6, 2.2]);
        translate([0, 0, -0.1]) cube([2, 2, 2.2]);
        translate([22, 0, -0.1]) cube([2, 2, 2.2]);
        translate([0, 34, -0.1]) cube([2, 2, 2.2]);
        translate([22, 34, -0.1]) cube([2, 2, 2.2]);    

    }

    module assembled_dividers () {
        translate ([-3.7, 7.75, 2]) divider();
        translate ([-3.7, 15.6, 2]) divider();
        translate ([-3.7, 23.45, 2]) divider();
    }

    module divider () {
        difference () {
            cube([29, 1.5, 7]);
            translate([27.25, -2, -2.5]) rotate([0, 10, 0]) cube([10, 10, 10]);
            translate([-8.5, -2, -2.5]) rotate([0, 350, 0]) cube([10, 10, 10]);
	
        }
    }
}