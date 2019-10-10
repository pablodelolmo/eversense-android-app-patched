.class public abstract Ljcifs/http/NtlmServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "NtlmServlet.java"


# instance fields
.field private defaultDomain:Ljava/lang/String;

.field private domainController:Ljava/lang/String;

.field private enableBasic:Z

.field private insecureBasic:Z

.field private loadBalance:Z

.field private realm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Ljavax/servlet/ServletConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 75
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServlet;->init(Ljavax/servlet/ServletConfig;)V

    const-string v0, "jcifs.smb.client.soTimeout"

    const-string v1, "300000"

    .line 79
    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "jcifs.netbios.cachePolicy"

    const-string v1, "600"

    .line 80
    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    invoke-interface {p1}, Ljavax/servlet/ServletConfig;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 84
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "jcifs."

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-interface {p1, v1}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "jcifs.smb.client.domain"

    .line 90
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    const-string p1, "jcifs.http.domainController"

    .line 91
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    .line 92
    iget-object p1, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 93
    iget-object p1, p0, Ljcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    const-string p1, "jcifs.http.loadBalance"

    const/4 v0, 0x1

    .line 94
    invoke-static {p1, v0}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmServlet;->loadBalance:Z

    :cond_2
    const-string p1, "jcifs.http.enableBasic"

    .line 96
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmServlet;->enableBasic:Z

    const-string p1, "jcifs.http.insecureBasic"

    .line 98
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmServlet;->insecureBasic:Z

    const-string p1, "jcifs.http.basicRealm"

    .line 100
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    .line 101
    iget-object p1, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string p1, "jCIFS"

    iput-object p1, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method protected service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-boolean v0, p0, Ljcifs/http/NtlmServlet;->enableBasic:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ljcifs/http/NtlmServlet;->insecureBasic:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Authorization"

    .line 109
    invoke-interface {p1, v3}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x191

    if-eqz v3, :cond_c

    const-string v5, "NTLM "

    .line 110
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v0, :cond_c

    const-string v5, "Basic "

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 112
    :cond_2
    iget-boolean v5, p0, Ljcifs/http/NtlmServlet;->loadBalance:Z

    if-eqz v5, :cond_3

    .line 113
    new-instance v5, Ljcifs/UniAddress;

    iget-object v6, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v6

    invoke-direct {v5, v6}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 115
    :cond_3
    iget-object v5, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    invoke-static {v5, v2}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v5

    :goto_1
    const-string v6, "NTLM "

    .line 118
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 119
    invoke-static {v5}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;)[B

    move-result-object v1

    .line 120
    invoke-static {p1, p2, v1}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v1

    if-nez v1, :cond_a

    return-void

    .line 123
    :cond_4
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x6

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    const-string v7, "US-ASCII"

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v3, 0x3a

    .line 125
    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_5

    .line 126
    invoke-virtual {v6, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_5
    move-object v8, v6

    :goto_2
    if-eq v3, v7, :cond_6

    add-int/2addr v3, v2

    .line 127
    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    const-string v3, ""

    :goto_3
    const/16 v6, 0x5c

    .line 129
    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v7, :cond_7

    const/16 v6, 0x2f

    .line 130
    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    :cond_7
    if-eq v6, v7, :cond_8

    .line 131
    invoke-virtual {v8, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    iget-object v1, p0, Ljcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    :goto_4
    if-eq v6, v7, :cond_9

    add-int/2addr v6, v2

    .line 133
    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 134
    :cond_9
    new-instance v2, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v2, v1, v8, v3}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 137
    :cond_a
    :try_start_0
    invoke-static {v5, v1}, Ljcifs/smb/SmbSession;->logon(Ljcifs/UniAddress;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_0
    .catch Ljcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v0

    const-string v2, "NtlmHttpAuth"

    .line 150
    invoke-interface {v0, v2, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "ntlmdomain"

    .line 151
    invoke-virtual {v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "ntlmuser"

    .line 152
    invoke-virtual {v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :catch_0
    const-string p1, "WWW-Authenticate"

    const-string v1, "NTLM"

    .line 139
    invoke-interface {p2, p1, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_b

    const-string p1, "WWW-Authenticate"

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic realm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string p1, "Connection"

    const-string v0, "close"

    .line 144
    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-interface {p2, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 146
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    return-void

    .line 154
    :cond_c
    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v1

    if-eqz v1, :cond_e

    const-string v2, "NtlmHttpAuth"

    .line 155
    invoke-interface {v1, v2}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_6

    .line 166
    :cond_d
    :goto_5
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void

    :cond_e
    :goto_6
    const-string p1, "WWW-Authenticate"

    const-string v1, "NTLM"

    .line 156
    invoke-interface {p2, p1, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_f

    const-string p1, "WWW-Authenticate"

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic realm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_f
    invoke-interface {p2, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 162
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    return-void
.end method
