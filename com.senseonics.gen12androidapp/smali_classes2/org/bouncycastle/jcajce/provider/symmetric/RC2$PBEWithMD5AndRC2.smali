.class public Lorg/bouncycastle/jcajce/provider/symmetric/RC2$PBEWithMD5AndRC2;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/RC2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithMD5AndRC2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/RC2Engine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/RC2Engine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method
