% CLASS Stack
% Methods:
%   push(data) - Pushes data ontop of the stack
%   peek() - peeks at the top data of the stack, does not remove from stack
%       peak returns -1 if the stack is empty
%       This is useful for the peg object
%   pop() - pops the top node of the stack and returns the node value.
%   itemArray() - return all items in the stack as array
%   variable "size" holds how many items are in the stack
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

classdef Stack<handle
   properties
       node
       size
   end
   methods
       %constructor
       function stack = Stack
           stack.node = Node();
           stack.size = 0;
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
          stack.size = stack.size + 1;
       end
       % peek implementation for a Stack data structure
       % peek returns the top value currently on the stack
       function value = peek(stack)
           if ~isempty(stack.node.getNodeValue())
              value = stack.node.getNodeValue();
           else
               value = -1;
               %error("can't peek, stack is empty")
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
              stack.size = stack.size - 1;
          else
              % if stack is empty
              %display error message
              stack.node = Node()
              error("Can't pop off stack, stack is empty");
          end
       end
       function value = itemArray(stack)
           value = [];
           currentStack = stack.node;
           for i = 1 : stack.size
               nodeValue = currentStack.getNodeValue();
               value(i) = nodeValue;
               currentStack = currentStack.getNextNode();
           end
       end
       
   end
end