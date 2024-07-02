struct str_t {
    string val<>;
};

program SCHANNEL_PROG {
    version SCHANNEL_VERS {
        str_t sign_kex(str_t) = 1;
    } = 1;
} = 0x0;
