i =1;


for i = 1:7020
        if ( geotailS1.Column5(i)== 9999.99000000000)
         geotailS1.Column5(i) = 0;
        end

end
