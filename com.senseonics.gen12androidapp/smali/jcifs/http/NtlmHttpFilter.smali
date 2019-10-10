.class public Ljcifs/http/NtlmHttpFilter;
.super Ljava/lang/Object;
.source "NtlmHttpFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# static fields
.field private static log:Ljcifs/util/LogStream;


# instance fields
.field private defaultDomain:Ljava/lang/String;

.field private domainController:Ljava/lang/String;

.field private enableBasic:Z

.field private insecureBasic:Z

.field private loadBalance:Z

.field private realm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 117
    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .line 118
    move-object v0, p2

    check-cast v0, Ljavax/servlet/http/HttpServletResponse;

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0, p1, v0, v1}, Ljcifs/http/NtlmHttpFilter;->negotiate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Z)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance v1, Ljcifs/http/NtlmHttpServletRequest;

    invoke-direct {v1, p1, v0}, Ljcifs/http/NtlmHttpServletRequest;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljava/security/Principal;)V

    invoke-interface {p3, v1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    return-void
.end method

.method public getFilterConfig()Ljavax/servlet/FilterConfig;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    const-string v0, "jcifs.smb.client.soTimeout"

    const-string v1, "1800000"

    .line 65
    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "jcifs.netbios.cachePolicy"

    const-string v1, "1200"

    .line 66
    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "jcifs.smb.lmCompatibility"

    const-string v1, "0"

    .line 72
    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "jcifs.smb.client.useExtendedSecurity"

    const-string v1, "false"

    .line 73
    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    invoke-interface {p1}, Ljavax/servlet/FilterConfig;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 76
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "jcifs."

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-interface {p1, v1}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "jcifs.smb.client.domain"

    .line 82
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    const-string p1, "jcifs.http.domainController"

    .line 83
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    .line 84
    iget-object p1, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 85
    iget-object p1, p0, Ljcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    const-string p1, "jcifs.http.loadBalance"

    const/4 v0, 0x1

    .line 86
    invoke-static {p1, v0}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmHttpFilter;->loadBalance:Z

    :cond_2
    const-string p1, "jcifs.http.enableBasic"

    .line 88
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmHttpFilter;->enableBasic:Z

    const-string p1, "jcifs.http.insecureBasic"

    .line 90
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmHttpFilter;->insecureBasic:Z

    const-string p1, "jcifs.http.basicRealm"

    .line 92
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    .line 93
    iget-object p1, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string p1, "jCIFS"

    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    :cond_3
    const-string p1, "jcifs.util.loglevel"

    const/4 v0, -0x1

    .line 95
    invoke-static {p1, v0}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_4

    .line 96
    invoke-static {p1}, Ljcifs/util/LogStream;->setLevel(I)V

    .line 98
    :cond_4
    sget-object p1, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    sget p1, Ljcifs/util/LogStream;->level:I

    const/4 v0, 0x2

    if-le p1, v0, :cond_5

    .line 100
    :try_start_0
    sget-object p1, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    const-string v0, "JCIFS PROPERTIES"

    invoke-static {p1, v0}, Ljcifs/Config;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method protected negotiate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Z)Ljcifs/smb/NtlmPasswordAuthentication;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    const-string v0, "Authorization"

    .line 145
    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-boolean v1, p0, Ljcifs/http/NtlmHttpFilter;->enableBasic:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Ljcifs/http/NtlmHttpFilter;->insecureBasic:Z

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x191

    const/4 v5, 0x0

    if-eqz v0, :cond_10

    const-string v6, "NTLM "

    .line 148
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v1, :cond_10

    const-string v6, "Basic "

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_2
    const-string p3, "NTLM "

    .line 150
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 151
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object p3

    .line 154
    iget-boolean v0, p0, Ljcifs/http/NtlmHttpFilter;->loadBalance:Z

    if-eqz v0, :cond_4

    const-string v0, "NtlmHttpChal"

    .line 155
    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/NtlmChallenge;

    if-nez v0, :cond_3

    .line 157
    invoke-static {}, Ljcifs/smb/SmbSession;->getChallengeForDomain()Ljcifs/smb/NtlmChallenge;

    move-result-object v0

    const-string v6, "NtlmHttpChal"

    .line 158
    invoke-interface {p3, v6, v0}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    :cond_3
    iget-object v6, v0, Ljcifs/smb/NtlmChallenge;->dc:Ljcifs/UniAddress;

    .line 161
    iget-object v0, v0, Ljcifs/smb/NtlmChallenge;->challenge:[B

    goto :goto_1

    .line 163
    :cond_4
    iget-object v0, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    invoke-static {v0, v2}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v6

    .line 164
    invoke-static {v6}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;)[B

    move-result-object v0

    .line 167
    :goto_1
    invoke-static {p1, p2, v0}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v0

    if-nez v0, :cond_5

    return-object v5

    :cond_5
    const-string v7, "NtlmHttpChal"

    .line 171
    invoke-interface {p3, v7}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    goto :goto_5

    .line 173
    :cond_6
    new-instance p3, Ljava/lang/String;

    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    const-string v6, "US-ASCII"

    invoke-direct {p3, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v0, 0x3a

    .line 175
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_7

    .line 176
    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_7
    move-object v7, p3

    :goto_2
    if-eq v0, v6, :cond_8

    add-int/2addr v0, v2

    .line 177
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_8
    const-string p3, ""

    :goto_3
    const/16 v0, 0x5c

    .line 179
    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v6, :cond_9

    const/16 v0, 0x2f

    .line 180
    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :cond_9
    if-eq v0, v6, :cond_a

    .line 181
    invoke-virtual {v7, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_a
    iget-object v8, p0, Ljcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    :goto_4
    if-eq v0, v6, :cond_b

    add-int/2addr v0, v2

    .line 183
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 184
    :cond_b
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v0, v8, v7, p3}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object p3, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    invoke-static {p3, v2}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v6

    .line 189
    :goto_5
    :try_start_0
    invoke-static {v6, v0}, Ljcifs/smb/SmbSession;->logon(Ljcifs/UniAddress;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 191
    sget-object p3, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    sget p3, Ljcifs/util/LogStream;->level:I

    const/4 v7, 0x2

    if-le p3, v7, :cond_c

    .line 192
    sget-object p3, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NtlmHttpFilter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " successfully authenticated against "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_c
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object p1

    const-string p2, "NtlmHttpAuth"

    invoke-interface {p1, p2, v0}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object p1, v0

    goto/16 :goto_6

    :catch_0
    move-exception p3

    .line 196
    sget-object v6, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    sget v6, Ljcifs/util/LogStream;->level:I

    if-le v6, v2, :cond_d

    .line 197
    sget-object v2, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NtlmHttpFilter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": 0x"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljcifs/smb/SmbAuthException;->getNtStatus()I

    move-result v0

    const/16 v7, 0x8

    invoke-static {v0, v7}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 201
    :cond_d
    invoke-virtual {p3}, Ljcifs/smb/SmbAuthException;->getNtStatus()I

    move-result p3

    const v0, -0x3ffffffb    # -2.0000012f

    if-ne p3, v0, :cond_e

    .line 205
    invoke-interface {p1, v3}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p1

    if-eqz p1, :cond_e

    const-string p3, "NtlmHttpAuth"

    .line 207
    invoke-interface {p1, p3}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    :cond_e
    const-string p1, "WWW-Authenticate"

    const-string p3, "NTLM"

    .line 210
    invoke-interface {p2, p1, p3}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_f

    const-string p1, "WWW-Authenticate"

    .line 212
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Basic realm=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_f
    invoke-interface {p2, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 216
    invoke-interface {p2, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 217
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    return-object v5

    :cond_10
    if-nez p3, :cond_13

    .line 223
    invoke-interface {p1, v3}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p1

    if-eqz p1, :cond_11

    const-string p3, "NtlmHttpAuth"

    .line 224
    invoke-interface {p1, p3}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljcifs/smb/NtlmPasswordAuthentication;

    if-nez p1, :cond_14

    :cond_11
    const-string p1, "WWW-Authenticate"

    const-string p3, "NTLM"

    .line 226
    invoke-interface {p2, p1, p3}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_12

    const-string p1, "WWW-Authenticate"

    .line 228
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Basic realm=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_12
    invoke-interface {p2, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 232
    invoke-interface {p2, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 233
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    return-object v5

    :cond_13
    move-object p1, v5

    :cond_14
    :goto_6
    return-object p1
.end method

.method public setFilterConfig(Ljavax/servlet/FilterConfig;)V
    .locals 0

    .line 245
    :try_start_0
    invoke-virtual {p0, p1}, Ljcifs/http/NtlmHttpFilter;->init(Ljavax/servlet/FilterConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
