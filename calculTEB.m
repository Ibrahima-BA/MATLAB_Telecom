SNR=0:10;
TEB=zeros(1,length(SNR));
for k=1:length(SNR)
    EbNo=SNR(k);
    sim('MPSK');
    TEB(k)= MonTEB(1);
end
semilogy(SNR,TEB,'*-')

% Autre Methode avec la commande %  bertool