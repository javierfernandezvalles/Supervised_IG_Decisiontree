% Original implementation by Javier Fernandez Valles
% Date: October 25, 2018
% Email at: JaviervallesF@gmail.com
% Linkedin: JaviervallesF

function result = get_ig(target_mat)
    for it = 1 : numcols(target_mat)-1
        [total, n_yes, s1_total, s1_yes, s2_total, s2_yes] = convert_matrix_to_decision_params(target_mat, it);
        calc_decision_col(total, n_yes, s1_total, s1_yes, s2_total, s2_yes)
    end
    
    % Still need to finish this part.. 
    
    
end