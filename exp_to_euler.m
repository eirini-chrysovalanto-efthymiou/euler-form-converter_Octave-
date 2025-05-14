
function eulers_form = exp_to_eulers()
    % Initialize the output variable with a default empty value
    eulers_form = '';

    % Get user input for the exponent 'a'
    a = input('Give me the a from e^(a*x): ');

    % Input validation
    if isempty(a)
        disp('Error: You must enter a value for a.');
        return;  % Exit early if input is invalid
    elseif ~isnumeric(a) || ~isscalar(a)
        disp('Error: Please enter a numeric scalar value.');
        return;  % Exit early if input is not acceptable
    end

    % Compute Euler's form if 'a' has an imaginary part
    if imag(a) ~= 0
        real_part = real(a);
        imag_part = imag(a);
        eulers_form = sprintf('e^(%.2f*x + i*%.2f*x) = e^(%.2f*x)*(cos(%.2f*x) + i*sin(%.2f*x))', ...
                              real_part, imag_part, real_part, imag_part, imag_part);
    else
        % If 'a' is purely real, Euler's form is not applicable
        eulers_form = sprintf('e^(%.2f*x)', a);
        disp('Note: No Euler form for purely real exponents.');
    end
end


