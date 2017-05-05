function hash = sha1(string)
    % sha1 - Compute the SHA1 hash of a string
    %
    % USAGE:
    %   hash = sha1(string)
    %
    % INPUTS:
    %   string: String, input string to be hashed
    %
    % OUTPUTS:
    %   hash:   String, 40-character SHA1 hash of the input string.

    d = java.security.MessageDigest.getInstance('SHA1');
    hash = sprintf('%2.2x', typecast(d.digest(uint8(string)), 'uint8'));
end
