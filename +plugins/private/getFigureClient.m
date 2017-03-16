function f = getFigureClient(hfig)
    % getFigureClient - Get the underlying java handle to the figure client
    %
    % USAGE:
    %   f = getFigureClient(hfig)
    %
    % INPUTS:
    %   hfig:   Handle, handle to the figure
    %
    % OUTPUTS:
    %   f:      Object, a java object of type FigureHG1Mediator or similar

    warning('off','MATLAB:HandleGraphics:ObsoletedProperty:JavaFrame');
    jFrame = get(handle(hfig), 'JavaFrame');

    try
        if isa(hfig, 'double') || isa(handle(hfig), 'figure')
            f = jFrame.fHG1Client;
        else
            f = jFrame.fHG2Client;
        end
    catch
        f = jFrame.fFigureClient;
    end
end
