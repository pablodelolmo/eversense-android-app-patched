.class public abstract Ljcifs/dcerpc/DcerpcHandle;
.super Ljava/lang/Object;
.source "DcerpcHandle.java"

# interfaces
.implements Ljcifs/dcerpc/DcerpcConstants;


# static fields
.field private static call_id:I = 0x1


# instance fields
.field protected binding:Ljcifs/dcerpc/DcerpcBinding;

.field protected max_recv:I

.field protected max_xmit:I

.field protected securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

.field protected state:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10b8

    .line 106
    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    .line 107
    iget v0, p0, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    return-void
.end method

.method public static getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/net/MalformedURLException;,
            Ljcifs/dcerpc/DcerpcException;
        }
    .end annotation

    const-string v0, "ncacn_np:"

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljcifs/dcerpc/DcerpcPipeHandle;

    invoke-direct {v0, p0, p1}, Ljcifs/dcerpc/DcerpcPipeHandle;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-object v0

    .line 118
    :cond_0
    new-instance p1, Ljcifs/dcerpc/DcerpcException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DCERPC transport not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static parseBinding(Ljava/lang/String;)Ljcifs/dcerpc/DcerpcBinding;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/DcerpcException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    move-object v6, v5

    move-object v7, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 54
    :cond_0
    aget-char v8, v0, v2

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v3, v9, :cond_2

    packed-switch v3, :pswitch_data_0

    .line 93
    array-length v2, v0

    goto :goto_0

    :pswitch_0
    const/16 v11, 0x5c

    if-ne v8, v11, :cond_1

    add-int/lit8 v4, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :pswitch_1
    const/16 v11, 0x5b

    if-ne v8, v11, :cond_6

    .line 72
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 75
    new-instance v3, Ljcifs/dcerpc/DcerpcBinding;

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Ljcifs/dcerpc/DcerpcBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v2, 0x1

    move-object v7, v3

    const/4 v3, 0x5

    goto :goto_0

    :pswitch_2
    const/16 v9, 0x3a

    if-ne v8, v9, :cond_6

    .line 59
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    move-object v5, v3

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v9, 0x3d

    if-ne v8, v9, :cond_3

    .line 82
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v2, 0x1

    move v12, v6

    move-object v6, v4

    move v4, v12

    goto :goto_0

    :cond_3
    const/16 v9, 0x2c

    if-eq v8, v9, :cond_4

    const/16 v9, 0x5d

    if-ne v8, v9, :cond_6

    .line 85
    :cond_4
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    if-nez v6, :cond_5

    const-string v6, "endpoint"

    .line 88
    :cond_5
    invoke-virtual {v7, v6, v8}, Ljcifs/dcerpc/DcerpcBinding;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v1

    :cond_6
    :goto_0
    add-int/2addr v2, v10

    .line 97
    array-length v8, v0

    if-lt v2, v8, :cond_0

    if-eqz v7, :cond_8

    .line 99
    iget-object v0, v7, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    return-object v7

    .line 100
    :cond_8
    :goto_1
    new-instance v0, Ljcifs/dcerpc/DcerpcException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid binding URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public bind()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/DcerpcException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    monitor-enter p0

    const/4 v0, 0x1

    .line 124
    :try_start_0
    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    .line 125
    new-instance v0, Ljcifs/dcerpc/DcerpcBind;

    iget-object v1, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    invoke-direct {v0, v1, p0}, Ljcifs/dcerpc/DcerpcBind;-><init>(Ljcifs/dcerpc/DcerpcBinding;Ljcifs/dcerpc/DcerpcHandle;)V

    .line 126
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 128
    iput v1, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    .line 129
    throw v0

    .line 131
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doReceiveFragment([BZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doSendFragment([BIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getPrincipal()Ljava/security/Principal;
    .locals 1

    .line 263
    instance-of v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;

    if-eqz v0, :cond_0

    .line 264
    move-object v0, p0

    check-cast v0, Ljcifs/dcerpc/DcerpcPipeHandle;

    iget-object v0, v0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Ljcifs/smb/SmbNamedPipe;->getPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .line 258
    instance-of v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;

    if-eqz v0, :cond_0

    .line 259
    move-object v0, p0

    check-cast v0, Ljcifs/dcerpc/DcerpcPipeHandle;

    iget-object v0, v0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Ljcifs/smb/SmbNamedPipe;->getServer()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/DcerpcException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget v0, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->bind()V

    .line 145
    :cond_0
    invoke-static {}, Ljcifs/smb/BufferCache;->getBuffer()[B

    move-result-object v0

    .line 149
    :try_start_0
    new-instance v1, Ljcifs/dcerpc/ndr/NdrBuffer;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    const/4 v3, 0x3

    .line 151
    iput v3, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 152
    sget v4, Ljcifs/dcerpc/DcerpcHandle;->call_id:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Ljcifs/dcerpc/DcerpcHandle;->call_id:I

    iput v4, p1, Ljcifs/dcerpc/DcerpcMessage;->call_id:I

    .line 154
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcMessage;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 156
    iget-object v4, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    if-eqz v4, :cond_1

    .line 157
    invoke-virtual {v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 158
    iget-object v4, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    invoke-interface {v4, v1}, Ljcifs/dcerpc/DcerpcSecurityProvider;->wrap(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 161
    :cond_1
    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->getLength()I

    move-result v4

    const/16 v5, 0x18

    sub-int/2addr v4, v5

    const/4 v6, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    const/4 v8, 0x2

    if-ge v6, v4, :cond_5

    sub-int v9, v4, v6

    add-int/lit8 v10, v9, 0x18

    .line 167
    iget v11, p0, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    if-le v10, v11, :cond_2

    .line 168
    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/lit8 v8, v8, -0x3

    iput v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 169
    iget v8, p0, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    add-int/lit8 v9, v8, -0x18

    goto :goto_1

    .line 171
    :cond_2
    iget v7, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    or-int/2addr v7, v8

    iput v7, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 173
    iput v9, p1, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    const/4 v7, 0x0

    :goto_1
    add-int/lit8 v8, v9, 0x18

    .line 176
    iput v8, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    if-lez v6, :cond_3

    .line 179
    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/lit8 v8, v8, -0x2

    iput v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 181
    :cond_3
    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/2addr v8, v3

    if-eq v8, v3, :cond_4

    .line 182
    iput v6, v1, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    .line 183
    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    .line 184
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcMessage;->encode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 185
    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    invoke-virtual {v1, v8}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 186
    invoke-virtual {v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 187
    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcMessage;->getOpnum()I

    move-result v8

    invoke-virtual {v1, v8}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 190
    :cond_4
    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    invoke-virtual {p0, v0, v6, v8, v7}, Ljcifs/dcerpc/DcerpcHandle;->doSendFragment([BIIZ)V

    add-int/2addr v6, v9

    goto :goto_0

    .line 194
    :cond_5
    invoke-virtual {p0, v0, v7}, Ljcifs/dcerpc/DcerpcHandle;->doReceiveFragment([BZ)V

    .line 195
    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    const/16 v3, 0x8

    .line 196
    invoke-virtual {v1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 197
    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v4

    invoke-virtual {v1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->setLength(I)V

    .line 199
    iget-object v4, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    if-eqz v4, :cond_6

    .line 200
    iget-object v4, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    invoke-interface {v4, v1}, Ljcifs/dcerpc/DcerpcSecurityProvider;->unwrap(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 202
    :cond_6
    invoke-virtual {v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 204
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcMessage;->decode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 207
    iget v1, p1, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    if-ne v1, v8, :cond_7

    invoke-virtual {p1, v8}, Ljcifs/dcerpc/DcerpcMessage;->isFlagSet(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 208
    iget v1, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    goto :goto_2

    :cond_7
    const/16 v1, 0x18

    :goto_2
    const/4 v4, 0x0

    move v6, v1

    move-object v1, v4

    .line 212
    :goto_3
    invoke-virtual {p1, v8}, Ljcifs/dcerpc/DcerpcMessage;->isFlagSet(I)Z

    move-result v9

    if-nez v9, :cond_b

    if-nez v4, :cond_8

    .line 216
    iget v1, p0, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    new-array v1, v1, [B

    .line 217
    new-instance v4, Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-direct {v4, v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    move-object v12, v4

    move-object v4, v1

    move-object v1, v12

    .line 220
    :cond_8
    invoke-virtual {p0, v4, v7}, Ljcifs/dcerpc/DcerpcHandle;->doReceiveFragment([BZ)V

    .line 221
    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    .line 222
    invoke-virtual {v1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 223
    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v9

    invoke-virtual {v1, v9}, Ljcifs/dcerpc/ndr/NdrBuffer;->setLength(I)V

    .line 225
    iget-object v9, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    if-eqz v9, :cond_9

    .line 226
    iget-object v9, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    invoke-interface {v9, v1}, Ljcifs/dcerpc/DcerpcSecurityProvider;->unwrap(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 228
    :cond_9
    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    .line 229
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcMessage;->decode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 230
    iget v9, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    sub-int/2addr v9, v5

    add-int v10, v6, v9

    .line 232
    array-length v11, v0

    if-le v10, v11, :cond_a

    .line 234
    new-array v11, v10, [B

    .line 235
    invoke-static {v0, v2, v11, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v11

    .line 239
    :cond_a
    invoke-static {v4, v5, v0, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v10

    goto :goto_3

    .line 243
    :cond_b
    new-instance v1, Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-direct {v1, v0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    .line 244
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcMessage;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-static {v0}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    .line 249
    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcMessage;->getResult()Ljcifs/dcerpc/DcerpcException;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 250
    throw p1

    :cond_c
    return-void

    :catchall_0
    move-exception p1

    .line 246
    invoke-static {v0}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    throw p1
.end method

.method public setDcerpcSecurityProvider(Ljcifs/dcerpc/DcerpcSecurityProvider;)V
    .locals 0

    .line 255
    iput-object p1, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcBinding;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
