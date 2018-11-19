% CLASS Peg(n,id)
%   peg takes in n and id,
%   n = how many items should be on the peg
%   id = 1 or 2 or 3 for the id of the peg
%   constructor initializes the peg, pushes items on the stack
% Methods:
%   getSize() - gets the size of the peg
%   moveItem(from,to) - moves item from one peg to another
%   peek() - peeks at the top item of the peg
%   itemArray() - calls itemArray from Stack
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

classdef Peg<handle

    properties
       stack
       id
    end
    
    methods
        %Constructor
        function peg = Peg(n,id)
            peg.id = id;
            % n must be a positive numer, a peg can't have negative
            % items on it
            if n < 0
                error("N must be positive");
            end
            % Create a stack and add values to the stack basesd on n
            peg.stack = Stack();
            for i = n:-1:1
                peg.stack.push(i);
            end
        end
        % Get size of the peg
        % You might need to change the input parameters for this function
        function size = getSize(peg)
            size = peg.stack.size();
        end
        %Move item from one peg to another
        function moveItem(peg,toPeg)
            valueToTake = peg.stack.peek();
            valueToPlaceOn = toPeg.stack.peek();
            if valueToPlaceOn == -1 || valueToTake < valueToPlaceOn
                toPeg.stack.push(peg.stack.pop());
            else
                disp("Value To place On "+valueToPlaceOn);
                disp("Value To take "+valueToTake);
                error("Can't place on peg");
            end            
        end
        %peeks at the top item of the peg - implement the peek function in
        % stack object
        function value = peek(peg)
            value = peg.stack.peek();
            visualize();
        end
        % Gets all items on the stack
        function value = itemArray(peg)
           value = peg.stack.itemArray(); 
        end

    end
end

