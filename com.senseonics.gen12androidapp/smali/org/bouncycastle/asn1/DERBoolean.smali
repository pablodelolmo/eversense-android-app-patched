.class public Lorg/bouncycastle/asn1/DERBoolean;
.super Lorg/bouncycastle/asn1/ASN1Primitive;


# static fields
.field public static final FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private static final FALSE_VALUE:[B

.field public static final TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private static final TRUE_VALUE:[B


# instance fields
.field private value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    sput-object v1, Lorg/bouncycastle/asn1/DERBoolean;->TRUE_VALUE:[B

    new-array v1, v0, [B

    aput-byte v2, v1, v2

    sput-object v1, Lorg/bouncycastle/asn1/DERBoolean;->FALSE_VALUE:[B

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v1, Lorg/bouncycastle/asn1/DERBoolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v1, Lorg/bouncycastle/asn1/DERBoolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lorg/bouncycastle/asn1/DERBoolean;->TRUE_VALUE:[B

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/bouncycastle/asn1/DERBoolean;->FALSE_VALUE:[B

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/DERBoolean;->value:[B

    return-void
.end method

.method constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byte value should have 1 byte in it"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-nez v1, :cond_1

    sget-object p1, Lorg/bouncycastle/asn1/DERBoolean;->FALSE_VALUE:[B

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/DERBoolean;->value:[B

    return-void

    :cond_1
    aget-byte v0, p1, v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    sget-object p1, Lorg/bouncycastle/asn1/DERBoolean;->TRUE_VALUE:[B

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    goto :goto_0

    return-void
.end method

.method static fromOctetString([B)Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BOOLEAN value should have 1 byte in it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    if-nez v1, :cond_1

    sget-object p0, Lorg/bouncycastle/asn1/DERBoolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object p0

    :cond_1
    aget-byte v0, p0, v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    sget-object p0, Lorg/bouncycastle/asn1/DERBoolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object p0

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1Boolean;-><init>([B)V

    return-object v0
.end method

.method public static getInstance(I)Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/DERBoolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object p0

    :cond_0
    sget-object p0, Lorg/bouncycastle/asn1/DERBoolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/DERBoolean;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/bouncycastle/asn1/DERBoolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object p0

    :cond_1
    sget-object p0, Lorg/bouncycastle/asn1/DERBoolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    if-nez p1, :cond_1

    instance-of p1, p0, Lorg/bouncycastle/asn1/DERBoolean;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Boolean;->fromOctetString([B)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/DERBoolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object p0

    :cond_0
    sget-object p0, Lorg/bouncycastle/asn1/DERBoolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object p0
.end method


# virtual methods
.method protected asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/bouncycastle/asn1/DERBoolean;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/DERBoolean;->value:[B

    aget-byte v1, v1, v0

    check-cast p1, Lorg/bouncycastle/asn1/DERBoolean;

    iget-object p1, p1, Lorg/bouncycastle/asn1/DERBoolean;->value:[B

    aget-byte p1, p1, v0

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBoolean;->value:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method encodedLength()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBoolean;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method isConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTrue()Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBoolean;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBoolean;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    return-object v0

    :cond_0
    const-string v0, "FALSE"

    return-object v0
.end method
