function ids = nmos(vds,vgs,KP,W,L,vto)
ids = zeros(size(vds)); % Initialize output array with all zeros
k = (W/L)*KP/2; % Combine devices material parameters
% For non-cutoff operation:
if vgs >= vto
% Find points in vds that are in the triode region
ktri = find(vds<=(vgs-vto) & vds >= 0); % Points less than (gate – threshold voltage)
% If points are found in the triode region compute ids with proper formula
if ~isempty(ktri)
ids(ktri) = k*(2*(vgs-vto).*vds(ktri)-vds(ktri).^2);
end
% Find points in saturation region
ksat = find(vds>(vgs-vto) & vds >= 0); % Points greater than the excess voltage
% if points are found in the saturation regions compute ids with proper formula
if ~isempty(ksat)
ids(ksat) = k*((vgs-vto).^2);
end
% If points of vds are outside these ranges, then the ids values remain zero
end
end