 function gearHack()
cla
% INPUT 
number_teeth  = 30;
centre_hole_radius = 1;
collar_width = 1;
main_outer_radius = 5;
collar_height =0.5;
teeth_length = 1;
gear_thickness = 1;

% calculate dependencies
collar_radius = centre_hole_radius + collar_width;
teeth_outer_radius = main_outer_radius + teeth_length;

% create an object to be manipulated 
[x,y,z]       = cylinder([centre_hole_radius,...
                          centre_hole_radius,...
                          collar_radius,...
                          collar_radius,...
                          main_outer_radius,...
                          main_outer_radius,...
                          collar_radius,...
                          collar_radius,...
                          centre_hole_radius],...
                          number_teeth*4);

axis equal

z([1, 8, 9], :) =  gear_thickness/2 + collar_height;
z([6, 7], :) = gear_thickness/2;
z([5, 4], :) = -gear_thickness/2;
z([3, 2], :) = -((gear_thickness/2) + collar_height);
[x1,y1,z1]       = cylinder([teeth_outer_radius], number_teeth*4);
x(5:6,1:4:end)  = x1(1:2,1:4:end);
x(5:6,2:4:end)  = x1(1:2,2:4:end);
y(5:6,1:4:end)  = y1(1:2,1:4:end);
y(5:6,2:4:end)  = y1(1:2,2:4:end);
mesh(x,y,z) %Display the finished object

% create the stlfile
% download the function surf2stl from the MathWorks File Exchange
% this function write and STL file from surface data
% https://uk.mathworks.com/matlabcentral/fileexchange/4512-surf2stl

surf2stl('gear.stl',x,y,z)

% check that your stl file is correct with free online STL viewer
% https://www.viewstl.com

