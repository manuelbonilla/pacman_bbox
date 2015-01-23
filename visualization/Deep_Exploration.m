%
load('sim_info_pp') %To_Adams espresso in millimetri
show_plot =  1;
%
deep_selected_points = [] ; % matrice, ogni colonna contiente i punti da esplorare per una nuvola
deep_selected_index  = [];  % matrice, ogni colonna contiente gli indici dei punti da esplorare per una nuvola
deep_To_Adams = []; % matrice a tre indice, ogni matrice è l'intorno di un punto
%
how_many_around  = 40 ; % 30 più un po' per le singolarità...
how_many_samples = 10 ; % punti nell'intorno dei verdi da investigare ulteriormente
%
verdi_index_unique = unique(verdi_index) ; % verdi index, viene dal workspace, contiene l'idice dei punti attorno ai quali fare una nuvola
%
dist_mat = []; % matrice che ha una colonna per ogni verde unico
               % e righe pari ai punti, ogni riga contiene la distanza
               % dall'elemento
%
dist_temp = [] ; % creo le colonne per dist_mat
closest_points = [] ;  % per ciascun verde devo cerca i punti più vicini, purchè esenti da singolarità
%                      % di rappresentazione di Eulero ZXZ, matrice a tre
%                      % indici, una matrice per ogni punto verde_unique,
%                      % una riga per ogni punto di nuova esplorazione
%                      % della nuvola
%
closest_normals = [] ; % le normale dei punti della nuvola, matrice a tre indici
index_unsorted_points = [] ; % matrice, una colonna per ogni verde_unique, una riga per i punti della nuvola
%
closest_points_temp=[];     % matrice a 2 indici, la calcolo per ogni nuvola, una riga per ogni punto della nuvola
closest_normals_temp = [] ; % matrice a 2 indici, la calcolo per ogni nuvola, una riga per ogni punto della nuvola
index_unsorted_points_temp = [] ; % vettore riga per ogni punto della nuvola, indice dei punti, nel file ply
rot_z1 = [] ;
rot_x2 = [] ;
rot_z3 = [] ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% calcolo le distanze di tutti i punti da ogni verde_unique
% verdi_index_unique = 1503
for j= 1: length(verdi_index_unique)
    dist_temp = [];
    for i = 1 : size(points,1)
        if i ~= verdi_index_unique(j)
            dist_temp = [dist_temp ; norm( points(i,:)- points(verdi_index_unique(j),:) )  ] ;
        else
            dist_temp = [dist_temp ; 10000] ; % se sto calcolando la distanza di un punto da sè stesso la metto elevatissima
        end
    end % dist_temp è diventato un vettore colonna
    dist_mat = [dist_mat, dist_temp]; % ciascuna colonna contiene le distanze da un "verde" unico
end
%
%
for i = 1 : size(dist_mat,2) % un ciclo per ogni verde_unique
    %
    dist_temp = dist_mat(:,i) ;  % per un verde_unique (indice i) ordino i punti in base alla distanza
    [sorted_dist, index_unsorted_points_temp ]= sort(dist_temp) ;
    
    %index_unsorted_points = [index_unsorted_points, index_unsorted_points_temp] % una colonna per ogni verde_unique
%     %
% Per ciascuno punto/normale della nuvola ("how_many_around") mi calcolo Euler ZXZ
%
closest_points_temp   =   points(index_unsorted_points_temp(1 : how_many_around),[1,2,3]) ; % prendo l'ultima colonna, la i-esima
closest_normals_temp  = normals(index_unsorted_points_temp(1 : how_many_around),[1,2,3]) ;
index_closest_point_temp = index_unsorted_points_temp(1 : how_many_around) ;
%      ... temp perchè devono essere ancora elaborati
%
closest_palm_points_temp  = closest_points_temp + dist*closest_normals_temp ;% dist viene dal workspace caricato
closest_palm_normals_temp = -closest_normals_temp ;
%
% Inizio il calcolo di Euler ZXZ per ogni punto della nuvola
R = zeros(3,3,length(closest_palm_normals_temp));
%
for k = 1:size(closest_normals_temp,1)
temp = null(closest_palm_normals_temp(k,:)) ;
R(:,:,k) = [cross(temp(:,1), closest_palm_normals_temp(k,:)'), temp(:,1)  , closest_palm_normals_temp(k,:)'] ;
end
%
cos_theta =[];
theta = [];
cos_psi = [];
psi =[] ;
cos_sigma = [];
sigma=[];
for h = 1:size(closest_palm_normals_temp,1)
    cos_theta_temp = R(3,3, h) ;
    theta_temp   =  acos(cos_theta_temp) ;
    if abs(sin(theta_temp)) >= .01 % tolleranza alla singolarità di rappresentazione
        theta     =  [theta      ;   acos(cos_theta_temp) ];
        cos_psi_temp   =   -R(2,3,h) / sin(theta(h)) ;
        psi       =  [psi        ;   acos(cos_psi_temp)         ] ;
        cos_sigma_temp =  (R(3,2,h) / sin(theta(h))) ;
        sigma     =  [sigma      ;   acos(cos_sigma_temp)      ];
    else
        theta     =  [theta      ;   0      ];
        psi       =  [psi        ;   0      ] ;
        sigma     =  [sigma      ;   0      ];
    end
end
%
rot_z1_temp = psi ;   % Vettori colonna, una riga per ogni punto della nuvola attorno all'i-esimo
rot_x2_temp = theta ; % verde_unique
rot_z3_temp = sigma ;
%    
% Selezioni delle rotazioni per eliminare le singolarità ;    
% devo portarmi dietro solo gli indici dei punti che ancora uso
% e di queste rotazioni non singolari ne pesco "how_many_samples" random    
%
% Inizializzo le variabili da ridurre, levando le singolarità
index_unsorted_points_temp2 = [] ;
closest_normals_temp2 = [];
closest_points_temp2 = [];
R_2 =  [] ;
closest_palm_points_temp2  = [] ;
closest_palm_normals_temp2 = [];
rot_z1_temp2 = [] ;   
rot_x2_temp2 = [] ;
rot_z3_temp2 = [] ;
%
rot_temp = [rot_z1_temp, rot_x2_temp, rot_z3_temp];
% scarto quelli con singolarità
for u = 1 : how_many_around
    if norm(rot_temp(u,:)) ==0 
        continue
    else
        index_unsorted_points_temp2 = [index_unsorted_points_temp2;   index_unsorted_points_temp(u) ] ;
        closest_normals_temp2 = [closest_normals_temp2; closest_normals_temp(u,:)];
        closest_points_temp2 = [closest_points_temp2; closest_points_temp(u,:)];
        R_2(:,:,end+1) =  R(:,:,u) ;
        closest_palm_points_temp2  = [closest_palm_points_temp2; closest_palm_points_temp(u,:)] ;
        closest_palm_normals_temp2 = [closest_palm_normals_temp2; closest_palm_normals_temp(u,:)];
        rot_z1_temp2 = [rot_z1_temp2; rot_z1_temp(u)] ;
        rot_x2_temp2 = [rot_x2_temp2; rot_x2_temp(u)] ;
        rot_z3_temp2 = [rot_z3_temp2; rot_z3_temp(u)] ;
    end
end
% 
% ne scelgo "how_many_samples" in modo random random
%
if length(index_unsorted_points_temp2) <   how_many_samples
    error('error: not enough good samples')
else
    random_samples = ceil(rand(how_many_samples,1)*size(closest_points_temp2,1)) ;%ceil(rand(num_samples,1)*size(points,1)) ;
    index_unsorted_points_temp3 = index_unsorted_points_temp2(random_samples) ;
    closest_normals_temp3 = closest_normals_temp2(random_samples,:) ;
    closest_points_temp3 = closest_points_temp2(random_samples,:) ;
    R_3 =  R_2(:,:,random_samples);
    closest_palm_points_temp3  = closest_palm_points_temp2(random_samples,:) ;
    closest_palm_normals_temp3 = closest_palm_normals_temp2(random_samples,:) ;
    rot_z1_temp3 = rot_z1_temp2(random_samples) ;
    rot_x2_temp3 = rot_x2_temp2(random_samples) ;
    rot_z3_temp3 = rot_z3_temp2(random_samples) ;
end
%
deep_To_Adams(:,:,i) = [ closest_palm_points_temp3,  rot_z1_temp3, rot_x2_temp3 , rot_z3_temp3 ] ; %deep_To_Adams espresso in millimetri
%
index_unsorted_points = [ index_unsorted_points, index_unsorted_points_temp3] ;
closest_normals(:,:,i)      =  closest_normals_temp3  ; 
closest_points(:,:,i)       =  closest_points_temp3   ;
closest_palm_points(:,:,i)  =  closest_palm_points_temp3   ;
closest_palm_normals(:,:,i) =  closest_palm_normals_temp3  ;
rot_z1 = [ rot_z1, rot_z1_temp3 ] ;   
rot_x2 = [ rot_x2, rot_x2_temp3 ] ;
rot_z3 = [ rot_z3, rot_z3_temp3 ] ;
%
end
%
deep_To_Adams2 = [];
index_points_To_Adams2 = [] ;
%
for i = 1 : size(deep_To_Adams,3) % terzo indice della matrice
    Aux_To_Adams = [] ;
    Aux_index_points_To_Adams = [] ;
    for k= 1:size(deep_To_Adams(:,:,1),1) % indice di riga
        for j = 0: (num_rotations-1)  %
            Aux_To_Adams        =    [  Aux_To_Adams;    deep_To_Adams(k,:,i)  ] ;
            Aux_To_Adams(end,6) =     deep_To_Adams(k,6,i) + j*2*pi/num_rotations ;
            Aux_index_points_To_Adams = [Aux_index_points_To_Adams; index_unsorted_points(k,i)] ;
            %        Aux_selected_points =    [Aux_selected_points; selected_points(i,:) ];
            %        Aux_selected_index  =    [Aux_selected_index ; selected_index(i,:) ];
        end
    end
    deep_To_Adams2(:,:,i) = Aux_To_Adams ;
    index_points_To_Adams2 = [index_points_To_Adams2, Aux_index_points_To_Adams];
end
%
deep_To_Adams = deep_To_Adams2 ;
index_points_To_Adams = index_points_To_Adams2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
deep_CMDGenerator(deep_To_Adams); % deep_To_Adams espresso in millimetri
deep_ACFGenerator(deep_To_Adams);
%
save('deep_sim_info')




















