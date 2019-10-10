.class Lcom/senseonics/pairing/BluetoothPairingView$2;
.super Ljava/lang/Object;
.source "BluetoothPairingView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/pairing/BluetoothPairingView;-><init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/pairing/BluetoothTransmitterAdapter;Landroid/widget/ImageButton;ZLandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/pairing/BluetoothPairingView;

.field final synthetic val$adapter:Lcom/senseonics/pairing/BluetoothTransmitterAdapter;

.field final synthetic val$bus:Lde/greenrobot/event/EventBus;


# direct methods
.method constructor <init>(Lcom/senseonics/pairing/BluetoothPairingView;Lde/greenrobot/event/EventBus;Lcom/senseonics/pairing/BluetoothTransmitterAdapter;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView$2;->this$0:Lcom/senseonics/pairing/BluetoothPairingView;

    iput-object p2, p0, Lcom/senseonics/pairing/BluetoothPairingView$2;->val$bus:Lde/greenrobot/event/EventBus;

    iput-object p3, p0, Lcom/senseonics/pairing/BluetoothPairingView$2;->val$adapter:Lcom/senseonics/pairing/BluetoothTransmitterAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 89
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView$2;->val$bus:Lde/greenrobot/event/EventBus;

    new-instance p2, Lcom/senseonics/pairing/events/view/TransmitterPressed;

    iget-object p4, p0, Lcom/senseonics/pairing/BluetoothPairingView$2;->val$adapter:Lcom/senseonics/pairing/BluetoothTransmitterAdapter;

    invoke-virtual {p4, p3}, Lcom/senseonics/pairing/BluetoothTransmitterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/senseonics/bluetoothle/Transmitter;

    invoke-direct {p2, p3}, Lcom/senseonics/pairing/events/view/TransmitterPressed;-><init>(Lcom/senseonics/bluetoothle/Transmitter;)V

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
