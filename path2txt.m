numTrail =10;
% for t =1:numTrail
% table_path = ['/home/sunjiangyue/Data/IJBA/IJB-A_11_sets/split',num2str(t),'/verify_metadata_',num2str(t),'.csv'];
% database = readtable(table_path);
% verify(t).template = database.TEMPLATE_ID;
% verify(t).media = database.MEDIA_ID;
% verify(t).label = database.SUBJECT_ID;
% 
% imglist = database.FILE;
% txtpath = '/home/sunjiangyue/workspace/all_split_test/txt_folder/';
% fid = fopen([txtpath,'verify_',num2str(t),'.txt'],'wt');
% for i = 1:length(imglist)
%     fprintf(fid,'%s 0\n',imglist{i});
% end
% fclose(fid)
% end

for t =1:numTrail
table_path = ['/home/sunjiangyue/Data/IJBA/IJB-A_1N_sets/split',num2str(t),'/search_gallery_',num2str(t),'.csv'];
database = readtable(table_path);
verify(t).template = database.TEMPLATE_ID;
verify(t).media = database.MEDIA_ID;
verify(t).label = database.SUBJECT_ID;

imglist = database.FILE;
txtpath = '/home/sunjiangyue/workspace/all_split_test/txt_folder/';
fid = fopen([txtpath,'gal_',num2str(t),'.txt'],'wt');
for i = 1:length(imglist)
    fprintf(fid,'%s 0\n',imglist{i});
end
fclose(fid)
end

for t =1:numTrail
table_path = ['/home/sunjiangyue/Data/IJBA/IJB-A_1N_sets/split',num2str(t),'/search_probe_',num2str(t),'.csv'];
database = readtable(table_path);
verify(t).template = database.TEMPLATE_ID;
verify(t).media = database.MEDIA_ID;
verify(t).label = database.SUBJECT_ID;

imglist = database.FILE;
txtpath = '/home/sunjiangyue/workspace/all_split_test/txt_folder/';
fid = fopen([txtpath,'probe_',num2str(t),'.txt'],'wt');
for i = 1:length(imglist)
    fprintf(fid,'%s 0\n',imglist{i});
end
fclose(fid)
end