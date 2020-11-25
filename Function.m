% Returns the atmospheric temperature given an input altitude
function f = TemperatureMap(z)
% Radius of earth (U.S Standard Atmosphere)
r = 6356766; 
    if z <= 11000
        f = 288.15-0.0065*z; 
    elseif z <= 20000
        f = 216.65; 
    elseif z <= 32000
        f = 216.65+0.001*(z-20000); 
    elseif z <= 47000
        f = 227.65+0.0028*(z-32000); 
    elseif z<= 51000
        f = 269.65; 
    elseif z <= 71000 
        f = 269.65-0.0028*(z-51000); 
    elseif z <= 84852 
        f = 213.65-0.002*(z-71000);
    elseif z <= 91000 
        f = 185.946; 
    elseif z <= 110000
        f = 263.1905-76.3232*(1-((z-91000)/-19942.9)^(2))^(1/2); 
    elseif z <= 120000
        f = 240+0.012*(z-110000); 
    elseif z > 120000
        f = 1000-(1000-360)*exp(-0.00001875*((z-120000)*(r+120000))/...
            (r+z));
    end 
end 

