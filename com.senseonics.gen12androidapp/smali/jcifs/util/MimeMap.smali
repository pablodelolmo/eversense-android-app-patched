.class public Ljcifs/util/MimeMap;
.super Ljava/lang/Object;
.source "MimeMap.java"


# static fields
.field private static final IN_SIZE:I = 0x1b58

.field private static final ST_COMM:I = 0x2

.field private static final ST_EXT:I = 0x5

.field private static final ST_GAP:I = 0x4

.field private static final ST_START:I = 0x1

.field private static final ST_TYPE:I = 0x3


# instance fields
.field private in:[B

.field private inLen:I


# direct methods
.method public constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1b58

    .line 40
    new-array v1, v0, [B

    iput-object v1, p0, Ljcifs/util/MimeMap;->in:[B

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "jcifs/util/mime.map"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    .line 43
    iput v2, p0, Ljcifs/util/MimeMap;->inLen:I

    .line 44
    :goto_0
    iget-object v2, p0, Ljcifs/util/MimeMap;->in:[B

    iget v3, p0, Ljcifs/util/MimeMap;->inLen:I

    iget v4, p0, Ljcifs/util/MimeMap;->inLen:I

    rsub-int v4, v4, 0x1b58

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 45
    iget v3, p0, Ljcifs/util/MimeMap;->inLen:I

    add-int/2addr v3, v2

    iput v3, p0, Ljcifs/util/MimeMap;->inLen:I

    goto :goto_0

    .line 47
    :cond_0
    iget v2, p0, Ljcifs/util/MimeMap;->inLen:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    iget v2, p0, Ljcifs/util/MimeMap;->inLen:I

    if-ne v2, v0, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void

    .line 48
    :cond_2
    :goto_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error reading jcifs/util/mime.map resource"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "application/octet-stream"

    .line 54
    invoke-virtual {p0, p1, v0}, Ljcifs/util/MimeMap;->getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x80

    .line 59
    new-array v1, v1, [B

    const/16 v2, 0x10

    .line 60
    new-array v2, v2, [B

    .line 61
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 65
    :goto_0
    iget v10, v0, Ljcifs/util/MimeMap;->inLen:I

    if-ge v6, v10, :cond_b

    .line 66
    iget-object v10, v0, Ljcifs/util/MimeMap;->in:[B

    aget-byte v10, v10, v6

    const/16 v11, 0xa

    const/4 v12, 0x2

    const/16 v13, 0x23

    const/16 v14, 0x9

    const/16 v15, 0x20

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-eq v10, v15, :cond_a

    if-ne v10, v14, :cond_0

    goto :goto_4

    :cond_0
    const/4 v7, 0x5

    :pswitch_1
    if-eq v10, v15, :cond_1

    if-eq v10, v13, :cond_1

    packed-switch v10, :pswitch_data_1

    add-int/lit8 v11, v8, 0x1

    .line 115
    aput-byte v10, v2, v8

    move v8, v11

    goto :goto_4

    :cond_1
    :pswitch_2
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v8, :cond_2

    .line 100
    array-length v15, v3

    if-ne v8, v15, :cond_2

    aget-byte v15, v2, v14

    aget-byte v5, v3, v14

    if-ne v15, v5, :cond_2

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 103
    :cond_2
    array-length v5, v3

    if-ne v14, v5, :cond_3

    .line 104
    new-instance v2, Ljava/lang/String;

    const-string v3, "ASCII"

    invoke-direct {v2, v1, v4, v9, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2

    :cond_3
    if-ne v10, v13, :cond_4

    goto :goto_2

    :cond_4
    if-ne v10, v11, :cond_5

    const/4 v9, 0x0

    const/4 v12, 0x1

    goto :goto_2

    :cond_5
    move v12, v7

    :goto_2
    move v7, v12

    const/4 v8, 0x0

    goto :goto_4

    :pswitch_3
    if-ne v10, v11, :cond_a

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_4

    :pswitch_4
    if-eq v10, v15, :cond_a

    if-ne v10, v14, :cond_6

    goto :goto_4

    :cond_6
    if-ne v10, v13, :cond_7

    const/4 v7, 0x2

    goto :goto_4

    :cond_7
    const/4 v7, 0x3

    :pswitch_5
    if-eq v10, v15, :cond_9

    if-ne v10, v14, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v5, v9, 0x1

    .line 80
    aput-byte v10, v1, v9

    move v9, v5

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v5, 0x4

    const/4 v7, 0x4

    :cond_a
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_b
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
