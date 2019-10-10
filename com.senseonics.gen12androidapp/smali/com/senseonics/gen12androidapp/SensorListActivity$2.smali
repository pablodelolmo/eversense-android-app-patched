.class Lcom/senseonics/gen12androidapp/SensorListActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SensorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$2;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 265
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 267
    sget-object p2, Lcom/senseonics/util/Utils;->WRITE_N_BYTE_FINISHED:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Linking"

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WRITE_N_BYTE_FINISHED broadcast received linkingRequestsInitialized:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/senseonics/bluetoothle/BluetoothUtils;->linkingRequestsInitialized:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget-boolean p1, Lcom/senseonics/bluetoothle/BluetoothUtils;->linkingRequestsInitialized:Z

    if-eqz p1, :cond_0

    .line 272
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$2;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->access$400(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    :cond_0
    return-void
.end method
