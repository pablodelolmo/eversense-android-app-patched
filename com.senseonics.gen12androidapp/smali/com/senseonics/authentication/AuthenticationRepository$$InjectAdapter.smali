.class public final Lcom/senseonics/authentication/AuthenticationRepository$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "AuthenticationRepository$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/authentication/AuthenticationRepository;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/authentication/AuthenticationRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private loginService:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/api/UserLoginService;",
            ">;"
        }
    .end annotation
.end field

.field private model:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/account/UserAccountModel;",
            ">;"
        }
    .end annotation
.end field

.field private timeProvider:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/TimeProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.authentication.AuthenticationRepository"

    const-string v1, "members/com.senseonics.authentication.AuthenticationRepository"

    .line 26
    const-class v2, Lcom/senseonics/authentication/AuthenticationRepository;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.api.UserLoginService"

    .line 36
    const-class v1, Lcom/senseonics/authentication/AuthenticationRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository$$InjectAdapter;->loginService:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.TimeProvider"

    .line 37
    const-class v1, Lcom/senseonics/authentication/AuthenticationRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository$$InjectAdapter;->timeProvider:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.account.UserAccountModel"

    .line 38
    const-class v1, Lcom/senseonics/authentication/AuthenticationRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/authentication/AuthenticationRepository$$InjectAdapter;->model:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/authentication/AuthenticationRepository;
    .locals 4

    .line 58
    new-instance v0, Lcom/senseonics/authentication/AuthenticationRepository;

    iget-object v1, p0, Lcom/senseonics/authentication/AuthenticationRepository$$InjectAdapter;->loginService:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/api/UserLoginService;

    iget-object v2, p0, Lcom/senseonics/authentication/AuthenticationRepository$$InjectAdapter;->timeProvider:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/TimeProvider;

    iget-object v3, p0, Lcom/senseonics/authentication/AuthenticationRepository$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/account/UserAccountModel;

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/authentication/AuthenticationRepository;-><init>(Lcom/senseonics/api/UserLoginService;Lcom/senseonics/util/TimeProvider;Lcom/senseonics/account/UserAccountModel;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/authentication/AuthenticationRepository$$InjectAdapter;->get()Lcom/senseonics/authentication/AuthenticationRepository;

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

    .line 47
    iget-object p2, p0, Lcom/senseonics/authentication/AuthenticationRepository$$InjectAdapter;->loginService:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object p2, p0, Lcom/senseonics/authentication/AuthenticationRepository$$InjectAdapter;->timeProvider:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object p2, p0, Lcom/senseonics/authentication/AuthenticationRepository$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
