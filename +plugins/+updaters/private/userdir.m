function folder = userdir()
    % userdir - Determine the user's home directory in a cross-platform way
    %
    %   On *nix systems this is a very straightforward thing, but the
    %   definition of a home directory on Windows can vary so this function
    %   helps to deal with these cross-platform differences.
    %
    % USAGE:
    %   folder = userdir()
    %
    % OUTPUTS:
    %   folder: String, Absolute path to the user's home directory

    folder = char(java.lang.System.getProperty('user.home'));
end
