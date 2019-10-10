.class public final Lcom/senseonics/authentication/AuthenticationInterceptor$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "AuthenticationInterceptor$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/authentication/AuthenticationInterceptor;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/authentication/AuthenticationInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private repository:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/authentication/AuthenticationRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.authentication.AuthenticationInterceptor"

    const-string v1, "members/com.senseonics.authentication.AuthenticationInterceptor"

    .line 24
    const-class v2, Lcom/senseonics/authentication/AuthenticationInterceptor;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.authentication.AuthenticationRepository"

    .line 34
    const-class v1, Lcom/senseonics/authentication/AuthenticationInterceptor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/authentication/AuthenticationInterceptor$$InjectAdapter;->repository:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/authentication/AuthenticationInterceptor;
    .locals 2

    .line 52
    new-instance v0, Lcom/senseonics/authentication/AuthenticationInterceptor;

    iget-object v1, p0, Lcom/senseonics/authentication/AuthenticationInterceptor$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/authentication/AuthenticationRepository;

    invoke-direct {v0, v1}, Lcom/senseonics/authentication/AuthenticationInterceptor;-><init>(Lcom/senseonics/authentication/AuthenticationRepository;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/authentication/AuthenticationInterceptor$$InjectAdapter;->get()Lcom/senseonics/authentication/AuthenticationInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .line 43
    iget-object p2, p0, Lcom/senseonics/authentication/AuthenticationInterceptor$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
