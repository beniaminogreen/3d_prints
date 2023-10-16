
desk_width = 27;
depth_into_table = 40;
plastic_width = 3;
piece_width = 15;
hook_depth= 10;
hook_height= 15;


linear_extrude(piece_width)
union(){
    square([plastic_width, depth_into_table]);

    translate([plastic_width + desk_width,0,0])
        square([plastic_width, depth_into_table]);

    translate([0, -plastic_width, 0])
        square([desk_width + 2*plastic_width, plastic_width]);

    translate([0, -1*(plastic_width) - hook_depth, 0])
        square([plastic_width, hook_depth]);

    translate([0, -2*(plastic_width) - hook_depth, 0])
        square([hook_height, plastic_width]);
};
