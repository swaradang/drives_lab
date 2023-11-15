s = tf("s");
G = 1/(s^2 + 10 * s + 20);
%kp = 50;
for kp=0:50:300
for ki=0:50:300
for kd=0:50:300
C= pid(kp,ki,kd);
T = feedback(C*G,1);
step(T,[0:.01:2])
hold on
end
end
end