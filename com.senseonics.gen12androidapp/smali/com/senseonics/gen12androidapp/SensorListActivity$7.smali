.class Lcom/senseonics/gen12androidapp/SensorListActivity$7;
.super Ljava/lang/Object;
.source "SensorListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;->startDownloadingAndSyncingOfEEPROMAndATCCALParameters(Ljava/lang/String;)Ljava/lang/String;
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

    .line 813
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$7;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$7;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    return-void
.end method
