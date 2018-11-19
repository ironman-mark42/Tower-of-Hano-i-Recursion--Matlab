function visualize(nt,p1,p2,p3)
    % clear the canvas
    clf;
    % Draw Peg lines
    pegLine(nt,nt);
    pegLine(nt,nt*3 - 1);
    pegLine(nt,nt*5 - 2);
    %Draw the items in the pegs
    getid(p1,nt);
    getid(p2,nt);
    getid(p3,nt);
    % Settings for the canvas
    axis([0 nt*6-2 0 nt*2])
    axis square
    title('Tower of Hanoi')
    c = uicontrol;
end
% Draws the items on the pegs based on what peg the item is on
function getid(p1,nt)
    if p1.id == 1
        rectangle(p1,1,nt,nt);
    elseif p1.id == 2
        rectangle(p1,2,nt*3 - 1,nt);
    elseif p1.id == 3
        rectangle(p1,3,nt*5 - 2,nt);
    end
end
% Draws the peg
function pegLine(nt, middle)
%create pegline
    
    left = middle - 0.1;
    right = middle + 0.1;
    bottom = 0;
    top = nt +1;
    x = [left left right right];
    y = [bottom top top bottom];
    fill(x, y, 'black');
    hold on;
end
% Draws items on a peg
function rectangle(peg,id, middle,nt)
    itemArray = peg.itemArray();
    %colorArray = peg.itemColor();
    size = length(itemArray);
    if size < 1
        return;
    end
    for i = 0:size-1
        left = middle - itemArray(size-i);
        right = middle + itemArray(size-i);
        bottom = i;
        top = bottom + 1;
        x = [left left right right];
        y = [bottom top top bottom];
        %disp([left top right]);
        fill(x, y, [1-itemArray(size-i)/nt itemArray(size-i)/nt 1-itemArray(size-i)/nt]);
        hold on;
    end
end