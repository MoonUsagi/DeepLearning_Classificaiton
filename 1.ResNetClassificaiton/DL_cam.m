%% DL_cam
% Fred liu 2022.5.19 % update 2023.05.17
% cemera stream image deeplearning classification
%%
net = resnet18;
cam  = webcam;

while(1)
    img = snapshot(cam);
    image(img)
    img2 = imresize(img,[224 224]);
    label = classify(net,img2);
    disp(label)
end

