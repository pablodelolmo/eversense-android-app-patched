.class public Lcom/senseonics/pairing/BluetoothPairingView_ViewBinding;
.super Ljava/lang/Object;
.source "BluetoothPairingView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/senseonics/pairing/BluetoothPairingView;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected target:Lcom/senseonics/pairing/BluetoothPairingView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/pairing/BluetoothPairingView;Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView_ViewBinding;->target:Lcom/senseonics/pairing/BluetoothPairingView;

    const-string v0, "field \'listView\'"

    .line 25
    const-class v1, Landroid/widget/ListView;

    const v2, 0x7f090185

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingView;->listView:Landroid/widget/ListView;

    const-string v0, "field \'connectLayout\'"

    .line 26
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0902b3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingView;->connectLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'arrowConnect\'"

    .line 27
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090062

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingView;->arrowConnect:Landroid/widget/ImageView;

    const-string v0, "field \'tipsTextView\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingView;->tipsTextView:Landroid/widget/TextView;

    const-string v0, "field \'connectTextViewLayout\'"

    .line 29
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0902b5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingView;->connectTextViewLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'pairTitleTextView\'"

    .line 30
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0901f8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingView;->pairTitleTextView:Landroid/widget/TextView;

    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f025c

    .line 33
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingView;->connectHtmlInitialText:Ljava/lang/String;

    const v0, 0x7f0f025b

    .line 34
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/senseonics/pairing/BluetoothPairingView;->connectHtmlText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingView_ViewBinding;->target:Lcom/senseonics/pairing/BluetoothPairingView;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 43
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothPairingView;->listView:Landroid/widget/ListView;

    .line 44
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothPairingView;->connectLayout:Landroid/widget/LinearLayout;

    .line 45
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothPairingView;->arrowConnect:Landroid/widget/ImageView;

    .line 46
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothPairingView;->tipsTextView:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothPairingView;->connectTextViewLayout:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothPairingView;->pairTitleTextView:Landroid/widget/TextView;

    .line 50
    iput-object v1, p0, Lcom/senseonics/pairing/BluetoothPairingView_ViewBinding;->target:Lcom/senseonics/pairing/BluetoothPairingView;

    return-void
.end method
