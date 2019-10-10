.class public Ljcifs/smb/SigningDigest;
.super Ljava/lang/Object;
.source "SigningDigest.java"

# interfaces
.implements Ljcifs/smb/SmbConstants;


# static fields
.field static log:Ljcifs/util/LogStream;


# instance fields
.field private bypass:Z

.field private digest:Ljava/security/MessageDigest;

.field private macSigningKey:[B

.field private signSequence:I

.field private updates:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbTransport;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    :try_start_0
    const-string v1, "MD5"

    .line 47
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    :try_start_1
    sget v1, Ljcifs/smb/SigningDigest;->LM_COMPATIBILITY:I

    const/16 v2, 0x18

    const/16 v3, 0x28

    const/16 v4, 0x10

    packed-switch v1, :pswitch_data_0

    .line 71
    new-array v1, v3, [B

    goto :goto_0

    .line 67
    :pswitch_0
    new-array v1, v4, [B

    iput-object v1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    .line 68
    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object p1, p1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    iget-object v1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    invoke-virtual {p2, p1, v1, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    goto :goto_1

    .line 59
    :pswitch_1
    new-array v1, v3, [B

    iput-object v1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    .line 60
    iget-object v1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v1, v1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    iget-object v3, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    invoke-virtual {p2, v1, v3, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    .line 61
    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object p1, p1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p2, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object p1

    iget-object p2, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    invoke-static {p1, v0, p2, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 71
    :goto_0
    iput-object v1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    .line 72
    iget-object v1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v1, v1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    iget-object v3, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    invoke-virtual {p2, v1, v3, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    .line 73
    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object p1, p1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p2, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object p1

    iget-object p2, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    invoke-static {p1, v0, p2, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    :goto_1
    sget-object p1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    sget p1, Ljcifs/util/LogStream;->level:I

    const/4 p2, 0x5

    if-lt p1, p2, :cond_0

    .line 81
    sget-object p1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LM_COMPATIBILITY="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Ljcifs/smb/SigningDigest;->LM_COMPATIBILITY:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 82
    sget-object p1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    iget-object p2, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    iget-object v1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    array-length v1, v1

    invoke-static {p1, p2, v0, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 78
    new-instance p2, Ljcifs/smb/SmbException;

    const-string v0, ""

    invoke-direct {p2, v0, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 49
    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    sget p2, Ljcifs/util/LogStream;->level:I

    if-lez p2, :cond_1

    .line 50
    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 51
    :cond_1
    new-instance p2, Ljcifs/smb/SmbException;

    const-string v0, "MD5"

    invoke-direct {p2, v0, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    :try_start_0
    const-string v1, "MD5"

    .line 26
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    iput-object p1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    .line 34
    iput-boolean p2, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    .line 35
    iput v0, p0, Ljcifs/smb/SigningDigest;->updates:I

    .line 36
    iput v0, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    .line 38
    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x5

    if-lt p2, v1, :cond_0

    .line 39
    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    const-string v1, "macSigningKey:"

    invoke-virtual {p2, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 40
    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    array-length v1, p1

    invoke-static {p2, p1, v0, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 28
    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    sget p2, Ljcifs/util/LogStream;->level:I

    if-lez p2, :cond_1

    .line 29
    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 30
    :cond_1
    new-instance p2, Ljcifs/smb/SmbException;

    const-string v0, "MD5"

    invoke-direct {p2, v0, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public digest()[B
    .locals 4

    .line 101
    iget-object v0, p0, Ljcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 103
    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-lt v1, v3, :cond_0

    .line 104
    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    const-string v3, "digest: "

    invoke-virtual {v1, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 105
    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    array-length v3, v0

    invoke-static {v1, v0, v2, v3}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 106
    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1}, Ljcifs/util/LogStream;->flush()V

    .line 108
    :cond_0
    iput v2, p0, Ljcifs/smb/SigningDigest;->updates:I

    return-object v0
.end method

.method sign([BIILjcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 4

    .line 125
    iget v0, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    iput v0, p4, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    const/4 p4, 0x0

    if-eqz p5, :cond_0

    .line 127
    iget v0, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p5, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    .line 128
    iput-boolean p4, p5, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    .line 132
    :cond_0
    :try_start_0
    iget-object p5, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    iget-object v0, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    array-length v0, v0

    invoke-virtual {p0, p5, p4, v0}, Ljcifs/smb/SigningDigest;->update([BII)V

    add-int/lit8 p5, p2, 0xe

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    add-int v1, p5, v0

    .line 134
    aput-byte p4, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    iget v0, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, p5}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 136
    invoke-virtual {p0, p1, p2, p3}, Ljcifs/smb/SigningDigest;->update([BII)V

    .line 137
    invoke-virtual {p0}, Ljcifs/smb/SigningDigest;->digest()[B

    move-result-object p2

    invoke-static {p2, p4, p1, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iget-boolean p2, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    if-eqz p2, :cond_2

    .line 139
    iput-boolean p4, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    const-string p2, "BSRSPYL "

    .line 140
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2, p4, p1, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_2
    :goto_1
    iget p1, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 143
    :try_start_1
    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    sget p2, Ljcifs/util/LogStream;->level:I

    if-lez p2, :cond_2

    .line 144
    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 148
    :goto_3
    iget p2, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    .line 146
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LM_COMPATIBILITY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Ljcifs/smb/SigningDigest;->LM_COMPATIBILITY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " MacSigningKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    iget-object v2, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update([BII)V
    .locals 3

    .line 87
    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 88
    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SigningDigest;->updates:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 89
    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    const/16 v1, 0x100

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 90
    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0}, Ljcifs/util/LogStream;->flush()V

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Ljcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 96
    iget p1, p0, Ljcifs/smb/SigningDigest;->updates:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljcifs/smb/SigningDigest;->updates:I

    return-void
.end method

.method verify([BILjcifs/smb/ServerMessageBlock;)Z
    .locals 7

    .line 159
    iget-object v0, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    iget-object v1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SigningDigest;->update([BII)V

    const/16 v0, 0xe

    .line 161
    invoke-virtual {p0, p1, p2, v0}, Ljcifs/smb/SigningDigest;->update([BII)V

    add-int/2addr p2, v0

    const/16 v1, 0x8

    .line 163
    new-array v3, v1, [B

    .line 164
    iget v4, p3, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    int-to-long v4, v4

    invoke-static {v4, v5, v3, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 165
    array-length v4, v3

    invoke-virtual {p0, v3, v2, v4}, Ljcifs/smb/SigningDigest;->update([BII)V

    add-int/lit8 v3, p2, 0x8

    .line 167
    iget-byte v4, p3, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_0

    .line 170
    move-object v4, p3

    check-cast v4, Ljcifs/smb/SmbComReadAndXResponse;

    .line 171
    iget v5, p3, Ljcifs/smb/ServerMessageBlock;->length:I

    iget v6, v4, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    sub-int/2addr v5, v1

    .line 172
    invoke-virtual {p0, p1, v3, v5}, Ljcifs/smb/SigningDigest;->update([BII)V

    .line 173
    iget-object v0, v4, Ljcifs/smb/SmbComReadAndXResponse;->b:[B

    iget v3, v4, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    iget v4, v4, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    invoke-virtual {p0, v0, v3, v4}, Ljcifs/smb/SigningDigest;->update([BII)V

    goto :goto_0

    .line 175
    :cond_0
    iget v4, p3, Ljcifs/smb/ServerMessageBlock;->length:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, v1

    invoke-virtual {p0, p1, v3, v4}, Ljcifs/smb/SigningDigest;->update([BII)V

    .line 177
    :goto_0
    invoke-virtual {p0}, Ljcifs/smb/SigningDigest;->digest()[B

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 179
    aget-byte v4, v0, v3

    add-int v5, p2, v3

    aget-byte v5, p1, v5

    if-eq v4, v5, :cond_2

    .line 180
    sget-object v3, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 181
    sget-object v3, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    const-string v4, "signature verification failure"

    invoke-virtual {v3, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 182
    sget-object v3, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-static {v3, v0, v2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 183
    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-static {v0, p1, p2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_1
    const/4 p1, 0x1

    .line 186
    iput-boolean p1, p3, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 190
    :cond_3
    iput-boolean v2, p3, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    return v2
.end method
