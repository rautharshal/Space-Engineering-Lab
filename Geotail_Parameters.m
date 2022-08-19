clc
X = geotailS3.Column4;
Y = geotailS3.Column5;
Z = geotailS3.Column6;
% Matrix of Distance of Wind from Earth 
R = sqrt(X.^2+Y.^2+Z.^2)
Apogee = max(R)
Perigee = min(R)
fprintf('The Apogee Distance in Re for Geotail is %f \n',Apogee)
fprintf('The Perigee Distance in Re for Geotail is %f\n',Perigee)
SemiMajor = (Apogee+Perigee)/2
fprintf('The Semi Major Axis of the orbit in Re is %f\n',SemiMajor)
e = ((Apogee-Perigee)/(Apogee+Perigee))
fprintf('The Eccentricity of the orbit is %f\n',e)
