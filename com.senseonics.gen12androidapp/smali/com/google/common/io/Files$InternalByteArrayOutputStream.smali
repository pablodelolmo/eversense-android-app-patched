.class final Lcom/google/common/io/Files$InternalByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalByteArrayOutputStream"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/io/Files$1;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Lcom/google/common/io/Files$InternalByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method writeTo([BI)V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/google/common/io/Files$InternalByteArrayOutputStream;->buf:[B

    iget v1, p0, Lcom/google/common/io/Files$InternalByteArrayOutputStream;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
