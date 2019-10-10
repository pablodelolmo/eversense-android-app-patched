.class Lcom/senseonics/pairing/BluetoothPairingView$1;
.super Ljava/lang/Object;
.source "BluetoothPairingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/senseonics/pairing/BluetoothPairingView;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView$1;->this$0:Lcom/senseonics/pairing/BluetoothPairingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView$1;->this$0:Lcom/senseonics/pairing/BluetoothPairingView;

    invoke-static {p1}, Lcom/senseonics/pairing/BluetoothPairingView;->access$000(Lcom/senseonics/pairing/BluetoothPairingView;)V

    return-void
.end method
