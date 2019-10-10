.class public final Lcom/senseonics/util/AccountConstants$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "AccountConstants$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/util/AccountConstants;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/util/AccountConstants;",
        ">;"
    }
.end annotation


# instance fields
.field private alertHelper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/AlertHelper;",
            ">;"
        }
    .end annotation
.end field

.field private contextIn:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private databaseManagerIn:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/db/DatabaseManager;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPreferences:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterStateModelIn:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/TransmitterStateModel;",
            ">;"
        }
    .end annotation
.end field

.field private userInfoSecureStorerIn:Ldagger/internal/Binding;
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

    const-string v0, "com.senseonics.util.AccountConstants"

    const-string v1, "members/com.senseonics.util.AccountConstants"

    .line 29
    const-class v2, Lcom/senseonics/util/AccountConstants;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "android.content.Context"

    .line 39
    const-class v1, Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->contextIn:Ldagger/internal/Binding;

    const-string v0, "android.content.SharedPreferences"

    .line 40
    const-class v1, Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.UserInfoSecureStorer"

    .line 41
    const-class v1, Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->userInfoSecureStorerIn:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.TransmitterStateModel"

    .line 42
    const-class v1, Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->transmitterStateModelIn:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.db.DatabaseManager"

    .line 43
    const-class v1, Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->databaseManagerIn:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.AlertHelper"

    .line 44
    const-class v1, Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->alertHelper:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/util/AccountConstants;
    .locals 8

    .line 67
    new-instance v7, Lcom/senseonics/util/AccountConstants;

    iget-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->contextIn:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->userInfoSecureStorerIn:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/senseonics/util/UserInfoSecureStorer;

    iget-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->transmitterStateModelIn:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/senseonics/model/TransmitterStateModel;

    iget-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->databaseManagerIn:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/senseonics/db/DatabaseManager;

    iget-object v0, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->alertHelper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/senseonics/util/AlertHelper;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/util/AccountConstants;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/senseonics/util/UserInfoSecureStorer;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/AlertHelper;)V

    return-object v7
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->get()Lcom/senseonics/util/AccountConstants;

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

    .line 53
    iget-object p2, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->contextIn:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p2, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p2, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->userInfoSecureStorerIn:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p2, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->transmitterStateModelIn:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object p2, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->databaseManagerIn:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p2, p0, Lcom/senseonics/util/AccountConstants$$InjectAdapter;->alertHelper:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
