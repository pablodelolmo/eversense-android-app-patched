.class public Lorg/bouncycastle/crypto/tls/TlsRuntimeException;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final serialVersionUID:J = 0x1ac1b7258a020516L


# instance fields
.field e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsRuntimeException;->e:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsRuntimeException;->e:Ljava/lang/Throwable;

    return-object v0
.end method
