clear;
syms V;
W =10^6*int(0.24-0.4*V,V,0.1,0.25);
fprintf('(1)气体所做的膨胀功为 %.3f J ',double(W));
syms P_0 L W_1 W_2 V_2 V_1 A F L;
x={0.25,0.1,0.1,10^5,1200};
[V_2,V_1,A,P_0,F ]=deal(x{:});
W_1 = P_0*(V_2-V_1);
eq1 = W_2 == F*L;
eq2 = L == (V_2-V_1)/A;
[W_2,L]=solve([eq1,eq2],[W_2,L]);
fprintf('气体膨胀排斥大气的功为 %.3f J',W_1);
fprintf('摩擦消耗的功为 %.3f J\n',double(W_2));
syms W_u;
W_u = W-W_1-W_2;
disp(sprintf('(2)有用功为 %.3f J ',double(W_u)));
syms W_ure;
W_ure = W-W_1;
disp(sprintf('(3)有用功为 %.3f J ',double(W_ure)));






