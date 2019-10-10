.class Lcom/senseonics/gen12androidapp/SensorListActivity$8;
.super Ljava/lang/Object;
.source "SensorListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;->parseAndSendEEPROMAndATCCALString(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 995
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$8;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 999
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$8;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->access$1000(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$8;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->access$1100(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1001
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$8;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->access$1200(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
