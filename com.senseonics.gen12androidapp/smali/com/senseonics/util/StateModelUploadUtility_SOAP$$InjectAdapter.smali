.class public final Lcom/senseonics/util/StateModelUploadUtility_SOAP$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "StateModelUploadUtility_SOAP$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/util/StateModelUploadUtility_SOAP;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/util/StateModelUploadUtility_SOAP;",
        ">;"
    }
.end annotation


# instance fields
.field private accountConstantsIn:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/AccountConstants;",
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

.field private transmitterStateModelIn:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/TransmitterStateModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.util.StateModelUploadUtility_SOAP"

    const-string v1, "members/com.senseonics.util.StateModelUploadUtility_SOAP"

    .line 26
    const-class v2, Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.util.AccountConstants"

    .line 36
    const-class v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$$InjectAdapter;->accountConstantsIn:Ldagger/internal/Binding;

    const-string v0, "android.content.Context"

    .line 37
    const-class v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$$InjectAdapter;->contextIn:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.TransmitterStateModel"

    .line 38
    const-class v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$$InjectAdapter;->transmitterStateModelIn:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/util/StateModelUploadUtility_SOAP;
    .locals 4

    .line 58
    new-instance v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    iget-object v1, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$$InjectAdapter;->accountConstantsIn:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/AccountConstants;

    iget-object v2, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$$InjectAdapter;->contextIn:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$$InjectAdapter;->transmitterStateModelIn:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/model/TransmitterStateModel;

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;-><init>(Lcom/senseonics/util/AccountConstants;Landroid/content/Context;Lcom/senseonics/model/TransmitterStateModel;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/util/StateModelUploadUtility_SOAP$$InjectAdapter;->get()Lcom/senseonics/util/StateModelUploadUtility_SOAP;

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
    iget-object p2, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$$InjectAdapter;->accountConstantsIn:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object p2, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$$InjectAdapter;->contextIn:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object p2, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$$InjectAdapter;->transmitterStateModelIn:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
