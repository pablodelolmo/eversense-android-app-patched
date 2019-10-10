.class Lcom/senseonics/bluetoothle/DialogUtils$14;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DialogUtils;->createMoreThanMaxAlertDialog(Landroid/content/Context;IIIILjava/lang/Class;)V
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

    .line 696
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$14;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 700
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$14;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/DialogUtils;->removeDialogs()V

    .line 701
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$14;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object p1, p1, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
