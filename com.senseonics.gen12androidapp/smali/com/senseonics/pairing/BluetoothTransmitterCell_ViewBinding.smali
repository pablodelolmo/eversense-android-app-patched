.class public Lcom/senseonics/pairing/BluetoothTransmitterCell_ViewBinding;
.super Ljava/lang/Object;
.source "BluetoothTransmitterCell_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/senseonics/pairing/BluetoothTransmitterCell;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected target:Lcom/senseonics/pairing/BluetoothTransmitterCell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/pairing/BluetoothTransmitterCell;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell_ViewBinding;->target:Lcom/senseonics/pairing/BluetoothTransmitterCell;

    const-string v0, "field \'stateText\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090269

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothTransmitterCell;->stateText:Landroid/widget/TextView;

    const-string v0, "field \'bluetoothImage\'"

    .line 26
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09007d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothTransmitterCell;->bluetoothImage:Landroid/widget/ImageView;

    const-string v0, "field \'progressBar\'"

    .line 27
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f09020d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothTransmitterCell;->progressBar:Landroid/widget/ProgressBar;

    const-string v0, "field \'deviceName\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0901ca

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothTransmitterCell;->deviceName:Landroid/widget/TextView;

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 31
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const v1, 0x7f06001e

    .line 33
    invoke-static {v0, p2, v1}, Lbutterknife/internal/Utils;->getColor(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)I

    move-result p2

    iput p2, p1, Lcom/senseonics/pairing/BluetoothTransmitterCell;->blackColor:I

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell_ViewBinding;->target:Lcom/senseonics/pairing/BluetoothTransmitterCell;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 42
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->stateText:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->bluetoothImage:Landroid/widget/ImageView;

    .line 44
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->progressBar:Landroid/widget/ProgressBar;

    .line 45
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->deviceName:Landroid/widget/TextView;

    .line 47
    iput-object v1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell_ViewBinding;->target:Lcom/senseonics/pairing/BluetoothTransmitterCell;

    return-void
.end method
