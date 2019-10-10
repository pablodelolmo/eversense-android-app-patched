.class Lcom/senseonics/gen12androidapp/SensorListActivity$1;
.super Ljava/lang/Object;
.source "SensorListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 136
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 140
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 141
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    .line 143
    invoke-static {p1}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->access$000(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 146
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->access$102(Lcom/senseonics/gen12androidapp/SensorListActivity;Z)Z

    .line 149
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->access$200(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->NotConnectedToWifi:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-static {p1, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->access$302(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;)Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 152
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    :cond_1
    :goto_0
    return-void
.end method
