.class public final Ljcifs/netbios/NbtAddress;
.super Ljava/lang/Object;
.source "NbtAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/netbios/NbtAddress$CacheEntry;
    }
.end annotation


# static fields
.field private static final ADDRESS_CACHE:Ljava/util/HashMap;

.field static final ANY_HOSTS_NAME:Ljava/lang/String; = "*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000"

.field public static final B_NODE:I = 0x0

.field private static final CACHE_POLICY:I

.field private static final CLIENT:Ljcifs/netbios/NameServiceClient;

.field private static final DEFAULT_CACHE_POLICY:I = 0x1e

.field private static final FOREVER:I = -0x1

.field public static final H_NODE:I = 0x3

.field private static final LOOKUP_TABLE:Ljava/util/HashMap;

.field public static final MASTER_BROWSER_NAME:Ljava/lang/String; = "\u0001\u0002__MSBROWSE__\u0002"

.field public static final M_NODE:I = 0x2

.field static final NBNS:[Ljava/net/InetAddress;

.field public static final P_NODE:I = 0x1

.field public static final SMBSERVER_NAME:Ljava/lang/String; = "*SMBSERVER     "

.field static final UNKNOWN_ADDRESS:Ljcifs/netbios/NbtAddress;

.field static final UNKNOWN_MAC_ADDRESS:[B

.field static final UNKNOWN_NAME:Ljcifs/netbios/Name;

.field static localhost:Ljcifs/netbios/NbtAddress;

.field private static nbnsIndex:I


# instance fields
.field address:I

.field calledName:Ljava/lang/String;

.field groupName:Z

.field hostName:Ljcifs/netbios/Name;

.field isActive:Z

.field isBeingDeleted:Z

.field isDataFromNodeStatus:Z

.field isInConflict:Z

.field isPermanent:Z

.field macAddress:[B

.field nodeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "jcifs.netbios.wins"

    const-string v1, ","

    const/4 v2, 0x0

    .line 133
    new-array v3, v2, [Ljava/net/InetAddress;

    invoke-static {v0, v1, v3}, Ljcifs/Config;->getInetAddressArray(Ljava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    .line 140
    new-instance v0, Ljcifs/netbios/NameServiceClient;

    invoke-direct {v0}, Ljcifs/netbios/NameServiceClient;-><init>()V

    sput-object v0, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    const-string v0, "jcifs.netbios.cachePolicy"

    const/16 v1, 0x1e

    .line 143
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    .line 150
    new-instance v0, Ljcifs/netbios/Name;

    const-string v1, "0.0.0.0"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    .line 151
    new-instance v0, Ljcifs/netbios/NbtAddress;

    sget-object v1, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    invoke-direct {v0, v1, v2, v2, v2}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZI)V

    sput-object v0, Ljcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Ljcifs/netbios/NbtAddress;

    const/4 v0, 0x6

    .line 152
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljcifs/netbios/NbtAddress;->UNKNOWN_MAC_ADDRESS:[B

    .line 179
    sget-object v0, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    sget-object v1, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    new-instance v4, Ljcifs/netbios/NbtAddress$CacheEntry;

    sget-object v5, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    sget-object v6, Ljcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Ljcifs/netbios/NbtAddress;

    const-wide/16 v7, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Ljcifs/netbios/NbtAddress$CacheEntry;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    iget-object v0, v0, Ljcifs/netbios/NameServiceClient;->laddr:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 187
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v1, "127.0.0.1"

    .line 195
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_0
    move-object v1, v0

    :goto_0
    const-string v0, "jcifs.netbios.hostname"

    .line 206
    invoke-static {v0, v3}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 208
    :cond_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JCIFS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide v11, 0x406fe00000000000L    # 255.0

    mul-double v9, v9, v11

    double-to-int v0, v9

    invoke-static {v0, v5}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    :cond_2
    new-instance v4, Ljcifs/netbios/Name;

    const-string v5, "jcifs.netbios.scope"

    invoke-static {v5, v3}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v0, v2, v3}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    new-instance v0, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v18, Ljcifs/netbios/NbtAddress;->UNKNOWN_MAC_ADDRESS:[B

    move-object v9, v0

    move-object v10, v4

    invoke-direct/range {v9 .. v18}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZIZZZZ[B)V

    sput-object v0, Ljcifs/netbios/NbtAddress;->localhost:Ljcifs/netbios/NbtAddress;

    .line 227
    sget-object v0, Ljcifs/netbios/NbtAddress;->localhost:Ljcifs/netbios/NbtAddress;

    invoke-static {v4, v0, v7, v8}, Ljcifs/netbios/NbtAddress;->cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljcifs/netbios/Name;IZI)V
    .locals 0

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 561
    iput p2, p0, Ljcifs/netbios/NbtAddress;->address:I

    .line 562
    iput-boolean p3, p0, Ljcifs/netbios/NbtAddress;->groupName:Z

    .line 563
    iput p4, p0, Ljcifs/netbios/NbtAddress;->nodeType:I

    return-void
.end method

.method constructor <init>(Ljcifs/netbios/Name;IZIZZZZ[B)V
    .locals 0

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    iput-object p1, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 581
    iput p2, p0, Ljcifs/netbios/NbtAddress;->address:I

    .line 582
    iput-boolean p3, p0, Ljcifs/netbios/NbtAddress;->groupName:Z

    .line 583
    iput p4, p0, Ljcifs/netbios/NbtAddress;->nodeType:I

    .line 584
    iput-boolean p5, p0, Ljcifs/netbios/NbtAddress;->isBeingDeleted:Z

    .line 585
    iput-boolean p6, p0, Ljcifs/netbios/NbtAddress;->isInConflict:Z

    .line 586
    iput-boolean p7, p0, Ljcifs/netbios/NbtAddress;->isActive:Z

    .line 587
    iput-boolean p8, p0, Ljcifs/netbios/NbtAddress;->isPermanent:Z

    .line 588
    iput-object p9, p0, Ljcifs/netbios/NbtAddress;->macAddress:[B

    const/4 p1, 0x1

    .line 589
    iput-boolean p1, p0, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    return-void
.end method

.method static cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;)V
    .locals 4

    .line 231
    sget v0, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    .line 235
    sget v2, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 238
    :cond_1
    invoke-static {p0, p1, v0, v1}, Ljcifs/netbios/NbtAddress;->cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    return-void
.end method

.method static cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V
    .locals 2

    .line 241
    sget v0, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    sget-object v0, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    monitor-enter v0

    .line 245
    :try_start_0
    sget-object v1, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/netbios/NbtAddress$CacheEntry;

    if-nez v1, :cond_1

    .line 247
    new-instance v1, Ljcifs/netbios/NbtAddress$CacheEntry;

    invoke-direct {v1, p0, p1, p2, p3}, Ljcifs/netbios/NbtAddress$CacheEntry;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    .line 248
    sget-object p1, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 250
    :cond_1
    iput-object p1, v1, Ljcifs/netbios/NbtAddress$CacheEntry;->address:Ljcifs/netbios/NbtAddress;

    .line 251
    iput-wide p2, v1, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    .line 253
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static cacheAddressArray([Ljcifs/netbios/NbtAddress;)V
    .locals 7

    .line 256
    sget v0, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    .line 260
    sget v2, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 263
    :cond_1
    sget-object v2, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    monitor-enter v2

    const/4 v3, 0x0

    .line 264
    :goto_0
    :try_start_0
    array-length v4, p0

    if-ge v3, v4, :cond_3

    .line 265
    sget-object v4, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    aget-object v5, p0, v3

    iget-object v5, v5, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljcifs/netbios/NbtAddress$CacheEntry;

    if-nez v4, :cond_2

    .line 267
    new-instance v4, Ljcifs/netbios/NbtAddress$CacheEntry;

    aget-object v5, p0, v3

    iget-object v5, v5, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    aget-object v6, p0, v3

    invoke-direct {v4, v5, v6, v0, v1}, Ljcifs/netbios/NbtAddress$CacheEntry;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V

    .line 268
    sget-object v5, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    aget-object v6, p0, v3

    iget-object v6, v6, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 270
    :cond_2
    aget-object v5, p0, v3

    iput-object v5, v4, Ljcifs/netbios/NbtAddress$CacheEntry;->address:Ljcifs/netbios/NbtAddress;

    .line 271
    iput-wide v0, v4, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    :cond_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static checkLookupTable(Ljcifs/netbios/Name;)Ljava/lang/Object;
    .locals 3

    .line 325
    sget-object v0, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    monitor-enter v0

    .line 326
    :try_start_0
    sget-object v1, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    sget-object v1, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 328
    monitor-exit v0

    return-object p0

    .line 330
    :catch_0
    :cond_0
    :goto_0
    sget-object v1, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 332
    :try_start_1
    sget-object v1, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 336
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 337
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getCachedAddress(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;

    move-result-object v0

    if-nez v0, :cond_2

    .line 339
    sget-object v1, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    monitor-enter v1

    .line 340
    :try_start_3
    sget-object v2, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v2, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-object v0

    :catchall_1
    move-exception p0

    .line 336
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method static doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 294
    iget v0, p0, Ljcifs/netbios/Name;->hexCode:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 295
    sget-object p1, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    iget-object p1, p1, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    :cond_0
    if-eqz p1, :cond_1

    .line 297
    invoke-virtual {p1}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Ljcifs/netbios/Name;->srcHashCode:I

    .line 298
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getCachedAddress(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;

    move-result-object v0

    if-nez v0, :cond_2

    .line 305
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->checkLookupTable(Ljcifs/netbios/Name;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/NbtAddress;

    if-nez v0, :cond_2

    .line 307
    :try_start_0
    sget-object v1, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    invoke-virtual {v1, p0, p1}, Ljcifs/netbios/NameServiceClient;->getByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :goto_1
    invoke-static {p0, p1}, Ljcifs/netbios/NbtAddress;->cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;)V

    .line 312
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->updateLookupTable(Ljcifs/netbios/Name;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 309
    :catch_0
    :try_start_1
    sget-object p1, Ljcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Ljcifs/netbios/NbtAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 311
    :goto_2
    invoke-static {p0, v0}, Ljcifs/netbios/NbtAddress;->cacheAddress(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;)V

    .line 312
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->updateLookupTable(Ljcifs/netbios/Name;)V

    throw p1

    :cond_2
    move-object p1, v0

    .line 316
    :goto_3
    sget-object v0, Ljcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Ljcifs/netbios/NbtAddress;

    if-ne p1, v0, :cond_3

    .line 317
    new-instance p1, Ljava/net/UnknownHostException;

    invoke-virtual {p0}, Ljcifs/netbios/Name;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object p1
.end method

.method public static getAllByAddress(Ljava/lang/String;)[Ljcifs/netbios/NbtAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 479
    invoke-static {p0, v0, v1}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getAllByAddress(Ljava/lang/String;ILjava/lang/String;)[Ljcifs/netbios/NbtAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 502
    invoke-static {p0, p1, p2}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 519
    :try_start_0
    sget-object v0, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    invoke-virtual {v0, p0}, Ljcifs/netbios/NameServiceClient;->getNodeStatus(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object v0

    .line 520
    invoke-static {v0}, Ljcifs/netbios/NbtAddress;->cacheAddressArray([Ljcifs/netbios/NbtAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 523
    :catch_0
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no name with type 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v2, v2, Ljcifs/netbios/Name;->hexCode:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v2, v2, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v2, v2, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " with scope "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v3, v3, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, " with no scope"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 463
    sget-object v0, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    new-instance v1, Ljcifs/netbios/Name;

    invoke-direct {v1, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Ljcifs/netbios/NameServiceClient;->getAllByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getByName(Ljava/lang/String;)Ljcifs/netbios/NbtAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 379
    invoke-static {p0, v0, v1}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 403
    invoke-static {p0, p1, p2, v0}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    if-eqz p0, :cond_c

    .line 418
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    .line 421
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 422
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0

    .line 426
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 428
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_9

    .line 429
    aget-char v5, v1, v2

    const/16 v6, 0x30

    if-lt v5, v6, :cond_8

    const/16 v7, 0x39

    if-le v5, v7, :cond_2

    goto :goto_4

    :cond_2
    move v8, v2

    const/4 v2, 0x0

    :goto_1
    const/16 v9, 0x2e

    if-eq v5, v9, :cond_6

    if-lt v5, v6, :cond_5

    if-le v5, v7, :cond_3

    goto :goto_2

    :cond_3
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    sub-int/2addr v2, v6

    add-int/lit8 v8, v8, 0x1

    .line 440
    array-length v5, v1

    if-lt v8, v5, :cond_4

    goto :goto_3

    .line 443
    :cond_4
    aget-char v5, v1, v8

    goto :goto_1

    .line 436
    :cond_5
    :goto_2
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_3
    const/16 v5, 0xff

    if-le v2, v5, :cond_7

    .line 446
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0

    :cond_7
    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v8, 0x1

    goto :goto_0

    .line 431
    :cond_8
    :goto_4
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 v1, 0x4

    if-ne v3, v1, :cond_b

    const-string v1, "."

    .line 451
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    .line 454
    :cond_a
    new-instance p0, Ljcifs/netbios/NbtAddress;

    sget-object p1, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    invoke-direct {p0, p1, v4, v0, v0}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZI)V

    return-object p0

    .line 452
    :cond_b
    :goto_5
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/NbtAddress;->doNameQuery(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0

    .line 419
    :cond_c
    :goto_6
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    move-result-object p0

    return-object p0
.end method

.method static getCachedAddress(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;
    .locals 6

    .line 277
    sget v0, Ljcifs/netbios/NbtAddress;->CACHE_POLICY:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 280
    :cond_0
    sget-object v0, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    monitor-enter v0

    .line 281
    :try_start_0
    sget-object v2, Ljcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljcifs/netbios/NbtAddress$CacheEntry;

    if-eqz p0, :cond_1

    .line 282
    iget-wide v2, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-wide v2, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    move-object p0, v1

    :cond_1
    if-eqz p0, :cond_2

    .line 286
    iget-object v1, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->address:Ljcifs/netbios/NbtAddress;

    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 287
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getLocalHost()Ljcifs/netbios/NbtAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 361
    sget-object v0, Ljcifs/netbios/NbtAddress;->localhost:Ljcifs/netbios/NbtAddress;

    return-object v0
.end method

.method public static getLocalName()Ljcifs/netbios/Name;
    .locals 1

    .line 364
    sget-object v0, Ljcifs/netbios/NbtAddress;->localhost:Ljcifs/netbios/NbtAddress;

    iget-object v0, v0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    return-object v0
.end method

.method public static getWINSAddress()Ljava/net/InetAddress;
    .locals 2

    .line 533
    sget-object v0, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    sget v1, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public static isWINS(Ljava/net/InetAddress;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 536
    sget-object v2, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 537
    invoke-virtual {p0}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    sget-object v3, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/net/InetAddress;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static switchWINS()Ljava/net/InetAddress;
    .locals 2

    .line 544
    sget v0, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget v0, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    .line 545
    sget-object v0, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    sget-object v0, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    sget v1, Ljcifs/netbios/NbtAddress;->nbnsIndex:I

    aget-object v0, v0, v1

    :goto_1
    return-object v0
.end method

.method private static updateLookupTable(Ljcifs/netbios/Name;)V
    .locals 2

    .line 347
    sget-object v0, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    monitor-enter v0

    .line 348
    :try_start_0
    sget-object v1, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object p0, Ljcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 350
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method checkData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 690
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    sget-object v1, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    if-ne v0, v1, :cond_0

    .line 691
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    :cond_0
    return-void
.end method

.method checkNodeStatusData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 695
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    if-nez v0, :cond_0

    .line 696
    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getAllByAddress(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 868
    instance-of v0, p1, Ljcifs/netbios/NbtAddress;

    if-eqz v0, :cond_0

    check-cast p1, Ljcifs/netbios/NbtAddress;

    iget p1, p1, Ljcifs/netbios/NbtAddress;->address:I

    iget v0, p0, Ljcifs/netbios/NbtAddress;->address:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public firstCalledName()Ljava/lang/String;
    .locals 6

    .line 598
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v0, v0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 600
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 605
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 606
    iget-object v2, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    add-int/lit8 v4, v1, 0x1

    .line 607
    aget-char v1, v2, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne v4, v0, :cond_0

    const/4 v1, 0x3

    if-ne v3, v1, :cond_0

    const-string v0, "*SMBSERVER     "

    .line 610
    iput-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    goto :goto_1

    :cond_0
    if-ge v4, v0, :cond_1

    .line 613
    aget-char v1, v2, v4

    const/16 v5, 0x2e

    if-ne v1, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v4, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_0

    .line 619
    :cond_2
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v0, v0, Ljcifs/netbios/Name;->hexCode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "*SMBSERVER     "

    .line 623
    iput-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 627
    :cond_3
    :goto_1
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAddress()[B
    .locals 3

    const/4 v0, 0x4

    .line 812
    new-array v0, v0, [B

    .line 814
    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 815
    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 816
    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 817
    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 2

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 2

    .line 797
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    sget-object v1, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    if-ne v0, v1, :cond_0

    .line 798
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 800
    :cond_0
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v0, v0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 828
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 779
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 780
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->macAddress:[B

    return-object v0
.end method

.method public getNameType()I
    .locals 1

    .line 847
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v0, v0, Ljcifs/netbios/Name;->hexCode:I

    return v0
.end method

.method public getNodeType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 722
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkData()V

    .line 723
    iget v0, p0, Ljcifs/netbios/NbtAddress;->nodeType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 858
    iget v0, p0, Ljcifs/netbios/NbtAddress;->address:I

    return v0
.end method

.method public isActive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 755
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 756
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isActive:Z

    return v0
.end method

.method public isBeingDeleted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 733
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 734
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isBeingDeleted:Z

    return v0
.end method

.method public isGroupAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 708
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkData()V

    .line 709
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->groupName:Z

    return v0
.end method

.method public isInConflict()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 744
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 745
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isInConflict:Z

    return v0
.end method

.method public isPermanent()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 766
    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 767
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isPermanent:Z

    return v0
.end method

.method public nextCalledName()Ljava/lang/String;
    .locals 5

    .line 631
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    iget-object v1, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v1, v1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    const-string v0, "*SMBSERVER     "

    .line 632
    iput-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    goto :goto_1

    .line 633
    :cond_0
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    const-string v1, "*SMBSERVER     "

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 637
    :try_start_0
    sget-object v0, Ljcifs/netbios/NbtAddress;->CLIENT:Ljcifs/netbios/NameServiceClient;

    invoke-virtual {v0, p0}, Ljcifs/netbios/NameServiceClient;->getNodeStatus(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object v0

    .line 638
    iget-object v1, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v1, v1, Ljcifs/netbios/Name;->hexCode:I

    const/16 v3, 0x1d

    if-ne v1, v3, :cond_3

    const/4 v1, 0x0

    .line 639
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 640
    aget-object v3, v0, v1

    iget-object v3, v3, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v3, v3, Ljcifs/netbios/Name;->hexCode:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 641
    aget-object v0, v0, v1

    iget-object v0, v0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v0, v0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    .line 645
    :cond_3
    iget-boolean v0, p0, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    if-eqz v0, :cond_5

    .line 649
    iput-object v2, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 650
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v0, v0, Ljcifs/netbios/Name;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 653
    :catch_0
    iput-object v2, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    goto :goto_1

    .line 656
    :cond_4
    iput-object v2, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 659
    :cond_5
    :goto_1
    iget-object v0, p0, Ljcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    invoke-virtual {v1}, Ljcifs/netbios/Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
