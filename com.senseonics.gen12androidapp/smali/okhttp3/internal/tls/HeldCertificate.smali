.class public final Lokhttp3/internal/tls/HeldCertificate;
.super Ljava/lang/Object;
.source "HeldCertificate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/tls/HeldCertificate$Builder;
    }
.end annotation


# instance fields
.field public final certificate:Ljava/security/cert/X509Certificate;

.field public final keyPair:Ljava/security/KeyPair;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/security/KeyPair;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lokhttp3/internal/tls/HeldCertificate;->certificate:Ljava/security/cert/X509Certificate;

    .line 51
    iput-object p2, p0, Lokhttp3/internal/tls/HeldCertificate;->keyPair:Ljava/security/KeyPair;

    return-void
.end method
