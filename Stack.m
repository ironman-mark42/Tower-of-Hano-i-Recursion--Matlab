% CLASS Stack
% Methods:
%   push(data) - Pushes data ontop of the stack
%   peek() - peeks at the top data of the stack, does not remove from stack
%   pop() - pops the top node of the stack and returns the node value.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

classdef Stack<handle
   properties
       node
   end
   methods
       %constructor
       function stack = Stack
           stack.node = Node();
       end
       % push implementation for a Stack data structure
       % Push adds node with value to the top of the stack
       function push(stack,data)
          %If the stack is not empty,
          %tmp = current node stack
          %current node stack = new node
          %current node stack next node = tmp
          if ~isempty(stack.node.getNodeValue())
             tmp = stack.node;
             stack.node = Node();
             stack.node.setNodeValue(data);
             stack.node.setNextNode(tmp);
          else
              %If stack.node is empty then add the value to the initial 
              %stack.node
              stack.node.setNodeValue(data); 
          end
       end
       % peek implementation for a Stack data structure
       % peek returns the top value currently on the stack
       function value = peek(stack)
           if ~isempty(stack.node.getNodeValue())
              value = stack.node.getNodeValue();
           else
               error("can't peek, stack is empty")
           end
       end
       % pop implementation for a Stack data structure
       % pop removes the top node of the stack data structure
       function val = pop(stack)
           %if stack is not empty
          % assign return value as current node value
          % overwrite current node as next node
          if ~isempty(stack.node.getNodeValue())
              val = stack.node.getNodeValue();
              stack.node = stack.node.getNextNode();
              if isempty(stack.node)
                  stack.node = Node()
              end
          else
              % if stack is empty
              %display error message
              stack.node = Node()
              error("Can't pop off stack, stack is empty");
          end
          
       end
   end
end