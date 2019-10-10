.class public Lcom/senseonics/authentication/AuthenticationRepository$Header;
.super Ljava/lang/Object;
.source "AuthenticationRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/authentication/AuthenticationRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/senseonics/authentication/AuthenticationRepository$Header;->name:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/senseonics/authentication/AuthenticationRepository$Header;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 79
    :cond_1
    check-cast p1, Lcom/senseonics/authentication/AuthenticationRepository$Header;

    .line 81
    iget-object v2, p0, Lcom/senseonics/authentication/AuthenticationRepository$Header;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/senseonics/authentication/AuthenticationRepository$Header;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/senseonics/authentication/AuthenticationRepository$Header;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/senseonics/authentication/AuthenticationRepository$Header;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 82
    :cond_3
    iget-object v2, p0, Lcom/senseonics/authentication/AuthenticationRepository$Header;->value:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository$Header;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/senseonics/authentication/AuthenticationRepository$Header;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lcom/senseonics/authentication/AuthenticationRepository$Header;->value:Ljava/lang/String;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method
