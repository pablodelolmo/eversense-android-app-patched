.class public Lcom/senseonics/pairing/BluetoothPairingFragment;
.super Landroid/app/Fragment;
.source "BluetoothPairingFragment.java"


# instance fields
.field presenter:Lcom/senseonics/pairing/BluetoothPairingPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field view:Lcom/senseonics/pairing/BluetoothPairingView;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothPairingFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;

    invoke-virtual {p1, p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->inject(Ljava/lang/Object;)V

    .line 31
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingFragment;->view:Lcom/senseonics/pairing/BluetoothPairingView;

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 42
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 43
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingFragment;->presenter:Lcom/senseonics/pairing/BluetoothPairingPresenter;

    invoke-virtual {v0}, Lcom/senseonics/pairing/BluetoothPairingPresenter;->resume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 36
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 37
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingFragment;->presenter:Lcom/senseonics/pairing/BluetoothPairingPresenter;

    invoke-virtual {v0}, Lcom/senseonics/pairing/BluetoothPairingPresenter;->start()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 49
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingFragment;->presenter:Lcom/senseonics/pairing/BluetoothPairingPresenter;

    invoke-virtual {v0}, Lcom/senseonics/pairing/BluetoothPairingPresenter;->stop()V

    return-void
.end method
