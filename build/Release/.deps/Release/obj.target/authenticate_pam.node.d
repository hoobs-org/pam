cmd_Release/obj.target/authenticate_pam.node := g++ -shared -pthread -rdynamic -m64  -Wl,-soname=authenticate_pam.node -o Release/obj.target/authenticate_pam.node -Wl,--start-group Release/obj.target/authenticate_pam/authenticate_pam.o -Wl,--end-group -lpam