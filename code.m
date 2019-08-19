%% 中山大学校歌
%% define the basic sound wave
fs = 44100; %抽样频率
dt = 1/fs; % 根据抽样频率设置抽样周期
T16 = 1/fs*3199*1.5; %以16分音符为一拍，设置一拍的持续时间
t16 = [0:dt:T16];
[temp k] = size(t16);

t1 = linspace(0,16*T16,16*k);%全音符音长，四拍
t2 = linspace(0,8*T16,8*k);%二分音符音长，2拍
t4 = linspace(0,4*T16,4*k);%四分音符音长，1拍
t4d= linspace(0,6*T16,6*k);%1拍半
t8 = linspace(0,2*T16,2*k);%八分音符音长，半拍
% 包络
mod1 = sin(pi*t1/t1(end));
mod2 = sin(pi*t2/t2(end));
mod4 = sin(pi*t4/t4(end));
mod4d= sin(pi*t4d/t4d(end));
mod8 = sin(pi*t8/t8(end));

%% Frequency and note List
f0 = 391.6; % G调，1=G
ScaleTable = [1 2^(1/6) 2^(1/3) 2^(5/12) 2^(1/2) 2^(7/12) 2^(3/4) 2^(11/12)];
           % do   re      mi       fa      #fa      so       la       ti
% 全音符
do1F = mod1.*cos(2*pi*ScaleTable(1)/2*f0*t1);%低八度
re1F = mod1.*cos(2*pi*ScaleTable(2)/2*f0*t1);
mi1F = mod1.*cos(2*pi*ScaleTable(3)/2*f0*t1);
fa1F = mod1.*cos(2*pi*ScaleTable(4)/2*f0*t1);
fa1uF= mod1.*cos(2*pi*ScaleTable(5)/2*f0*t1);% #fa
so1F = mod1.*cos(2*pi*ScaleTable(6)/2*f0*t1);
la1F = mod1.*cos(2*pi*ScaleTable(7)/2*f0*t1);
ti1F = mod1.*cos(2*pi*ScaleTable(8)/2*f0*t1);
do2F = mod1.*cos(2*pi*ScaleTable(1)*f0*t1);
re2F = mod1.*cos(2*pi*ScaleTable(2)*f0*t1);
mi2F = mod1.*cos(2*pi*ScaleTable(3)*f0*t1);
fa2F = mod1.*cos(2*pi*ScaleTable(4)*f0*t1);
fa2uF= mod1.*cos(2*pi*ScaleTable(5)*f0*t1);
so2F = mod1.*cos(2*pi*ScaleTable(6)*f0*t1);
la2F = mod1.*cos(2*pi*ScaleTable(7)*f0*t1);
ti2F = mod1.*cos(2*pi*ScaleTable(8)*f0*t1);
blkF = zeros(size(mod1));% 空拍
% 1/2 音符
do1h = mod2.*cos(2*pi*ScaleTable(1)/2*f0*t2);
re1h = mod2.*cos(2*pi*ScaleTable(2)/2*f0*t2);
mi1h = mod2.*cos(2*pi*ScaleTable(3)/2*f0*t2);
fa1h = mod2.*cos(2*pi*ScaleTable(4)/2*f0*t2);
fa1uh= mod2.*cos(2*pi*ScaleTable(5)/2*f0*t2);
so1h = mod2.*cos(2*pi*ScaleTable(6)/2*f0*t2);
la1h = mod2.*cos(2*pi*ScaleTable(7)/2*f0*t2);
ti1h = mod2.*cos(2*pi*ScaleTable(8)/2*f0*t2);
do2h = mod2.*cos(2*pi*ScaleTable(1)*f0*t2);
re2h = mod2.*cos(2*pi*ScaleTable(2)*f0*t2);
mi2h = mod2.*cos(2*pi*ScaleTable(3)*f0*t2);
fa2h = mod2.*cos(2*pi*ScaleTable(4)*f0*t2);
fa2uh= mod2.*cos(2*pi*ScaleTable(5)*f0*t2);
so2h = mod2.*cos(2*pi*ScaleTable(6)*f0*t2);
la2h = mod2.*cos(2*pi*ScaleTable(7)*f0*t2);
ti2h = mod2.*cos(2*pi*ScaleTable(8)*f0*t2);
blkh = zeros(size(mod2));
% 1/4+1/2 音符
do1fd = mod4d.*cos(2*pi*ScaleTable(1)/2*f0*t4d);
re1fd = mod4d.*cos(2*pi*ScaleTable(2)/2*f0*t4d);
mi1fd = mod4d.*cos(2*pi*ScaleTable(3)/2*f0*t4d);
fa1fd = mod4d.*cos(2*pi*ScaleTable(4)/2*f0*t4d);
fa1ufd= mod4d.*cos(2*pi*ScaleTable(5)/2*f0*t4d);
so1fd = mod4d.*cos(2*pi*ScaleTable(6)/2*f0*t4d);
la1fd = mod4d.*cos(2*pi*ScaleTable(7)/2*f0*t4d);
ti1fd = mod4d.*cos(2*pi*ScaleTable(8)/2*f0*t4d);
do2fd = mod4d.*cos(2*pi*ScaleTable(1)*f0*t4d);
re2fd = mod4d.*cos(2*pi*ScaleTable(2)*f0*t4d);
mi2fd = mod4d.*cos(2*pi*ScaleTable(3)*f0*t4d);
fa2fd = mod4d.*cos(2*pi*ScaleTable(4)*f0*t4d);
fa2ufd= mod4d.*cos(2*pi*ScaleTable(5)*f0*t4d);
so2fd = mod4d.*cos(2*pi*ScaleTable(6)*f0*t4d);
la2fd = mod4d.*cos(2*pi*ScaleTable(7)*f0*t4d);
ti2fd = mod4d.*cos(2*pi*ScaleTable(8)*f0*t4d);
blkfd = zeros(size(mod4d));
% 1/4 音符
do1f = mod4.*cos(2*pi*ScaleTable(1)/2*f0*t4);
re1f = mod4.*cos(2*pi*ScaleTable(2)/2*f0*t4);
mi1f = mod4.*cos(2*pi*ScaleTable(3)/2*f0*t4);
fa1f = mod4.*cos(2*pi*ScaleTable(4)/2*f0*t4);
fa1uf= mod4.*cos(2*pi*ScaleTable(5)/2*f0*t4);
so1f = mod4.*cos(2*pi*ScaleTable(6)/2*f0*t4);
la1f = mod4.*cos(2*pi*ScaleTable(7)/2*f0*t4);
ti1f = mod4.*cos(2*pi*ScaleTable(8)/2*f0*t4);
do2f = mod4.*cos(2*pi*ScaleTable(1)*f0*t4);
re2f = mod4.*cos(2*pi*ScaleTable(2)*f0*t4);
mi2f = mod4.*cos(2*pi*ScaleTable(3)*f0*t4);
fa2f = mod4.*cos(2*pi*ScaleTable(4)*f0*t4);
fa2uf= mod4.*cos(2*pi*ScaleTable(5)*f0*t4);
so2f = mod4.*cos(2*pi*ScaleTable(6)*f0*t4);
la2f = mod4.*cos(2*pi*ScaleTable(7)*f0*t4);
ti2f = mod4.*cos(2*pi*ScaleTable(8)*f0*t4);
blkf = zeros(size(mod4));
% 1/8 音符
do1e = mod8.*cos(2*pi*ScaleTable(1)/2*f0*t8);
re1e = mod8.*cos(2*pi*ScaleTable(2)/2*f0*t8);
mi1e = mod8.*cos(2*pi*ScaleTable(3)/2*f0*t8);
fa1e = mod8.*cos(2*pi*ScaleTable(4)/2*f0*t8);
fa1ue= mod8.*cos(2*pi*ScaleTable(5)/2*f0*t8);
so1e = mod8.*cos(2*pi*ScaleTable(6)/2*f0*t8);
la1e = mod8.*cos(2*pi*ScaleTable(7)/2*f0*t8);
ti1e = mod8.*cos(2*pi*ScaleTable(8)/2*f0*t8);
do2e = mod8.*cos(2*pi*ScaleTable(1)*f0*t8);
re2e = mod8.*cos(2*pi*ScaleTable(2)*f0*t8);
mi2e = mod8.*cos(2*pi*ScaleTable(3)*f0*t8);
fa2e = mod8.*cos(2*pi*ScaleTable(4)*f0*t8);
fa2ue= mod8.*cos(2*pi*ScaleTable(5)*f0*t8);
so2e = mod8.*cos(2*pi*ScaleTable(6)*f0*t8);
la2e = mod8.*cos(2*pi*ScaleTable(7)*f0*t8);
ti2e = mod8.*cos(2*pi*ScaleTable(8)*f0*t8);
blke = zeros(size(mod8));

%% Melody 
s1=[so1f do2f do2fd re2e,mi2f fa2f mi2f re2f,re2f do2f ti1fd la1e,ti1f do2e la1e so1h,...
    so1f do2f do2fd re2e,mi2f fa2f la2f so2f,so2f fa2f mi2fd re2e,do2f re2e ti1e do2h,...
    re2f so1f mi2f do2f,fa2fd mi2e re2f do2f,mi2f fa2f la2f so2f,fa2fd do2e re2f mi2f,...
    mi2fd re2e re2f re2f,re2h mi2f fa2ue fa2ue,so2F,...
    so1f do2f do2fd re2e,mi2f fa2f la2f so2f,so2f fa2f mi2fd re2e,do2f re2e ti1e do2h];
s2=[so1f so1f so1fd ti1e,do2f do2f do2f ti1f,ti1f so1f so1fd la1e,so1f fa1ue fa1e so2h,...
    so1f so1f so1fd ti1e,do2f,do2f do2f ti1f,do2f do2f ti1fd la1e,so1f la1e so1e so1h,...
    so1f so1f so1f so1f,la1fd la1e ti1f la1f,do2f la1f la1f do1f,la1fd so1e so2f so2f,...
    do1fd ti1e ti1f ti1f ti1h do2f la1e do2e,la1F,...
    so1f so1f so1fd ti1e,do1f do1f do1f ti1f,do1f do1f ti1fd la1e,so1f ti1e so1e so1h];
s3=[mi2f mi2f mi2fd so2e,so2f fa2f so2f so2f,so2f mi2f re2fd re2e,re2f so1e do2e ti1h,...
    mi2f mi2f mi2fd so2e,so2f fa2f fa2f fa2f,mi2f la2f so2fd so2e,mi2f fa1e fa2e mi1h,...
    fa2f mi2f mi2f mi2f,do2fd do2e fa2f fa2f,so2f fa2f fa2f mi2f fa2fd mi2e fa2f mi2f,...
    so2fd so2e so2f so2f,so2h so2f do1e re2e,re2F,...
    mi2f mi2f mi2fd so2e,so2f fa2f fa2f fa2f,mi2f la2f so2fd so2e,mi2f fa2e fa2e mi2h];
s4=[do2f do2f do2fd so1e,so1f la1f do1f so1f,ti1f do1f re1fd fa1ue,so1f re1e re1e so1h,...
    do2f do2f do2fd so1e,so1f la1f fa1f so1f,mi1f fa1f so1fd ti1e,do2f so1e so1e do2h,...
    ti1f do2f do2f do2f,fa1fd fa1f fa1f fa2f,do2f do2f do2f do2f,do2fd do2e ti1e do2f,...
    so1fd so1e ti1f re2f,so2h so1f re2e re2e,so2F,...
    do2f do2f do2fd so1e,so1f la1f fa1f so1f,mi1f fa1f so1fd ti1e,do1f so1e so1e do1h];
s=s1+0.4*s2+0.4*s3+0.5*s4; % 多声部

%% Processes before play
sm=max(max(s),abs(min(s)));
s=s./sm;
sound(s,fs);
audiowrite('中山大学校歌.wav',s,fs)