msg=[1 0 1 1 0 1 0 0];
constraint_length=3;
generator_polynomials=[75];
trellis=poly2trellis(constraint_length,generator_polynomials);
encoded_msg=convenc(msg,trellis);
Encoded_msg_noisy=Encoded_msg;
encoded_msg_noisy(4)=~encoded_msg_noisy(4);
traceback_length=5;
decoded_msg=vitdec(encoded_msg_noisy,trellis,traceback_length,'trunc','hard');
disp('original message:');
disp(msg);
disp('encoded message:')
disp(encoded_msg);
disp('noisy encoded message:');
disp(encoded_msg_noisy);
disp('decoded message:');
disp(decoded_msg);
