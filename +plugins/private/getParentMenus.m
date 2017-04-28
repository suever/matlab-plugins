function parents = getParentMenus(hmenu)
    % getParentMenus - Traverse the HG heirarchy to get all uimenu parents
    %
    % USAGE:
    %   parents = getParentMenus(hmenu)
    %
    % INPUTS:
    %   hmenu:  Handle, Graphics handle to the uimenu item of interest
    %
    % OUTPUTS:
    %   parents:  [1 x N] Handle Array, Array of graphics handles to all
    %             parent menus

    % Initialize the output to an empty array of graphics objects
    parents = gobjects(1, 0);

    while true
        parent = get(hmenu, 'Parent');

        % Only append to the output if it is non-empty and a uimenu
        if ishghandle(parent, 'uimenu')
            hmenu = parent;
            parents = cat(2, parents, parent);
        else
            return
        end
    end
end
