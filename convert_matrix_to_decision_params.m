% Original implementation by Javier Fernandez Valles
% Date: October 25, 2018
% Email at: JaviervallesF@gmail.com
% Linkedin: JaviervallesF

%Singers Matrix >.<
% test_mat = [1,1,1,1,1;2,2,1,2,1;3,1,2,1,0;3,3,2,1,0;1,2,3,1,1;2,2,3,3,0;2,3,2,1,0;2,1,1,1,0;3,2,3,3,1;1,1,1,2,0]

function [total, n_yes, s1_total, s1_yes, s2_total, s2_yes] = convert_matrix_to_decision_params(target_mat, recursive_it)
    % target_column is always the last one
    target_col = numcols(target_mat);
   
    % for now do it for one layer, and one other col
    total = numrows(target_mat);
    
    n_yes = sum(target_mat(:,target_col) == 1);

    % get the position of D1, D2, .. , Dn into S1, S2, S3
    % for now we use col 1 as example
    s1_total = sum(target_mat(:,recursive_it) == 1);
    s2_total = sum(target_mat(:,recursive_it) == 2);

    s1_yes = sum((target_mat(:,recursive_it)) == 1 & (target_mat(:,target_col)) == 1);
    s2_yes = sum((target_mat(:,recursive_it)) == 2 & (target_mat(:,target_col)) == 1);
end

