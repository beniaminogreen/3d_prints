//#######################################################
//  _  __    _    ___ __________ _   _   _____ ___    _    __  __
// | |/ /   / \  |_ _|__  / ____| \ | | |  ___/ _ \  / \  |  \/  |
// | ' /   / _ \  | |  / /|  _| |  \| | | |_ | | | |/ _ \ | |\/| |
// | . \  / ___ \ | | / /_| |___| |\  | |  _|| |_| / ___ \| |  | |
// |_|\_\/_/   \_\___/____|_____|_| \_| |_|   \___/_/   \_\_|  |_|
                                                               //
// ____   _____  __
// | __ ) / _ \ \/ /
// |  _ \| | | \  /
// | |_) | |_| /  \
// |____/ \___/_/\_\
//#######################################################

// OpenScad file to help me quickly generate frames for [kazien
// foam](https://www.fastcap.com/product/kaizen-foam) Simply edit the variables
// below to reflect the size of the foam you want to make a frame for, then
// compile and you are set.


// Dimensions of the foam you would like to make a box for
inner_width = 120;
inner_height = 32;
inner_depth = 250;

// thickness of the plastic in mm.
overhang = 5; // overhang of inner lip that keeps the foam inplace
wall_width = 3; // thickness of vertical walls be around the box
wall_height = 3; // thickness of the top layer of the box

difference(){


translate([-(overhang+wall_width), -(overhang+wall_width), 0])
color("red")
cube([
        inner_width + 2*(overhang+wall_width),
        inner_depth + 2*(overhang+wall_width),
        inner_height+wall_height
        ]);


// cut out
union(){
    translate([0,0,-10])
    cube([
        inner_width,
        inner_depth,
        inner_height+100
        ]);
     translate([-overhang, -overhang, -10])
     cube([
        inner_width + 2*overhang,
        inner_depth + 2*overhang,
        inner_height+10
        ]);
}
}
