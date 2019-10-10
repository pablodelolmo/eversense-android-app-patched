.class Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker$1;
.super Ljava/lang/Object;
.source "TransmitterStatusAlertVisibilityChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;->checkVisibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker$1;->this$0:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker$1;->this$0:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker$1;->this$0:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;->access$000(Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;->setVisibility(Z)V

    return-void
.end method
