function L = EulerDynamics(j)
global uLINK
I = uLINK(j).R * uLINK(j).I * uLINK(j).R';    % ตซe\
L = I * uLINK(j).w;                           % p^ฎส
uLINK(j).dw  = I \ (-cross(uLINK(j).w, L));   % Eulerฬ๛๖ฎ