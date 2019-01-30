nx = 20
ny = 20

maxIterations = 100

V = zeros (nx,ny)
V(:,1) = 1
V(:,ny) = 0

for n = 1:maxIterations
    
    for i = 1:nx-1
        pause (0.0001)
        for j = 1:ny
            V(:,1) = 1
            V(:,ny) = 0
            if (j == 1 && i > 1)
                V(i,j) = (V(i+1,j) - 2*V(i,j) + V(i-1,j) + V(i,j+1) - 2* V(i,j))/3
                
                
            elseif(j ==ny && i > 1 )
                V(i,j) = (V(i+1,j) - 2* V(i,j) + V(i-1,j) - 2 * V(i,j) + V(i,j-1))/3
                
                
            else
                if(i>1 && j>1)
                  V(i,j) =  ((V(i+1,j) - 2* V(i,j) + V(i-1,j) ) + (V(i,j+1) - 2 * V(i,j) + V(i,j-1)))/4
                end
            end
            surf(V)
        end
        
        
    end
    
end

    
    
