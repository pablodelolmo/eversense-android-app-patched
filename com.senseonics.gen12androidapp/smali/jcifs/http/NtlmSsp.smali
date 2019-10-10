.class public Ljcifs/http/NtlmSsp;
.super Ljava/lang/Object;
.source "NtlmSsp.java"

# interfaces
.implements Ljcifs/ntlmssp/NtlmFlags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    const-string v0, "Authorization"

    .line 84
    invoke-interface {p0, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    const-string v2, "NTLM "

    .line 85
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    .line 86
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v2, 0x8

    .line 87
    aget-byte v3, p0, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 88
    new-instance v2, Ljcifs/ntlmssp/Type1Message;

    invoke-direct {v2, p0}, Ljcifs/ntlmssp/Type1Message;-><init>([B)V

    .line 89
    new-instance p0, Ljcifs/ntlmssp/Type2Message;

    invoke-direct {p0, v2, p2, v0}, Ljcifs/ntlmssp/Type2Message;-><init>(Ljcifs/ntlmssp/Type1Message;[BLjava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljcifs/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object p0

    const-string p2, "WWW-Authenticate"

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NTLM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_0
    aget-byte v2, p0, v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 93
    new-instance p1, Ljcifs/ntlmssp/Type3Message;

    invoke-direct {p1, p0}, Ljcifs/ntlmssp/Type3Message;-><init>([B)V

    .line 94
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->getLMResponse()[B

    move-result-object p0

    if-nez p0, :cond_1

    .line 95
    new-array p0, v1, [B

    :cond_1
    move-object v6, p0

    .line 96
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->getNTResponse()[B

    move-result-object p0

    if-nez p0, :cond_2

    .line 97
    new-array p0, v1, [B

    :cond_2
    move-object v7, p0

    .line 98
    new-instance p0, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->getUser()Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B[B)V

    return-object p0

    :cond_3
    const-string p0, "WWW-Authenticate"

    const-string p2, "NTLM"

    .line 102
    invoke-interface {p1, p0, p2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    const/16 p0, 0x191

    .line 104
    invoke-interface {p1, p0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 105
    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 106
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    return-object v0
.end method


# virtual methods
.method public doAuthentication(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 69
    invoke-static {p1, p2, p3}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object p1

    return-object p1
.end method
