.class public final Lcom/senseonics/bluetoothle/CommandRequestTimer$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "CommandRequestTimer$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/bluetoothle/CommandRequestTimer;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/bluetoothle/CommandRequestTimer;",
        ">;"
    }
.end annotation


# instance fields
.field private requestBlockingSet:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/RequestBlockingSet;",
            ">;"
        }
    .end annotation
.end field

.field private timerProvider:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Ljavax/inject/Provider<",
            "Ljava/util/Timer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.bluetoothle.CommandRequestTimer"

    const-string v1, "members/com.senseonics.bluetoothle.CommandRequestTimer"

    .line 25
    const-class v2, Lcom/senseonics/bluetoothle/CommandRequestTimer;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "javax.inject.Provider<java.util.Timer>"

    .line 35
    const-class v1, Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$$InjectAdapter;->timerProvider:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.RequestBlockingSet"

    .line 36
    const-class v1, Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$$InjectAdapter;->requestBlockingSet:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/CommandRequestTimer;
    .locals 3

    .line 55
    new-instance v0, Lcom/senseonics/bluetoothle/CommandRequestTimer;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$$InjectAdapter;->timerProvider:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$$InjectAdapter;->requestBlockingSet:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-direct {v0, v1, v2}, Lcom/senseonics/bluetoothle/CommandRequestTimer;-><init>(Ljavax/inject/Provider;Lcom/senseonics/bluetoothle/RequestBlockingSet;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/CommandRequestTimer$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/CommandRequestTimer;

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
    iget-object p2, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$$InjectAdapter;->timerProvider:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object p2, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$$InjectAdapter;->requestBlockingSet:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
