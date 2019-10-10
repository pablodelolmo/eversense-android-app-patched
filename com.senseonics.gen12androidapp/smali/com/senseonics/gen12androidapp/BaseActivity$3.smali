.class Lcom/senseonics/gen12androidapp/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/NotificationDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/BaseActivity;->provideCalibrationDialogManager()Lcom/senseonics/util/dialogs/NotificationDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/BaseActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/BaseActivity;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity$3;->this$0:Lcom/senseonics/gen12androidapp/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public leftButtonPressed()V
    .locals 0

    return-void
.end method

.method public rightButtonPressed()V
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseActivity$3;->this$0:Lcom/senseonics/gen12androidapp/BaseActivity;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfInitialLaunch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseActivity$3;->this$0:Lcom/senseonics/gen12androidapp/BaseActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/BaseActivity$3;->this$0:Lcom/senseonics/gen12androidapp/BaseActivity;

    const-class v3, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
