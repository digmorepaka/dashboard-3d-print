$fn = 100; 

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
	translate ([5, -3, 0]) prism(3, 3, 4);
	translate ([23, -3, 0]) prism(3, 3, 4);
	translate ([8, 4.5, 0]) rotate ([0, 0, 180]) prism(3, 3, 4);
	translate ([26, 4.5, 0]) rotate ([0, 0, 180]) prism(3, 3, 4);

}



module prism(l, w, h){
	polyhedron(
             points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
             faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
              );
  
}
   
