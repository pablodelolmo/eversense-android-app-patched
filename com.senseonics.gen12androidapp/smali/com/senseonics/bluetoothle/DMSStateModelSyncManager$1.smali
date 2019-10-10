.class Lcom/senseonics/bluetoothle/DMSStateModelSyncManager$1;
.super Ljava/lang/Object;
.source "DMSStateModelSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadThresholdInfoToDMSServerWithDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager$1;->this$0:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager$1;->this$0:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->access$000(Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;)V

    return-void
.end method
