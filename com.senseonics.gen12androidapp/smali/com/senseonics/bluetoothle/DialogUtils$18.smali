.class Lcom/senseonics/bluetoothle/DialogUtils$18;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DialogUtils;->createTempProfileTurnedOffPopup(Landroid/content/Context;IIIILjava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/DialogUtils;

.field final synthetic val$activity:Landroid/content/Context;

.field final synthetic val$newClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    .line 828
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$18;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$18;->val$activity:Landroid/content/Context;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$18;->val$newClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 832
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$18;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/DialogUtils;->access$300(Lcom/senseonics/bluetoothle/DialogUtils;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 833
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$18;->val$activity:Landroid/content/Context;

    invoke-static {p1}, Lcom/senseonics/util/Utils;->checkIfInitialLaunch(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 834
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$18;->val$activity:Landroid/content/Context;

    instance-of p1, p1, Lcom/senseonics/gen12androidapp/TempGlucoseProfileActivity;

    if-nez p1, :cond_0

    .line 835
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$18;->val$activity:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$18;->val$activity:Landroid/content/Context;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/DialogUtils$18;->val$newClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
