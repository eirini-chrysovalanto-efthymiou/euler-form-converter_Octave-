
function eulers_form = exp_to_eulers()
    % Get input from user
    a = input('Give me the a from e^(a*x) where x is the variable: ');

    % Error checking
    if isempty(a)
        disp('Please enter a value for a');
        eulers_form = '';
        return;
    elseif ~isnumeric(a) || ~isscalar(a)
        disp('Please enter a numeric scalar value, not a letter or vector');
        eulers_form = '';
        return;
    end

    % For purely imaginary case (Euler's formula)
    if imag(a) ~= 0
        real_part = real(a);
        imag_part = imag(a);
        eulers_form = sprintf('e^(%.2f*x + i*%.2f*x) = e^(%.2f*x)*(cos(%.2f*x) + i*sin(%.2f*x))', ...
                              real_part, imag_part, real_part, imag_part, imag_part);
    else
        % For real exponents, no Euler form
        eulers_form = sprintf('e^(%.2f*x)', a);
        disp('No Euler form for purely real exponents.');
    end

    % Display result
    disp(['For a = ', num2str(a), ', the expression is:']);
    disp(eulers_form);
end

