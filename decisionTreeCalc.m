% Original implementation by Javier Fernandez Valles
% Date: October 25, 2018
% Email at: JaviervallesF@gmail.com
% Linkedin: JaviervallesF

function result = decisionTreeCalc(total, n_yes)
    log_yes = n_yes/total*log2(n_yes/total);
    log_no = (total-n_yes)/total*log2((total-n_yes)/total);
    result = -1*(log_yes+log_no);
    if isnan(result)
        result = 0;
    end
end




