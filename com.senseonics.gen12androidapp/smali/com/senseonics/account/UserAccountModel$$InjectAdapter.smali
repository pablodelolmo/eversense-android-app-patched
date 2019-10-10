.class public final Lcom/senseonics/account/UserAccountModel$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "UserAccountModel$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/account/UserAccountModel;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/account/UserAccountModel;",
        ">;"
    }
.end annotation


# instance fields
.field private accountConstants:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/AccountConstants;",
            ">;"
        }
    .end annotation
.end field

.field private secureStorer:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/UserInfoSecureStorer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.account.UserAccountModel"

    const-string v1, "members/com.senseonics.account.UserAccountModel"

    .line 25
    const-class v2, Lcom/senseonics/account/UserAccountModel;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.util.AccountConstants"

    .line 35
    const-class v1, Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/account/UserAccountModel$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.UserInfoSecureStorer"

    .line 36
    const-class v1, Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/account/UserAccountModel$$InjectAdapter;->secureStorer:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/account/UserAccountModel;
    .locals 3

    .line 55
    new-instance v0, Lcom/senseonics/account/UserAccountModel;

    iget-object v1, p0, Lcom/senseonics/account/UserAccountModel$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/AccountConstants;

    iget-object v2, p0, Lcom/senseonics/account/UserAccountModel$$InjectAdapter;->secureStorer:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {v0, v1, v2}, Lcom/senseonics/account/UserAccountModel;-><init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/UserInfoSecureStorer;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/account/UserAccountModel$$InjectAdapter;->get()Lcom/senseonics/account/UserAccountModel;

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

    .line 45
    iget-object p2, p0, Lcom/senseonics/account/UserAccountModel$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object p2, p0, Lcom/senseonics/account/UserAccountModel$$InjectAdapter;->secureStorer:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
