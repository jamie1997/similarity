clc,clear
fea_path = '/home/jamie/workspace/all_split_test/data/';
all_fea_name = 'fea_all.fea';
fea = sprintf([fea_path,all_fea_name]);
feafile = fopen(fea,'rb');
[dims] = fread(feafile,1,'int');
[num] = fread(feafile,1,'int');
feature = fread(feafile,dims * num,'float');
feature = reshape(feature,dims,num);
    
    
    
all_list_name = 'list_all.txt';

list_name = textread([fea_path,all_list_name],'%s');
numTrail = 10;
%verify
verify=[];
for t = 1:numTrail
    table_path = ['/home/jamie/Data/IJBA/IJB-A_11_sets/split',num2str(t),'/train_',num2str(t),'.csv'];
    database = readtable(table_path);
    imglist = database.FILE;
    
    verify(t).template = database.TEMPLATE_ID;
    verify(t).media = database.MEDIA_ID;
    verify(t).label = database.SUBJECT_ID;
    for j = 1:length(imglist)
        [pathstr,name,ext] = fileparts(imglist{j});
        img_name = [pathstr,'/',name,'.jpg'];
        verify_id(j) = find(strcmp(list_name,img_name));
    end
 verify(t).fea = feature(:,verify_id(:));
end
train = verify;
save('/home/jamie/workspace/all_split_test/data/train_verify/IJBA_11_mtcnn_vgg2_train.mat','train','-v7.3');




fclose(feafile);


%gal
% 
% for t = 1:numTrail
%     table_path = ['/home/sunjiangyue/Data/IJBA/IJB-A_1N_sets/split',num2str(t),'/search_gallery_',num2str(t),'.csv'];
%     database = readtable(table_path);
%     imglist = database.FILE;
%     for j = 1:length(imglist)
%         [pathstr,name,ext] = fileparts(imglist{j});
%         img_name = [pathstr,'/',name,'.jpg'];
%         gal_id(t,j) = find(strcmp(list_name,img_name));
%     end
% end

        
        
    
