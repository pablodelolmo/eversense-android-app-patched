.class public Lorg/bouncycastle/util/encoders/BufferedEncoder;
.super Ljava/lang/Object;


# instance fields
.field protected buf:[B

.field protected bufOff:I

.field protected translator:Lorg/bouncycastle/util/encoders/Translator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/util/encoders/Translator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->translator:Lorg/bouncycastle/util/encoders/Translator;

    invoke-interface {p1}, Lorg/bouncycastle/util/encoders/Translator;->getEncodedBlockSize()I

    move-result p1

    rem-int p1, p2, p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer size not multiple of input block size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-array p1, p2, [B

    iput-object p1, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->buf:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->bufOff:I

    return-void
.end method


# virtual methods
.method public processByte(B[BI)I
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->buf:[B

    iget v1, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->bufOff:I

    aput-byte p1, v0, v1

    iget p1, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->bufOff:I

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->buf:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->translator:Lorg/bouncycastle/util/encoders/Translator;

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->buf:[B

    const/4 v4, 0x0

    iget-object p1, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->buf:[B

    array-length v5, p1

    move-object v6, p2

    move v7, p3

    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/util/encoders/Translator;->encode([BII[BI)I

    move-result p1

    iput v1, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->bufOff:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public processBytes([BII[BI)I
    .locals 10

    if-gez p3, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->bufOff:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-le p3, v0, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->buf:[B

    iget v3, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->bufOff:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->translator:Lorg/bouncycastle/util/encoders/Translator;

    iget-object v5, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->buf:[B

    const/4 v6, 0x0

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->buf:[B

    array-length v7, v2

    move-object v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lorg/bouncycastle/util/encoders/Translator;->encode([BII[BI)I

    move-result v2

    add-int/2addr v2, v1

    iput v1, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->bufOff:I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    add-int v8, p5, v2

    iget-object p5, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->buf:[B

    array-length p5, p5

    rem-int p5, p3, p5

    sub-int p5, p3, p5

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->translator:Lorg/bouncycastle/util/encoders/Translator;

    move-object v4, p1

    move v5, p2

    move v6, p5

    move-object v7, p4

    invoke-interface/range {v3 .. v8}, Lorg/bouncycastle/util/encoders/Translator;->encode([BII[BI)I

    move-result p4

    add-int v1, v2, p4

    sub-int/2addr p3, p5

    add-int/2addr p2, p5

    :cond_1
    if-eqz p3, :cond_2

    iget-object p4, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->buf:[B

    iget p5, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->bufOff:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/util/encoders/BufferedEncoder;->bufOff:I

    :cond_2
    return v1
.end method
