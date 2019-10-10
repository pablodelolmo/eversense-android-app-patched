.class public Ljcifs/smb/SID;
.super Ljcifs/dcerpc/rpc$sid_t;
.source "SID.java"


# static fields
.field public static CREATOR_OWNER:Ljcifs/smb/SID; = null

.field public static EVERYONE:Ljcifs/smb/SID; = null

.field public static final SID_FLAG_RESOLVE_SIDS:I = 0x1

.field public static final SID_TYPE_ALIAS:I = 0x4

.field public static final SID_TYPE_DELETED:I = 0x6

.field public static final SID_TYPE_DOMAIN:I = 0x3

.field public static final SID_TYPE_DOM_GRP:I = 0x2

.field public static final SID_TYPE_INVALID:I = 0x7

.field static final SID_TYPE_NAMES:[Ljava/lang/String;

.field public static final SID_TYPE_UNKNOWN:I = 0x8

.field public static final SID_TYPE_USER:I = 0x1

.field public static final SID_TYPE_USE_NONE:I = 0x0

.field public static final SID_TYPE_WKN_GRP:I = 0x5

.field public static SYSTEM:Ljcifs/smb/SID;

.field static sid_cache:Ljava/util/Map;


# instance fields
.field acctName:Ljava/lang/String;

.field domainName:Ljava/lang/String;

.field origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field origin_server:Ljava/lang/String;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "0"

    const-string v1, "User"

    const-string v2, "Domain group"

    const-string v3, "Domain"

    const-string v4, "Local group"

    const-string v5, "Builtin group"

    const-string v6, "Deleted"

    const-string v7, "Invalid"

    const-string v8, "Unknown"

    .line 59
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SID;->SID_TYPE_NAMES:[Ljava/lang/String;

    .line 79
    :try_start_0
    new-instance v0, Ljcifs/smb/SID;

    const-string v1, "S-1-1-0"

    invoke-direct {v0, v1}, Ljcifs/smb/SID;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/SID;->EVERYONE:Ljcifs/smb/SID;

    .line 80
    new-instance v0, Ljcifs/smb/SID;

    const-string v1, "S-1-3-0"

    invoke-direct {v0, v1}, Ljcifs/smb/SID;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/SID;->CREATOR_OWNER:Ljcifs/smb/SID;

    .line 81
    new-instance v0, Ljcifs/smb/SID;

    const-string v1, "S-1-5-18"

    invoke-direct {v0, v1}, Ljcifs/smb/SID;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/SID;->SYSTEM:Ljcifs/smb/SID;
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 294
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 269
    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 270
    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 271
    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 295
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "-"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 300
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p1

    iput-byte p1, p0, Ljcifs/smb/SID;->revision:B

    .line 301
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "0x"

    .line 303
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 304
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    goto :goto_0

    .line 306
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    const/4 p1, 0x6

    .line 308
    new-array p1, p1, [B

    iput-object p1, p0, Ljcifs/smb/SID;->identifier_authority:[B

    const/4 p1, 0x5

    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 310
    iget-object v3, p0, Ljcifs/smb/SID;->identifier_authority:[B

    const-wide/16 v4, 0x100

    rem-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, p1

    const/16 v3, 0x8

    shr-long/2addr v1, v3

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 314
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Ljcifs/smb/SID;->sub_authority_count:B

    .line 315
    iget-byte p1, p0, Ljcifs/smb/SID;->sub_authority_count:B

    if-lez p1, :cond_3

    .line 316
    iget-byte p1, p0, Ljcifs/smb/SID;->sub_authority_count:B

    new-array p1, p1, [I

    iput-object p1, p0, Ljcifs/smb/SID;->sub_authority:[I

    const/4 p1, 0x0

    .line 317
    :goto_2
    iget-byte v1, p0, Ljcifs/smb/SID;->sub_authority_count:B

    if-ge p1, v1, :cond_3

    .line 318
    iget-object v1, p0, Ljcifs/smb/SID;->sub_authority:[I

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void

    .line 298
    :cond_4
    :goto_3
    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad textual SID format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 343
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 269
    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 270
    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 271
    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 344
    iget-byte v0, p1, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    iput-byte v0, p0, Ljcifs/smb/SID;->revision:B

    .line 345
    iget-byte v0, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    iput-byte v0, p0, Ljcifs/smb/SID;->sub_authority_count:B

    .line 346
    iget-object v0, p1, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    iput-object v0, p0, Ljcifs/smb/SID;->identifier_authority:[B

    .line 347
    iget-object v0, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iput-object v0, p0, Ljcifs/smb/SID;->sub_authority:[I

    .line 348
    iput p2, p0, Ljcifs/smb/SID;->type:I

    .line 349
    iput-object p3, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 350
    iput-object p4, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    if-eqz p5, :cond_0

    .line 353
    iget-byte p2, p0, Ljcifs/smb/SID;->sub_authority_count:B

    add-int/lit8 p2, p2, -0x1

    int-to-byte p2, p2

    iput-byte p2, p0, Ljcifs/smb/SID;->sub_authority_count:B

    .line 354
    iget-byte p2, p0, Ljcifs/smb/SID;->sub_authority_count:B

    new-array p2, p2, [I

    iput-object p2, p0, Ljcifs/smb/SID;->sub_authority:[I

    const/4 p2, 0x0

    .line 355
    :goto_0
    iget-byte p3, p0, Ljcifs/smb/SID;->sub_authority_count:B

    if-ge p2, p3, :cond_0

    .line 356
    iget-object p3, p0, Ljcifs/smb/SID;->sub_authority:[I

    iget-object p4, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget p4, p4, p2

    aput p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SID;I)V
    .locals 3

    .line 328
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 269
    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 270
    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 271
    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 329
    iget-byte v0, p1, Ljcifs/smb/SID;->revision:B

    iput-byte v0, p0, Ljcifs/smb/SID;->revision:B

    .line 330
    iget-object v0, p1, Ljcifs/smb/SID;->identifier_authority:[B

    iput-object v0, p0, Ljcifs/smb/SID;->identifier_authority:[B

    .line 331
    iget-byte v0, p1, Ljcifs/smb/SID;->sub_authority_count:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Ljcifs/smb/SID;->sub_authority_count:B

    .line 332
    iget-byte v0, p0, Ljcifs/smb/SID;->sub_authority_count:B

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/smb/SID;->sub_authority:[I

    const/4 v0, 0x0

    .line 334
    :goto_0
    iget-byte v1, p1, Ljcifs/smb/SID;->sub_authority_count:B

    if-ge v0, v1, :cond_0

    .line 335
    iget-object v1, p0, Ljcifs/smb/SID;->sub_authority:[I

    iget-object v2, p1, Ljcifs/smb/SID;->sub_authority:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_0
    iget-object p1, p0, Ljcifs/smb/SID;->sub_authority:[I

    aput p2, p1, v0

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    .line 276
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 269
    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 270
    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 271
    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 v0, p2, 0x1

    .line 277
    aget-byte p2, p1, p2

    iput-byte p2, p0, Ljcifs/smb/SID;->revision:B

    add-int/lit8 p2, v0, 0x1

    .line 278
    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljcifs/smb/SID;->sub_authority_count:B

    const/4 v0, 0x6

    .line 279
    new-array v1, v0, [B

    iput-object v1, p0, Ljcifs/smb/SID;->identifier_authority:[B

    .line 280
    iget-object v1, p0, Ljcifs/smb/SID;->identifier_authority:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    .line 282
    iget-byte v0, p0, Ljcifs/smb/SID;->sub_authority_count:B

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 283
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid SID sub_authority_count"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_0
    iget-byte v0, p0, Ljcifs/smb/SID;->sub_authority_count:B

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/smb/SID;->sub_authority:[I

    .line 285
    :goto_0
    iget-byte v0, p0, Ljcifs/smb/SID;->sub_authority_count:B

    if-ge v2, v0, :cond_1

    .line 286
    iget-object v0, p0, Ljcifs/smb/SID;->sub_authority:[I

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    aput v1, v0, v2

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static getGroupMemberSids0(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;Ljcifs/smb/SID;II)[Ljcifs/smb/SID;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    new-instance p2, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    invoke-direct {p2}, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;-><init>()V

    const/4 v0, 0x0

    .line 574
    :try_start_0
    new-instance v1, Ljcifs/dcerpc/msrpc/SamrAliasHandle;

    const v2, 0x2000c

    invoke-direct {v1, p0, p1, v2, p3}, Ljcifs/dcerpc/msrpc/SamrAliasHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 575
    :try_start_1
    new-instance p1, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;

    invoke-direct {p1, v1, p2}, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;-><init>(Ljcifs/dcerpc/msrpc/SamrAliasHandle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V

    .line 576
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 577
    iget p2, p1, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;->retval:I

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 578
    new-instance p0, Ljcifs/smb/SmbException;

    iget p1, p1, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;->retval:I

    invoke-direct {p0, p1, p3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p0

    .line 579
    :cond_0
    iget-object p2, p1, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    iget p2, p2, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->num_sids:I

    new-array p2, p2, [Ljcifs/smb/SID;

    .line 581
    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->getServer()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->getPrincipal()Ljava/security/Principal;

    move-result-object p0

    check-cast p0, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 585
    :goto_0
    array-length v2, p2

    if-ge p3, v2, :cond_1

    .line 586
    new-instance v2, Ljcifs/smb/SID;

    iget-object v3, p1, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    iget-object v3, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    aget-object v3, v3, p3

    iget-object v4, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Ljcifs/dcerpc/rpc$sid_t;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Ljcifs/smb/SID;-><init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v2, p2, p3

    .line 591
    aget-object v2, p2, p3

    iput-object v0, v2, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 592
    aget-object v2, p2, p3

    iput-object p0, v2, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 594
    :cond_1
    array-length p1, p2

    if-lez p1, :cond_2

    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2

    .line 595
    invoke-static {v0, p0, p2}, Ljcifs/smb/SID;->resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz v1, :cond_3

    .line 600
    invoke-virtual {v1}, Ljcifs/dcerpc/msrpc/SamrAliasHandle;->close()V

    :cond_3
    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljcifs/dcerpc/msrpc/SamrAliasHandle;->close()V

    .line 599
    :cond_4
    throw p0
.end method

.method static getLocalGroupsMap(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Ljcifs/smb/SID;->getServerSid(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SID;

    move-result-object v0

    .line 670
    new-instance v1, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    invoke-direct {v1}, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;-><init>()V

    .line 673
    sget-object v2, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v2

    const/4 v3, 0x0

    .line 675
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ncacn_np:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[\\PIPE\\samr]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 677
    :try_start_1
    new-instance v4, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;

    const/high16 v5, 0x2000000

    invoke-direct {v4, p1, p0, v5}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 678
    :try_start_2
    new-instance p0, Ljcifs/dcerpc/msrpc/SamrDomainHandle;

    invoke-direct {p0, p1, v4, v5, v0}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 679
    :try_start_3
    new-instance v3, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;

    const v5, 0xffff

    invoke-direct {v3, p0, v5, v1}, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;-><init>(Ljcifs/dcerpc/msrpc/SamrDomainHandle;ILjcifs/dcerpc/msrpc/samr$SamrSamArray;)V

    .line 680
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 681
    iget v1, v3, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;->retval:I

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 682
    new-instance p2, Ljcifs/smb/SmbException;

    iget v0, v3, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;->retval:I

    invoke-direct {p2, v0, v5}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p2

    .line 684
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    .line 686
    :goto_0
    iget-object v7, v3, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    iget v7, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->count:I

    if-ge v6, v7, :cond_4

    .line 687
    iget-object v7, v3, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    iget-object v7, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    aget-object v7, v7, v6

    .line 689
    iget v8, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->idx:I

    invoke-static {p1, p0, v0, v8, p2}, Ljcifs/smb/SID;->getGroupMemberSids0(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;Ljcifs/smb/SID;II)[Ljcifs/smb/SID;

    move-result-object v8

    .line 694
    new-instance v9, Ljcifs/smb/SID;

    iget v10, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->idx:I

    invoke-direct {v9, v0, v10}, Ljcifs/smb/SID;-><init>(Ljcifs/smb/SID;I)V

    const/4 v10, 0x4

    .line 695
    iput v10, v9, Ljcifs/smb/SID;->type:I

    .line 696
    invoke-virtual {v0}, Ljcifs/smb/SID;->getDomainName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 697
    new-instance v10, Ljcifs/dcerpc/UnicodeString;

    iget-object v7, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v10, v7, v5}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v10}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    const/4 v7, 0x0

    .line 699
    :goto_1
    array-length v10, v8

    if-ge v7, v10, :cond_3

    .line 700
    aget-object v10, v8, v7

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-nez v10, :cond_1

    .line 702
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 703
    aget-object v11, v8, v7

    invoke-interface {v1, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_1
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 706
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_7

    if-eqz v4, :cond_6

    if-eqz p0, :cond_5

    .line 715
    :try_start_4
    invoke-virtual {p0}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    .line 717
    :cond_5
    invoke-virtual {v4}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    .line 719
    :cond_6
    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    .line 710
    :cond_7
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object p0, v3

    goto :goto_2

    :catchall_2
    move-exception p2

    move-object p0, v3

    move-object v4, p0

    goto :goto_2

    :catchall_3
    move-exception p2

    move-object p0, v3

    move-object p1, p0

    move-object v4, p1

    :goto_2
    if-eqz p1, :cond_a

    if-eqz v4, :cond_9

    if-eqz p0, :cond_8

    .line 715
    invoke-virtual {p0}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    .line 717
    :cond_8
    invoke-virtual {v4}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    .line 719
    :cond_9
    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    goto :goto_3

    :catchall_4
    move-exception p0

    goto :goto_4

    .line 712
    :cond_a
    :goto_3
    throw p2

    .line 722
    :goto_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p0
.end method

.method public static getServerSid(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SID;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    new-instance v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;-><init>()V

    .line 225
    sget-object v1, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    .line 227
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ncacn_np:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[\\PIPE\\lsarpc]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 230
    :try_start_1
    new-instance p1, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;

    const/4 v3, 0x1

    invoke-direct {p1, p0, v2, v3}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    :try_start_2
    new-instance v2, Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;

    const/4 v3, 0x5

    invoke-direct {v2, p1, v3, v0}, Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;-><init>(Ljcifs/dcerpc/msrpc/LsaPolicyHandle;SLjcifs/dcerpc/ndr/NdrObject;)V

    .line 234
    invoke-virtual {p0, v2}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 235
    iget v3, v2, Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;->retval:I

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 236
    new-instance v0, Ljcifs/smb/SmbException;

    iget v2, v2, Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;->retval:I

    invoke-direct {v0, v2, v4}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v0

    .line 238
    :cond_0
    new-instance v8, Ljcifs/smb/SID;

    iget-object v3, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    const/4 v5, 0x3

    new-instance v2, Ljcifs/dcerpc/UnicodeString;

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v2, v0, v4}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v2}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move v4, v5

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Ljcifs/smb/SID;-><init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 246
    :try_start_3
    invoke-virtual {p1}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    .line 248
    :cond_1
    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    .line 238
    :cond_2
    monitor-exit v1

    return-object v8

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p0, v2

    move-object p1, p0

    :goto_0
    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    .line 246
    invoke-virtual {p1}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    goto :goto_1

    :catchall_3
    move-exception p0

    goto :goto_2

    .line 248
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    .line 244
    :cond_4
    throw v0

    .line 251
    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0
.end method

.method public static resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    sget-object v1, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 198
    :goto_0
    :try_start_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 199
    sget-object v4, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object v5, p2, v3

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljcifs/smb/SID;

    if-eqz v4, :cond_0

    .line 201
    aget-object v5, p2, v3

    iget v6, v4, Ljcifs/smb/SID;->type:I

    iput v6, v5, Ljcifs/smb/SID;->type:I

    .line 202
    aget-object v5, p2, v3

    iget-object v6, v4, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v6, v5, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 203
    aget-object v5, p2, v3

    iget-object v4, v4, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v4, v5, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    goto :goto_1

    .line 205
    :cond_0
    aget-object v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 210
    new-array p2, v2, [Ljcifs/smb/SID;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljcifs/smb/SID;

    .line 211
    invoke-static {p0, p1, p2}, Ljcifs/smb/SID;->resolveSids0(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V

    .line 212
    :goto_2
    array-length p0, p2

    if-ge v2, p0, :cond_2

    .line 213
    sget-object p0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object p1, p2, v2

    aget-object v0, p2, v2

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 216
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    sget-object v1, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p4, :cond_1

    .line 160
    :try_start_0
    sget-object v4, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    add-int v5, p3, v3

    aget-object v6, p2, v5

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljcifs/smb/SID;

    if-eqz v4, :cond_0

    .line 162
    aget-object v6, p2, v5

    iget v7, v4, Ljcifs/smb/SID;->type:I

    iput v7, v6, Ljcifs/smb/SID;->type:I

    .line 163
    aget-object v6, p2, v5

    iget-object v7, v4, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v7, v6, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 164
    aget-object v5, p2, v5

    iget-object v4, v4, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v4, v5, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    goto :goto_1

    .line 166
    :cond_0
    aget-object v4, p2, v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 170
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 171
    new-array p2, v2, [Ljcifs/smb/SID;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljcifs/smb/SID;

    .line 172
    invoke-static {p0, p1, p2}, Ljcifs/smb/SID;->resolveSids0(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V

    .line 173
    :goto_2
    array-length p0, p2

    if-ge v2, p0, :cond_2

    .line 174
    sget-object p0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object p1, p2, v2

    aget-object p3, p2, v2

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 177
    :cond_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static resolveSids(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;

    invoke-direct {v0, p1, p2}, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;-><init>(Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V

    .line 92
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 93
    iget p0, v0, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;->retval:I

    const p1, -0x3fffff8d    # -2.0000274f

    const/4 v1, 0x0

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_0

    const/16 p1, 0x107

    if-eq p0, p1, :cond_0

    .line 99
    new-instance p0, Ljcifs/smb/SmbException;

    iget p1, v0, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;->retval:I

    invoke-direct {p0, p1, v1}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p0

    :cond_0
    const/4 p0, 0x0

    .line 102
    :goto_0
    array-length p1, p2

    if-ge p0, p1, :cond_1

    .line 103
    aget-object p1, p2, p0

    iget-object v2, v0, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    iget-object v2, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v2, v2, p0

    iget-short v2, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_type:S

    iput v2, p1, Ljcifs/smb/SID;->type:I

    .line 104
    aget-object p1, p2, p0

    const/4 v2, 0x0

    iput-object v2, p1, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 106
    aget-object p1, p2, p0

    iget p1, p1, Ljcifs/smb/SID;->type:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 112
    :pswitch_0
    iget-object p1, v0, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    iget-object p1, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object p1, p1, p0

    iget p1, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_index:I

    .line 113
    iget-object v3, v0, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;->domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    iget-object v3, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    aget-object p1, v3, p1

    iget-object p1, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 114
    aget-object v3, p2, p0

    new-instance v4, Ljcifs/dcerpc/UnicodeString;

    invoke-direct {v4, p1, v1}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v4}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 118
    :goto_1
    aget-object p1, p2, p0

    new-instance v3, Ljcifs/dcerpc/UnicodeString;

    iget-object v4, v0, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    iget-object v4, v4, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v4, v4, p0

    iget-object v4, v4, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v3, v4, v1}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v3}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 119
    aget-object p1, p2, p0

    iput-object v2, p1, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 120
    aget-object p1, p2, p0

    iput-object v2, p1, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static resolveSids0(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    sget-object v0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v0

    const/4 v1, 0x0

    .line 131
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ncacn_np:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[\\PIPE\\lsarpc]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v2, 0x2e

    .line 134
    :try_start_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 135
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 136
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 137
    :cond_0
    new-instance v2, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x800

    invoke-direct {v2, p1, p0, v3}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    :try_start_2
    invoke-static {p1, v2, p2}, Ljcifs/smb/SID;->resolveSids(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    if-eqz v2, :cond_1

    .line 142
    :try_start_3
    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    .line 144
    :cond_1
    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    .line 147
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    if-eqz v1, :cond_3

    .line 142
    invoke-virtual {v1}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    goto :goto_1

    :catchall_3
    move-exception p0

    goto :goto_2

    .line 144
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    .line 140
    :cond_4
    throw p0

    .line 147
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0
.end method

.method public static toByteArray(Ljcifs/dcerpc/rpc$sid_t;)[B
    .locals 6

    .line 254
    iget-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    mul-int/lit8 v0, v0, 0x4

    const/16 v1, 0x8

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 256
    iget-byte v2, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 257
    iget-byte v2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    const/4 v4, 0x1

    aput-byte v2, v0, v4

    .line 258
    iget-object v2, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    :goto_0
    iget-byte v2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ge v3, v2, :cond_0

    .line 261
    iget-object v2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v2, v2, v3

    invoke-static {v2, v0, v1}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 446
    instance-of v0, p1, Ljcifs/smb/SID;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 447
    check-cast p1, Ljcifs/smb/SID;

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 450
    :cond_0
    iget-byte v2, p1, Ljcifs/smb/SID;->sub_authority_count:B

    iget-byte v3, p0, Ljcifs/smb/SID;->sub_authority_count:B

    if-ne v2, v3, :cond_6

    .line 451
    iget-byte v2, p0, Ljcifs/smb/SID;->sub_authority_count:B

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_2

    .line 453
    iget-object v2, p1, Ljcifs/smb/SID;->sub_authority:[I

    aget v2, v2, v3

    iget-object v4, p0, Ljcifs/smb/SID;->sub_authority:[I

    aget v4, v4, v3

    if-eq v2, v4, :cond_1

    return v1

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x6

    if-ge v2, v3, :cond_4

    .line 458
    iget-object v3, p1, Ljcifs/smb/SID;->identifier_authority:[B

    aget-byte v3, v3, v2

    iget-object v4, p0, Ljcifs/smb/SID;->identifier_authority:[B

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 463
    :cond_4
    iget-byte p1, p1, Ljcifs/smb/SID;->revision:B

    iget-byte v2, p0, Ljcifs/smb/SID;->revision:B

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_6
    return v1
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 3

    .line 429
    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    .line 431
    :cond_0
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SID;->sub_authority:[I

    iget-byte v2, p0, Ljcifs/smb/SID;->sub_authority_count:B

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 433
    :cond_1
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v0, ""

    return-object v0

    .line 435
    :cond_2
    iget-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 4

    .line 414
    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    .line 416
    :cond_0
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 417
    invoke-virtual {p0}, Ljcifs/smb/SID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 418
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljcifs/smb/SID;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 420
    :cond_1
    iget-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainSid()Ljcifs/smb/SID;
    .locals 7

    .line 362
    new-instance v6, Ljcifs/smb/SID;

    iget-object v3, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    invoke-virtual {p0}, Ljcifs/smb/SID;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x3

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljcifs/smb/SID;-><init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public getGroupMemberSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)[Ljcifs/smb/SID;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    .line 609
    new-array p1, p1, [Ljcifs/smb/SID;

    return-object p1

    .line 614
    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SID;->getDomainSid()Ljcifs/smb/SID;

    move-result-object v0

    .line 616
    sget-object v1, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    .line 618
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ncacn_np:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[\\PIPE\\samr]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 620
    :try_start_1
    new-instance v3, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;

    const/16 v4, 0x30

    invoke-direct {v3, p2, p1, v4}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 621
    :try_start_2
    new-instance p1, Ljcifs/dcerpc/msrpc/SamrDomainHandle;

    const/16 v4, 0x200

    invoke-direct {p1, p2, v3, v4, v0}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 622
    :try_start_3
    invoke-virtual {p0}, Ljcifs/smb/SID;->getRid()I

    move-result v2

    invoke-static {p2, p1, v0, v2, p3}, Ljcifs/smb/SID;->getGroupMemberSids0(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;Ljcifs/smb/SID;II)[Ljcifs/smb/SID;

    move-result-object p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    .line 631
    :try_start_4
    invoke-virtual {p1}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    .line 633
    :cond_1
    invoke-virtual {v3}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    .line 635
    :cond_2
    invoke-virtual {p2}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    .line 622
    :cond_3
    monitor-exit v1

    return-object p3

    :catchall_0
    move-exception p3

    goto :goto_0

    :catchall_1
    move-exception p3

    move-object p1, v2

    goto :goto_0

    :catchall_2
    move-exception p3

    move-object p1, v2

    move-object v3, p1

    :goto_0
    move-object v2, p2

    goto :goto_1

    :catchall_3
    move-exception p3

    move-object p1, v2

    move-object v3, p1

    :goto_1
    if-eqz v2, :cond_6

    if-eqz v3, :cond_5

    if-eqz p1, :cond_4

    .line 631
    invoke-virtual {p1}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    .line 633
    :cond_4
    invoke-virtual {v3}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    .line 635
    :cond_5
    invoke-virtual {v2}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    goto :goto_2

    :catchall_4
    move-exception p1

    goto :goto_3

    .line 628
    :cond_6
    :goto_2
    throw p3

    .line 638
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1
.end method

.method public getRid()I
    .locals 2

    .line 369
    invoke-virtual {p0}, Ljcifs/smb/SID;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This SID is a domain sid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SID;->sub_authority:[I

    iget-byte v1, p0, Ljcifs/smb/SID;->sub_authority_count:B

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getType()I
    .locals 1

    .line 394
    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    .line 396
    :cond_0
    iget v0, p0, Ljcifs/smb/SID;->type:I

    return v0
.end method

.method public getTypeText()Ljava/lang/String;
    .locals 2

    .line 404
    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    .line 406
    :cond_0
    sget-object v0, Ljcifs/smb/SID;->SID_TYPE_NAMES:[Ljava/lang/String;

    iget v1, p0, Ljcifs/smb/SID;->type:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 439
    iget-object v0, p0, Ljcifs/smb/SID;->identifier_authority:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    const/4 v1, 0x0

    .line 440
    :goto_0
    iget-byte v2, p0, Ljcifs/smb/SID;->sub_authority_count:B

    if-ge v1, v2, :cond_0

    const v2, 0x1003f

    .line 441
    iget-object v3, p0, Ljcifs/smb/SID;->sub_authority:[I

    aget v3, v3, v1

    mul-int v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public resolve(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 547
    new-array v0, v0, [Ljcifs/smb/SID;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 549
    invoke-static {p1, p2, v0}, Ljcifs/smb/SID;->resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V

    return-void
.end method

.method resolveWeak()V
    .locals 3

    .line 553
    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 555
    :try_start_0
    iget-object v1, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iget-object v2, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p0, v1, v2}, Ljcifs/smb/SID;->resolve(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 559
    :goto_0
    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 558
    throw v1

    .line 559
    :catch_0
    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    goto :goto_0

    :cond_0
    :goto_1
    return-void
.end method

.method public toDisplayString()Ljava/lang/String;
    .locals 2

    .line 512
    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    .line 514
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 517
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 518
    iget-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    goto :goto_1

    .line 519
    :cond_1
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    const-string v1, "BUILTIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 527
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 521
    :cond_3
    :goto_0
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 522
    invoke-virtual {p0}, Ljcifs/smb/SID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 524
    :cond_4
    iget-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    :goto_1
    return-object v0

    .line 532
    :cond_5
    invoke-virtual {p0}, Ljcifs/smb/SID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Ljcifs/smb/SID;->revision:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    iget-object v1, p0, Ljcifs/smb/SID;->identifier_authority:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Ljcifs/smb/SID;->identifier_authority:[B

    const/4 v3, 0x1

    aget-byte v1, v1, v3

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_0
    if-le v1, v3, :cond_1

    .line 483
    iget-object v8, p0, Ljcifs/smb/SID;->identifier_authority:[B

    aget-byte v8, v8, v1

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v10, v6

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 486
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 477
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljcifs/smb/SID;->identifier_authority:[B

    const/4 v3, 0x6

    invoke-static {v0, v2, v3}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    :goto_2
    iget-byte v1, p0, Ljcifs/smb/SID;->sub_authority_count:B

    if-ge v2, v1, :cond_3

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljcifs/smb/SID;->sub_authority:[I

    aget v0, v0, v2

    int-to-long v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method
