function varargout = grafsincos(eil)
sin_val = sin(eil);
cos_val = cos(eil);
if nargout > 0
    varargout{1} = sin_val;
    if nargout > 1
        varargout{2} = cos_val;
    end
else
    figure
    plot(eil, sin_val, eil, cos_val);
end