.class Lcom/senseonics/bluetoothle/DialogUtils$16;
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

.field final synthetic val$activity:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;)V
    .locals 0

    .line 762
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$16;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$16;->val$activity:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 766
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$16;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/DialogUtils;->access$100(Lcom/senseonics/bluetoothle/DialogUtils;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 768
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$16;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$16;->val$activity:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->access$200(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;)V

    return-void
.end method
