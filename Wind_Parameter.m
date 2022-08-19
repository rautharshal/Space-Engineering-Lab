clc
X = geotailS2.Column4;
Y = geotailS2.Column5;
Z = geotailS2.Column6;
% Matrix of Distance of Wind from Earth 
R = sqrt((X-210).^2+Y.^2+Z.^2)
Apogee = max(R)
Perigee = min(R)
fprintf('The Apogee Distance in Re for Wind is %f \n',Apogee)
fprintf('The Perigree Distance in Re for Wind is %f\n',Perigee)
SemiMajor = (Apogee+Perigee)/2
fprintf('The Semi Major Axis of the orbit in Re is %f\n',SemiMajor)
e = ((Apogee-Perigee)/(Apogee+Perigee))
fprintf('The Eccentricity of the orbit is %f\n',e)
