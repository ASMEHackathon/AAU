for i=1:length(test_X)
    a=[test_Y(i,:)];
    pred_y(i) = BP2y.predictFcn(a)
end
