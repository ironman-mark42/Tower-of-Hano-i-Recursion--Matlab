% CLASS Node
% Methods:
%   setNodeValue(data) - assigns the value of the current node to data
%   getNodeValue() - returns the value of the current node
%   setNextNode() - links the current node to another node
%   getNextNode() - returns the next node 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

classdef Node<handle

    properties
       nodeValue
       nextNode
       colorValue
    end
    
    methods
        %Constructor
        function node = Node()
            %node.nodeValue = initValue;
            node.colorValue = [rand(1,1) rand(1,1) rand(1,1)];
        end
        %Set Node Value
        function setNodeValue(node,dat)
            node.nodeValue = dat;
        end
        %Get node value
        function value = getNodeValue(node)
            value = node.nodeValue;
        end
        % Set Next Node
        function setNextNode(node,nextNode)
           node.nextNode = nextNode; 
        end
        % Get Next Node
        function returnNode = getNextNode(node)
            returnNode = node.nextNode;
        end
    end
end

