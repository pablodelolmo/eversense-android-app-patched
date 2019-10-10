.class public final Lcom/senseonics/bluetoothle/RequestBlockingSet$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "RequestBlockingSet$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/bluetoothle/RequestBlockingSet;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/bluetoothle/RequestBlockingSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.bluetoothle.RequestBlockingSet"

    const-string v1, "members/com.senseonics.bluetoothle.RequestBlockingSet"

    .line 18
    const-class v2, Lcom/senseonics/bluetoothle/RequestBlockingSet;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/bluetoothle/RequestBlockingSet;
    .locals 1

    .line 27
    new-instance v0, Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-direct {v0}, Lcom/senseonics/bluetoothle/RequestBlockingSet;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/RequestBlockingSet$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    return-object v0
.end method
