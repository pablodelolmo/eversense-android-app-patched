.class public Ljcifs/smb/Dfs;
.super Ljava/lang/Object;
.source "Dfs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/Dfs$CacheEntry;
    }
.end annotation


# static fields
.field static final DISABLED:Z

.field protected static FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

.field static final TTL:J

.field static log:Ljcifs/util/LogStream;

.field static final strictView:Z


# instance fields
.field protected _domains:Ljcifs/smb/Dfs$CacheEntry;

.field protected referrals:Ljcifs/smb/Dfs$CacheEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    const-string v0, "jcifs.smb.client.dfs.strictView"

    const/4 v1, 0x0

    .line 43
    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/Dfs;->strictView:Z

    const-string v0, "jcifs.smb.client.dfs.ttl"

    const-wide/16 v2, 0x12c

    .line 44
    invoke-static {v0, v2, v3}, Ljcifs/Config;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Ljcifs/smb/Dfs;->TTL:J

    const-string v0, "jcifs.smb.client.dfs.disabled"

    .line 45
    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z

    .line 47
    new-instance v0, Ljcifs/smb/Dfs$CacheEntry;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    sput-object v0, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    .line 50
    iput-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    return-void
.end method


# virtual methods
.method public getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbAuthException;
        }
    .end annotation

    .line 98
    sget-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 102
    :try_start_0
    invoke-static {p1, v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v2

    const/4 v3, 0x0

    .line 103
    invoke-static {v2, v3}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v2

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1, v0}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_3

    move-object p2, p1

    .line 111
    :cond_1
    :try_start_1
    iget-object v0, p2, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-static {v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v0

    .line 112
    invoke-static {v0, v3}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 117
    :try_start_2
    iget-object p2, p2, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-ne p2, p1, :cond_1

    .line 120
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 123
    sget-object p2, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 v0, 0x3

    if-lt p2, v0, :cond_2

    .line 124
    sget-object p2, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 125
    :cond_2
    sget-boolean p2, Ljcifs/smb/Dfs;->strictView:Z

    if-eqz p2, :cond_3

    instance-of p2, p1, Ljcifs/smb/SmbAuthException;

    if-eqz p2, :cond_3

    .line 126
    check-cast p1, Ljcifs/smb/SmbAuthException;

    throw p1

    :cond_3
    return-object v1
.end method

.method public getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbAuthException;
        }
    .end annotation

    .line 136
    sget-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 140
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\\"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_1

    .line 142
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    const/4 p3, 0x0

    .line 143
    invoke-virtual {p1, p5, p2, p3}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    return-object p1

    :catch_0
    move-exception p1

    .line 147
    sget-object p2, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 p3, 0x4

    if-lt p2, p3, :cond_2

    .line 148
    sget-object p2, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 149
    :cond_2
    sget-boolean p2, Ljcifs/smb/Dfs;->strictView:Z

    if-eqz p2, :cond_3

    instance-of p2, p1, Ljcifs/smb/SmbAuthException;

    if-eqz p2, :cond_3

    .line 150
    check-cast p1, Ljcifs/smb/SmbAuthException;

    throw p1

    :cond_3
    return-object v1
.end method

.method public getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbAuthException;
        }
    .end annotation

    .line 53
    sget-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const-string v2, "?"

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    iget-wide v4, v0, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 57
    iput-object v1, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    .line 59
    :cond_1
    iget-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v0, :cond_2

    .line 60
    iget-object p1, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    iget-object p1, p1, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    return-object p1

    .line 62
    :cond_2
    :try_start_0
    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v0

    const/4 v2, 0x0

    .line 63
    invoke-static {v0, v2}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v0

    .line 64
    new-instance v3, Ljcifs/smb/Dfs$CacheEntry;

    sget-wide v4, Ljcifs/smb/Dfs;->TTL:J

    const-wide/16 v6, 0xa

    mul-long v4, v4, v6

    invoke-direct {v3, v4, v5}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    const-string v4, ""

    .line 66
    invoke-virtual {v0, p1, v4, v2}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object p1

    if-eqz p1, :cond_5

    move-object v0, p1

    .line 70
    :cond_3
    iget-object v2, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 71
    iget-object v4, v3, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, v0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-ne v0, p1, :cond_3

    .line 75
    iput-object v3, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    .line 76
    iget-object p1, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    iget-object p1, p1, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 79
    sget-object v0, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_4

    .line 80
    sget-object v0, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 81
    :cond_4
    sget-boolean v0, Ljcifs/smb/Dfs;->strictView:Z

    if-eqz v0, :cond_5

    instance-of v0, p1, Ljcifs/smb/SmbAuthException;

    if-eqz v0, :cond_5

    .line 82
    check-cast p1, Ljcifs/smb/SmbAuthException;

    throw p1

    :cond_5
    return-object v1

    :cond_6
    :goto_0
    return-object v1
.end method

.method declared-synchronized insert(Ljava/lang/String;Ljcifs/smb/DfsReferral;)V
    .locals 7

    monitor-enter p0

    .line 289
    :try_start_0
    sget-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 290
    monitor-exit p0

    return-void

    :cond_0
    const/16 v0, 0x5c

    const/4 v1, 0x1

    .line 292
    :try_start_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    .line 293
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 294
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 297
    iget v4, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    if-le v4, v1, :cond_1

    add-int/lit8 v6, v4, -0x1

    .line 306
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v0, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 310
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 317
    :cond_2
    iget v0, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    sub-int/2addr v0, v2

    iput v0, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 319
    iget-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    iget-object v2, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-wide v2, v2, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 322
    :cond_3
    iget-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-nez v0, :cond_4

    .line 323
    new-instance v0, Ljcifs/smb/Dfs$CacheEntry;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    iput-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 325
    :cond_4
    iget-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v0, v0, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 288
    monitor-exit p0

    throw p1
.end method

.method public isTrustedDomain(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbAuthException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p2}, Ljcifs/smb/Dfs;->getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 93
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public declared-synchronized resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbAuthException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    monitor-enter p0

    .line 160
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 162
    sget-boolean v1, Ljcifs/smb/Dfs;->DISABLED:Z

    const/4 v12, 0x0

    if-nez v1, :cond_17

    const-string v1, "IPC$"

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 167
    :cond_0
    invoke-virtual {v7, v9}, Ljcifs/smb/Dfs;->getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v15, 0x1

    if-eqz v1, :cond_e

    .line 169
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 172
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/HashMap;

    if-eqz v5, :cond_d

    .line 176
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v1, :cond_1

    .line 182
    iget-wide v2, v1, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v2, v10, v2

    if-lez v2, :cond_1

    .line 183
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v12

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_7

    .line 188
    invoke-virtual {v7, v6, v9}, Ljcifs/smb/Dfs;->getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v16, :cond_2

    .line 189
    monitor-exit p0

    return-object v12

    :cond_2
    move-object v1, v7

    move-object/from16 v2, v16

    move-object v12, v3

    move-object v3, v6

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object v5, v8

    move-object v13, v6

    move-object v6, v9

    .line 191
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Ljcifs/smb/Dfs;->getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 193
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v15

    add-int/2addr v2, v15

    move-object/from16 v14, v17

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 195
    new-instance v12, Ljcifs/smb/Dfs$CacheEntry;

    const-wide/16 v3, 0x0

    invoke-direct {v12, v3, v4}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    move-object v3, v1

    :cond_3
    if-nez v8, :cond_4

    .line 206
    iget-object v4, v12, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    iput-object v4, v3, Ljcifs/smb/DfsReferral;->map:Ljava/util/Map;

    const-string v4, "\\"

    .line 207
    iput-object v4, v3, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    .line 209
    :cond_4
    iget v4, v3, Ljcifs/smb/DfsReferral;->pathConsumed:I

    sub-int/2addr v4, v2

    iput v4, v3, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 210
    iget-object v3, v3, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-ne v3, v1, :cond_3

    .line 213
    iget-object v2, v1, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 214
    iget-object v2, v12, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    iget-object v3, v1, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object/from16 v4, v18

    .line 216
    invoke-virtual {v4, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    move-object/from16 v14, v17

    move-object/from16 v4, v18

    if-nez v8, :cond_9

    .line 218
    sget-object v2, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    invoke-virtual {v4, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    move-object v12, v3

    move-object v14, v4

    move-object v13, v6

    .line 220
    sget-object v1, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    if-ne v12, v1, :cond_8

    const/4 v1, 0x0

    const/4 v12, 0x0

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :goto_1
    const/16 v16, 0x0

    :cond_9
    :goto_2
    if-eqz v12, :cond_f

    const-string v6, "\\"

    .line 230
    iget-object v1, v12, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/DfsReferral;

    if-eqz v1, :cond_a

    .line 231
    iget-wide v2, v1, Ljcifs/smb/DfsReferral;->expiration:J

    cmp-long v2, v10, v2

    if-lez v2, :cond_a

    .line 232
    iget-object v1, v12, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_a
    if-nez v1, :cond_f

    if-nez v16, :cond_c

    .line 238
    invoke-virtual {v7, v13, v9}, Ljcifs/smb/Dfs;->getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_b

    .line 239
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    :cond_b
    move-object v2, v1

    goto :goto_3

    :cond_c
    move-object/from16 v2, v16

    :goto_3
    move-object v1, v7

    move-object v3, v13

    move-object v4, v14

    move-object v5, v8

    move-object/from16 v19, v6

    move-object v6, v9

    .line 240
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Ljcifs/smb/Dfs;->getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 242
    iget v2, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v15

    add-int/2addr v3, v15

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    move-object/from16 v2, v19

    .line 243
    iput-object v2, v1, Ljcifs/smb/DfsReferral;->link:Ljava/lang/String;

    .line 244
    iget-object v3, v12, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_d
    move-object v13, v6

    goto :goto_4

    :cond_e
    move-object/from16 v13, p1

    :goto_4
    move-object v14, v2

    const/4 v1, 0x0

    :cond_f
    :goto_5
    if-nez v1, :cond_16

    if-eqz v8, :cond_16

    .line 255
    iget-object v2, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v2, :cond_10

    iget-object v2, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-wide v2, v2, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v2, v10, v2

    if-lez v2, :cond_10

    const/4 v2, 0x0

    .line 256
    iput-object v2, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 258
    :cond_10
    iget-object v2, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-nez v2, :cond_11

    .line 259
    new-instance v2, Ljcifs/smb/Dfs$CacheEntry;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    iput-object v2, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 261
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    .line 262
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 266
    iget-object v3, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v3, v3, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 267
    :cond_13
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 268
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 269
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 272
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x0

    if-ne v5, v6, :cond_14

    .line 273
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_7

    .line 274
    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_15

    .line 275
    invoke-virtual {v4, v8, v2, v8, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_15

    const/4 v8, 0x1

    :cond_15
    :goto_7
    if-eqz v8, :cond_13

    .line 279
    iget-object v1, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v1, v1, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/DfsReferral;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 283
    :cond_16
    monitor-exit p0

    return-object v1

    .line 163
    :cond_17
    :goto_8
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 158
    monitor-exit p0

    throw v1
.end method
