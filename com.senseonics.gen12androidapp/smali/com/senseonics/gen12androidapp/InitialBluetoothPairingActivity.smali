.class public Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "InitialBluetoothPairingActivity.java"


# instance fields
.field private bluetoothPairingFragment:Lcom/senseonics/pairing/BluetoothPairingFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method

.method private showNextButton(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 18
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0034

    .line 20
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->initializeLayout(I)Landroid/view/View;

    .line 22
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    const v1, 0x7f080158

    .line 34
    invoke-virtual {p0, v1, p1, p1}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->showNextButton(Z)V

    .line 39
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity$1;-><init>(Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    new-instance p1, Lcom/senseonics/pairing/BluetoothPairingFragment;

    invoke-direct {p1}, Lcom/senseonics/pairing/BluetoothPairingFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->bluetoothPairingFragment:Lcom/senseonics/pairing/BluetoothPairingFragment;

    .line 50
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f09011e

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->bluetoothPairingFragment:Lcom/senseonics/pairing/BluetoothPairingFragment;

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 2

    .line 66
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->showNextButton(Z)V

    .line 67
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V

    return-void
.end method
