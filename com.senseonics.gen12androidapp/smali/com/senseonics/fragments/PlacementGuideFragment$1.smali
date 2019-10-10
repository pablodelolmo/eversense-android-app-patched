.class Lcom/senseonics/fragments/PlacementGuideFragment$1;
.super Ljava/util/TimerTask;
.source "PlacementGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/PlacementGuideFragment;->setupPlacementGuideProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/PlacementGuideFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/PlacementGuideFragment;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$1;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment$1;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/PlacementGuideFragment;->access$000(Lcom/senseonics/fragments/PlacementGuideFragment;)Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment$1;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/PlacementGuideFragment;->access$000(Lcom/senseonics/fragments/PlacementGuideFragment;)Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postEnterDiagnosticMode()V

    :cond_0
    return-void
.end method
