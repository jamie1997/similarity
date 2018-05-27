% verify
numTrail =10;
% for t =1:numTrail
% table_path = ['/home/sunjiangyue/Data/IJBA/IJB-A_11_sets/split',num2str(t),'/verify_metadata_',num2str(t),'.csv'];
% database = readtable(table_path);
% verify = [];
% % verify(t).template = database.TEMPLATE_ID;
% % verify(t).media = database.MEDIA_ID;
% % verify(t).label = database.SUBJECT_ID;
% verify.template = database.TEMPLATE_ID;
% verify.media = database.MEDIA_ID;
% verify.label = database.SUBJECT_ID;
% 
% 
% % imglist = database.FILE;
% % txtpath = '/home/sunjiangyue/workspace/txt_folder/';
% % fid = fopen([txtpath,'verify_',num2str(t)],'wt');
% % for i = 1:length(imglist)
% %     fprintf(fid,'%s 0\n',imglist{i});
% % end
% % fclose(fid)
% % feature
% fea_path = '/home/sunjiangyue/feature_test/mtcnn_origion_feature/verify_mtcnn_origion';
% fea = sprintf([fea_path,num2str(t),'.fea']);
% verify_len = length(verify.template);
% feafile = fopen(fea,'rb');
% [dims] = fread(feafile,1,'int');
% [num] = fread(feafile,1,'int');
% feature = fread(feafile,dims * num,'float');
% fclose(feafile);
% feature = reshape(feature,dims,num);
% verify.fea = feature(:,[1:verify_len]);
% struct_path = '/home/sunjiangyue/workspace/all_split_test/data/verify/';
% verify_name = ['IJBA_11_mtcnn_vgg2_verify',num2str(t),'.mat'];
% save([struct_path,verify_name],'verify')
% end
% gal
for t =1:numTrail
table_path = ['/home/sunjiangyue/Data/IJBA/IJB-A_1N_sets/split',num2str(t),'/search_gallery_',num2str(t),'.csv'];
database = readtable(table_path);
verify = [];
% verify(t).template = database.TEMPLATE_ID;
% verify(t).media = database.MEDIA_ID;
% verify(t).label = database.SUBJECT_ID;
verify.template = database.TEMPLATE_ID;
verify.media = database.MEDIA_ID;
verify.label = database.SUBJECT_ID;


% imglist = database.FILE;
% txtpath = '/home/sunjiangyue/workspace/txt_folder/';
% fid = fopen([txtpath,'verify_',num2str(t)],'wt');
% for i = 1:length(imglist)
%     fprintf(fid,'%s 0\n',imglist{i});
% end
% fclose(fid)
% feature
fea_path = '/home/sunjiangyue/feature_test/mtcnn_origion_feature/gal_mtcnn_origion';
fea = sprintf([fea_path,num2str(t),'.fea']);
verify_len = length(verify.template);
feafile = fopen(fea,'rb');
[dims] = fread(feafile,1,'int');
[num] = fread(feafile,1,'int');
feature = fread(feafile,dims * num,'float');
fclose(feafile);
feature = reshape(feature,dims,num);
verify.fea = feature(:,[1:verify_len]);
gal = verify;
struct_path = '/home/sunjiangyue/workspace/all_split_test/data/gal/';
verify_name = ['IJBA_11_mtcnn_vgg2_gal',num2str(t),'.mat'];
save([struct_path,verify_name],'gal')
end


for t =1:numTrail
table_path = ['/home/sunjiangyue/Data/IJBA/IJB-A_1N_sets/split',num2str(t),'/search_probe_',num2str(t),'.csv'];
database = readtable(table_path);
verify = [];
% verify(t).template = database.TEMPLATE_ID;
% verify(t).media = database.MEDIA_ID;
% verify(t).label = database.SUBJECT_ID;
verify.template = database.TEMPLATE_ID;
verify.media = database.MEDIA_ID;
verify.label = database.SUBJECT_ID;


% imglist = database.FILE;
% txtpath = '/home/sunjiangyue/workspace/txt_folder/';
% fid = fopen([txtpath,'verify_',num2str(t)],'wt');
% for i = 1:length(imglist)
%     fprintf(fid,'%s 0\n',imglist{i});
% end
% fclose(fid)
% feature
fea_path = '/home/sunjiangyue/feature_test/mtcnn_origion_feature/probe__mtcnn_origion';
fea = sprintf([fea_path,num2str(t),'.fea']);
verify_len = length(verify.template);
feafile = fopen(fea,'rb');
[dims] = fread(feafile,1,'int');
[num] = fread(feafile,1,'int');
feature = fread(feafile,dims * num,'float');
fclose(feafile);
feature = reshape(feature,dims,num);
verify.fea = feature(:,[1:verify_len]);
probe = verify;
struct_path = '/home/sunjiangyue/workspace/all_split_test/data/probe/';
verify_name = ['IJBA_11_mtcnn_vgg2_probe',num2str(t),'.mat'];
save([struct_path,verify_name],'probe')
end




