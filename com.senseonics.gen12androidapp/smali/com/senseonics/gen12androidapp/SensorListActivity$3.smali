.class Lcom/senseonics/gen12androidapp/SensorListActivity$3;
.super Ljava/lang/Object;
.source "SensorListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;->onResume()V
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

    .line 313
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$3;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$3;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->access$100(Lcom/senseonics/gen12androidapp/SensorListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$3;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->access$500(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    :cond_0
    return-void
.end method
