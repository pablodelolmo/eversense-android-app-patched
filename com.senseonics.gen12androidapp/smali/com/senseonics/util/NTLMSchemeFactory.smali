.class public Lcom/senseonics/util/NTLMSchemeFactory;
.super Ljava/lang/Object;
.source "NTLMSchemeFactory.java"

# interfaces
.implements Lorg/apache/http/auth/AuthSchemeFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    .locals 1

    .line 14
    new-instance p1, Lorg/apache/http/impl/auth/NTLMScheme;

    new-instance v0, Lcom/senseonics/util/JCIFSEngine;

    invoke-direct {v0}, Lcom/senseonics/util/JCIFSEngine;-><init>()V

    invoke-direct {p1, v0}, Lorg/apache/http/impl/auth/NTLMScheme;-><init>(Lorg/apache/http/impl/auth/NTLMEngine;)V

    return-object p1
.end method
