.class public final Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesBluetoothServiceProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "ActivityModule$$ModuleAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvidesBluetoothServiceProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Lcom/senseonics/bluetoothle/BluetoothService;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/bluetoothle/BluetoothService;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/senseonics/gen12androidapp/ActivityModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ActivityModule;)V
    .locals 4

    const-string v0, "com.senseonics.bluetoothle.BluetoothService"

    const-string v1, "com.senseonics.gen12androidapp.ActivityModule"

    const-string v2, "providesBluetoothService"

    const/4 v3, 0x0

    .line 181
    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesBluetoothServiceProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ActivityModule;

    const/4 p1, 0x1

    .line 183
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesBluetoothServiceProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "android.app.Activity"

    .line 193
    const-class v1, Lcom/senseonics/gen12androidapp/ActivityModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesBluetoothServiceProvidesAdapter;->activity:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/BluetoothService;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesBluetoothServiceProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ActivityModule;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesBluetoothServiceProvidesAdapter;->activity:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/ActivityModule;->providesBluetoothService(Landroid/app/Activity;)Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesBluetoothServiceProvidesAdapter;->get()Lcom/senseonics/bluetoothle/BluetoothService;

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

    .line 202
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesBluetoothServiceProvidesAdapter;->activity:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
