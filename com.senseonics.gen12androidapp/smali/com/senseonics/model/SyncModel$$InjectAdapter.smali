.class public final Lcom/senseonics/model/SyncModel$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SyncModel$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/model/SyncModel;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/model/SyncModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.model.SyncModel"

    const-string v1, "members/com.senseonics.model.SyncModel"

    .line 18
    const-class v2, Lcom/senseonics/model/SyncModel;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/model/SyncModel;
    .locals 1

    .line 27
    new-instance v0, Lcom/senseonics/model/SyncModel;

    invoke-direct {v0}, Lcom/senseonics/model/SyncModel;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/senseonics/model/SyncModel$$InjectAdapter;->get()Lcom/senseonics/model/SyncModel;

    move-result-object v0

    return-object v0
.end method
