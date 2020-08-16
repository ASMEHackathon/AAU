for i=1:length(test_X)
    a=[test_X(i,:)];
    pred_y(i) = BP1x.predictFcn(a)
end
