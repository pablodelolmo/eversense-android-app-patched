.class public Lcom/senseonics/pairing/BluetoothTransmitterAdapter;
.super Landroid/widget/BaseAdapter;
.source "BluetoothTransmitterAdapter.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private deviceCellProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/senseonics/pairing/BluetoothTransmitterCell;",
            ">;"
        }
    .end annotation
.end field

.field private devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/Transmitter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/senseonics/pairing/BluetoothTransmitterCell;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothTransmitterAdapter;->devices:Ljava/util/List;

    .line 21
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterAdapter;->deviceCellProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothTransmitterAdapter;->devices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothTransmitterAdapter;->devices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 48
    iget-object p2, p0, Lcom/senseonics/pairing/BluetoothTransmitterAdapter;->deviceCellProvider:Ljavax/inject/Provider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/senseonics/pairing/BluetoothTransmitterCell;

    goto :goto_0

    .line 50
    :cond_0
    check-cast p2, Lcom/senseonics/pairing/BluetoothTransmitterCell;

    .line 52
    :goto_0
    invoke-virtual {p0, p1}, Lcom/senseonics/pairing/BluetoothTransmitterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/bluetoothle/Transmitter;

    .line 53
    invoke-virtual {p2, p1}, Lcom/senseonics/pairing/BluetoothTransmitterCell;->refresh(Lcom/senseonics/bluetoothle/Transmitter;)V

    return-object p2
.end method

.method public refreshList()V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothTransmitterAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDevices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/Transmitter;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterAdapter;->devices:Ljava/util/List;

    .line 26
    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothTransmitterAdapter;->notifyDataSetChanged()V

    return-void
.end method
