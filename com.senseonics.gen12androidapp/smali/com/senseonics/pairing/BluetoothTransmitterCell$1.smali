.class Lcom/senseonics/pairing/BluetoothTransmitterCell$1;
.super Ljava/lang/Object;
.source "BluetoothTransmitterCell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/pairing/BluetoothTransmitterCell;->refresh(Lcom/senseonics/bluetoothle/Transmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/pairing/BluetoothTransmitterCell;

.field final synthetic val$visToSet:I


# direct methods
.method constructor <init>(Lcom/senseonics/pairing/BluetoothTransmitterCell;I)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell$1;->this$0:Lcom/senseonics/pairing/BluetoothTransmitterCell;

    iput p2, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell$1;->val$visToSet:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell$1;->this$0:Lcom/senseonics/pairing/BluetoothTransmitterCell;

    iget-object v0, v0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->progressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell$1;->val$visToSet:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
