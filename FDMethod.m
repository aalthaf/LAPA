nx = 20
ny = 20

maxIterations = 20

V = zeros (nx,ny)
V(:,1) = 1
V(:,ny) = 0


for i = 2:nx-1
    pause (0.5)
    for j = 2:ny-1
      V(i,j) =  ( V(i+1,j) - 2* V(i,j) + V(i-1,j) ) + (V(i,j+1) - 2 * V(i,j) + V(i,j-1))
            
    end
   
    surf(V,'EdgeColor','none')
end




