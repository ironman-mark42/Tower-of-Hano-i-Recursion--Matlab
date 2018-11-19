% Main function
function TowerOfHanoi(n,s)
    % initialize the pegs
    p1 = Peg(n,1);
    p2 = Peg(0,2);
    p3 = Peg(0,3);
    % call the recursive solution to the towers of hanoi
    visualize(n,p1,p2,p3);
    pause(s);
    tower(s,n,n,p1,p2,p3);
end

% The recursive implementation of The Tower of Hanoi
function tower(s,nt,n,p1,p2,p3)
    if n == 1
       p1.moveItem(p3);
       visualize(nt,p1,p2,p3);
       pause(s);
    else
        tower(s,nt,n-1,p1,p3,p2);
        tower(s,nt,1,p1,p2,p3);
        tower(s,nt,n-1,p2,p1,p3);
    end
end