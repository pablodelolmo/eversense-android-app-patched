.class public Lorg/bouncycastle/crypto/tls/TlsStreamCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsCipher;


# static fields
.field private static encryptThenMAC:Z = false


# instance fields
.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field protected decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

.field protected encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

.field protected readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

.field protected writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/StreamCipher;Lorg/bouncycastle/crypto/StreamCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v11

    iput-object v7, v0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    iput-object v8, v0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    iput-object v9, v0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    mul-int/lit8 v1, v10, 0x2

    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface/range {p5 .. p5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int v12, v1, v2

    invoke-static {v7, v12}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/bouncycastle/crypto/tls/TlsContext;I)[B

    move-result-object v13

    new-instance v14, Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    const/4 v5, 0x0

    move-object v1, v14

    move-object v2, v7

    move-object/from16 v3, p4

    move-object v4, v13

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V

    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    const/4 v15, 0x0

    add-int/lit8 v16, v1, 0x0

    new-instance v6, Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-interface/range {p5 .. p5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v17

    move-object v1, v6

    move-object/from16 v3, p5

    move/from16 v5, v16

    move-object v7, v6

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V

    invoke-interface/range {p5 .. p5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    add-int v1, v16, v1

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v13, v1, v10}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    add-int/2addr v1, v10

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v13, v1, v10}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    add-int/2addr v1, v10

    if-eq v1, v12, :cond_0

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    :cond_0
    if-eqz v11, :cond_1

    iput-object v7, v0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object v14, v0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object v9, v0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    iput-object v8, v0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto :goto_0

    :cond_1
    iput-object v14, v0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object v7, v0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object v8, v0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    iput-object v9, v0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    :goto_0
    iget-object v1, v0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v4, 0x1

    invoke-interface {v1, v4, v2}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    invoke-interface {v1, v15, v3}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method private checkMAC(JS[BII[BII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p4, p5, p6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    move-object v1, p0

    iget-object v2, v1, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    move-wide v3, p1

    move v5, p3

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public decodeCiphertext(JS[BII)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v10, p0

    move/from16 v6, p6

    iget-object v0, v10, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    if-ge v6, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    sub-int v11, v6, v0

    sget-boolean v1, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptThenMAC:Z

    if-eqz v1, :cond_1

    add-int v6, p5, v6

    sub-int v5, v6, v0

    move-object v0, v10

    move-wide v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p4

    move/from16 v8, p5

    move v9, v11

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->checkMAC(JS[BII[BII)V

    new-array v0, v11, [B

    iget-object v2, v10, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v7, 0x0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move v5, v11

    move-object v6, v0

    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    return-object v0

    :cond_1
    new-array v12, v6, [B

    iget-object v0, v10, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v5, 0x0

    move-object/from16 v1, p4

    move/from16 v2, p5

    move v3, v6

    move-object v4, v12

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    const/4 v8, 0x0

    move-object v0, v10

    move-wide v1, p1

    move/from16 v3, p3

    move v5, v11

    move-object v7, v12

    move v9, v11

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->checkMAC(JS[BII[BII)V

    const/4 v0, 0x0

    invoke-static {v12, v0, v11}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    add-int/2addr v0, p6

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v6, 0x0

    move-object v2, p4

    move v3, p5

    move v4, p6

    move-object v5, v0

    invoke-interface/range {v1 .. v6}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    sget-boolean v1, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptThenMAC:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    const/4 v6, 0x0

    move-wide v2, p1

    move v4, p3

    move-object v5, v0

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object p1

    const/4 p2, 0x0

    array-length p3, p1

    invoke-static {p1, p2, v0, p6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v3, 0x0

    array-length v4, v2

    move-object v5, v0

    move v6, p6

    invoke-interface/range {v1 .. v6}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    return-object v0
.end method

.method public getPlaintextLimit(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method
