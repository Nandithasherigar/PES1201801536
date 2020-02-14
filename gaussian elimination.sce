N =zeros(3,4);
//3x4 matrix
for(i=1:3)
    for(j=1:3)
        printf("Enter element a%d%d",i,j);
        N(i,j)=(input(" "));
    end
 end
 for(i=1:3)
     printf("enter b%d",i);
     N(i,4)=(input(" "));
 end
 
 disp("The augmented matrix is ");
 A=N(1:3,1:3);
 disp(N);
 
 A=N(1:3,1:3);

 function Gaussian(N)
 
       for(i=1:3)
        if(N(i,i)==0) then
            if( i+1<4 & N(i+1,i)~=0  ) then
                N([i,i+1],:)=N([i+1,i],:);
            
            elseif(i+2<4 & N(i+2,i)~=0 ) then
                 N([i,i+2],:)=N([i+2,i],:);
            end
        end
        if(N(i,i)==0) then
            disp('SINGULAR CASE');break;
        end
        for(j=i+1:3)
            
                N(j,:)=N(j,:)-(N(j,i)/N(i,i))*N(i,:);
        end
        
          end
      
        disp(N);
        
 if(N(3,3)~=0 & N(2,2)~=0 &N(1,1)~=0) then
 x=0;y=0;z=0;
 z=N(3,3)\N(3,4);
 y=(N(2,4) - z*N(2,3))/N(2,2);
 x=(N(1,4) - z*N(1,3) -y*N(1,2))/N(1,1);
 sol=[x,y,z];
 disp(sol,"the solutions are x  y  z repectively ");
end
endfunction
Gaussian(N);

