% Original implementation by Javier Fernandez Valles
% Date: October 25, 2018
% Email at: JaviervallesF@gmail.com
% Linkedin: JaviervallesF

function IG = calc_decision_col(total, n_yes, s1_total, s1_yes, s2_total, s2_yes)
    s3_yes = n_yes - (s1_yes + s2_yes);
    s3_total = total - (s1_total + s2_total);
    H_S     =  decisionTreeCalc(total, n_yes);
    H_S1    =  decisionTreeCalc(s1_total, s1_yes);
    H_S2    =  decisionTreeCalc(s2_total, s2_yes);
    H_S3    =  decisionTreeCalc(s3_total, s3_yes);
    IG      =  H_S - ((s1_total/total)*H_S1 + (s2_total/total)*H_S2 + (s3_total/total)*H_S3);
end