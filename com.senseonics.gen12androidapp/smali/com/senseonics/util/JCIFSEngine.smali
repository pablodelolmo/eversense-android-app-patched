.class public Lcom/senseonics/util/JCIFSEngine;
.super Ljava/lang/Object;
.source "JCIFSEngine.java"

# interfaces
.implements Lorg/apache/http/impl/auth/NTLMEngine;


# static fields
.field private static final TYPE_1_FLAGS:I = -0x5ff77ffc


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 26
    new-instance v0, Ljcifs/ntlmssp/Type1Message;

    const v1, -0x5ff77ffc

    invoke-direct {v0, v1, p1, p2}, Ljcifs/ntlmssp/Type1Message;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljcifs/ntlmssp/Type1Message;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljcifs/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateType3Msg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 38
    :try_start_0
    new-instance v1, Ljcifs/ntlmssp/Type2Message;

    invoke-static {p5}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p5

    invoke-direct {v1, p5}, Ljcifs/ntlmssp/Type2Message;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    invoke-virtual {v1}, Ljcifs/ntlmssp/Type2Message;->getFlags()I

    move-result p5

    const v0, -0x30001

    and-int v6, p5, v0

    .line 46
    new-instance p5, Ljcifs/ntlmssp/Type3Message;

    move-object v0, p5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Ljcifs/ntlmssp/Type3Message;-><init>(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    invoke-virtual {p5}, Ljcifs/ntlmssp/Type3Message;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljcifs/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 40
    new-instance p2, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string p3, "Error in type2 message"

    invoke-direct {p2, p3, p1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
