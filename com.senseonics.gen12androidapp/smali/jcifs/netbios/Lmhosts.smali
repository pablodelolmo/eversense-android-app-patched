.class public Ljcifs/netbios/Lmhosts;
.super Ljava/lang/Object;
.source "Lmhosts.java"


# static fields
.field private static final FILENAME:Ljava/lang/String;

.field private static final TAB:Ljava/util/Hashtable;

.field private static alt:I = 0x0

.field private static lastModified:J = 0x1L

.field private static log:Ljcifs/util/LogStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jcifs.netbios.lmhosts"

    .line 36
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/Lmhosts;->FILENAME:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljcifs/netbios/Lmhosts;->TAB:Ljava/util/Hashtable;

    .line 40
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getByName(Ljava/lang/String;)Ljcifs/netbios/NbtAddress;
    .locals 4

    const-class v0, Ljcifs/netbios/Lmhosts;

    monitor-enter v0

    .line 50
    :try_start_0
    new-instance v1, Ljcifs/netbios/Name;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v1}, Ljcifs/netbios/Lmhosts;->getByName(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getByName(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;
    .locals 7

    const-class v0, Ljcifs/netbios/Lmhosts;

    monitor-enter v0

    const/4 v1, 0x0

    .line 57
    :try_start_0
    sget-object v2, Ljcifs/netbios/Lmhosts;->FILENAME:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 58
    new-instance v2, Ljava/io/File;

    sget-object v3, Ljcifs/netbios/Lmhosts;->FILENAME:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sget-wide v5, Ljcifs/netbios/Lmhosts;->lastModified:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 62
    sput-wide v3, Ljcifs/netbios/Lmhosts;->lastModified:J

    .line 63
    sget-object v3, Ljcifs/netbios/Lmhosts;->TAB:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    const/4 v3, 0x0

    .line 64
    sput v3, Ljcifs/netbios/Lmhosts;->alt:I

    .line 65
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-static {v3}, Ljcifs/netbios/Lmhosts;->populate(Ljava/io/Reader;)V

    .line 67
    :cond_0
    sget-object v2, Ljcifs/netbios/Lmhosts;->TAB:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljcifs/netbios/NbtAddress;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 75
    :try_start_1
    sget-object v2, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lez v2, :cond_1

    .line 76
    sget-object v2, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 70
    sget-object v2, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 71
    sget-object v2, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lmhosts file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljcifs/netbios/Lmhosts;->FILENAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 72
    sget-object v2, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, v2}, Ljava/io/FileNotFoundException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    .line 53
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method static populate(Ljava/io/Reader;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v1, Ljava/io/BufferedReader;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 86
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_6

    const-string v3, "#INCLUDE "

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x5c

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smb:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    sget v3, Ljcifs/netbios/Lmhosts;->alt:I

    if-lez v3, :cond_3

    .line 96
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljcifs/smb/SmbFileInputStream;

    invoke-direct {v4, v2}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3}, Ljcifs/netbios/Lmhosts;->populate(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    sget v2, Ljcifs/netbios/Lmhosts;->alt:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Ljcifs/netbios/Lmhosts;->alt:I

    .line 108
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#END_ALTERNATE"

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 98
    sget-object v4, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lmhosts URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 99
    sget-object v2, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto/16 :goto_0

    .line 115
    :cond_3
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljcifs/smb/SmbFileInputStream;

    invoke-direct {v4, v2}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3}, Ljcifs/netbios/Lmhosts;->populate(Ljava/io/Reader;)V

    goto/16 :goto_0

    :cond_4
    const-string v3, "#BEGIN_ALTERNATE"

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 118
    sget v2, Ljcifs/netbios/Lmhosts;->alt:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Ljcifs/netbios/Lmhosts;->alt:I

    goto/16 :goto_0

    :cond_5
    const-string v3, "#END_ALTERNATE"

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Ljcifs/netbios/Lmhosts;->alt:I

    if-lez v2, :cond_0

    .line 120
    sget v1, Ljcifs/netbios/Lmhosts;->alt:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Ljcifs/netbios/Lmhosts;->alt:I

    .line 121
    new-instance v1, Ljava/io/IOException;

    const-string v2, "no lmhosts alternate includes loaded"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/16 v5, 0x2e

    const/4 v6, 0x0

    const/16 v7, 0x2e

    const/4 v10, 0x0

    .line 132
    :goto_1
    array-length v8, v4

    if-ge v6, v8, :cond_8

    if-ne v7, v5, :cond_8

    const/4 v8, 0x0

    .line 135
    :goto_2
    array-length v9, v4

    if-ge v6, v9, :cond_7

    aget-char v7, v4, v6

    const/16 v9, 0x30

    if-lt v7, v9, :cond_7

    const/16 v11, 0x39

    if-gt v7, v11, :cond_7

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v7

    sub-int/2addr v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    shl-int/lit8 v9, v10, 0x8

    add-int v10, v9, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 140
    :cond_8
    :goto_3
    array-length v3, v4

    if-ge v6, v3, :cond_9

    aget-char v3, v4, v6

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    move v3, v6

    .line 144
    :goto_4
    array-length v5, v4

    if-ge v3, v5, :cond_a

    aget-char v5, v4, v3

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_a

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 148
    :cond_a
    new-instance v4, Ljcifs/netbios/Name;

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 149
    new-instance v2, Ljcifs/netbios/NbtAddress;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    sget-object v17, Ljcifs/netbios/NbtAddress;->UNKNOWN_MAC_ADDRESS:[B

    move-object v8, v2

    move-object v9, v4

    invoke-direct/range {v8 .. v17}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZIZZZZ[B)V

    .line 152
    sget-object v3, Ljcifs/netbios/Lmhosts;->TAB:Ljava/util/Hashtable;

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    return-void
.end method
