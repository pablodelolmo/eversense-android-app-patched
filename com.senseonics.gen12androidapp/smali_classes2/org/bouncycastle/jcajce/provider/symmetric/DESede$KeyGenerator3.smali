.class public Lorg/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator3;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenerator3"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "DESede3"

    new-instance v1, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    const/16 v2, 0xc0

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherKeyGenerator;)V

    return-void
.end method
