.class public Lcom/senseonics/pairing/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private adapter:Landroid/bluetooth/BluetoothAdapter;

.field private context:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothEnabler;->context:Landroid/app/Activity;

    .line 16
    iput-object p2, p0, Lcom/senseonics/pairing/BluetoothEnabler;->adapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothEnabler;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothEnabler;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requestToEnableIfDisabled()V
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothEnabler;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothEnabler;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/senseonics/pairing/BluetoothEnabler;->context:Landroid/app/Activity;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
