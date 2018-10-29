% CLASS Peg
% Methods:
%   getSize() - gets the size of the peg
%   moveItem(from,aux,to) - moves item from one peg to another
%   peek() - peeks at the top item of the peg
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

classdef Peg<handle

    properties
       stack 
    end
    
    methods
        %Constructor
        function peg = Peg()
            peg.stack = Stack();
        end
        % Get size of the peg
        % You might need to change the input parameters for this function
        function size = getSize(peg)
            
        end
        %Move item from one peg to another
        %This function might take more input arguments
        function moveItem(peg,from,aux,to)
        
        end
        %peeks at the top item of the peg - implement the peek function in
        % stack object
        function peek(peg)
        
        end
    end
end

