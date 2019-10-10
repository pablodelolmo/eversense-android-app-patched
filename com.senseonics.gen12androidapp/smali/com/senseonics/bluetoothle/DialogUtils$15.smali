.class Lcom/senseonics/bluetoothle/DialogUtils$15;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DialogUtils;->createUpdateAppPopup(Landroid/content/Context;IIIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/DialogUtils;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;)V
    .locals 0

    .line 752
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$15;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 756
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$15;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/DialogUtils;->access$100(Lcom/senseonics/bluetoothle/DialogUtils;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
