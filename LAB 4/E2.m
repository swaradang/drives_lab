s = tf("s");
G = 1/(s^2 + 10 * s + 20);
T = feedback(G,1);
step(T)
