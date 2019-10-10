.class Lcom/senseonics/bluetoothle/BleHealthUpload$1;
.super Ljava/lang/Object;
.source "BleHealthUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/BleHealthUpload;-><init>(Landroid/content/Context;Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/AccountConstants;Lcom/senseonics/bluetoothle/BleHealthMonitor;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/BleHealthUpload;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/BleHealthUpload;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BleHealthUpload$1;->this$0:Lcom/senseonics/bluetoothle/BleHealthUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload$1;->this$0:Lcom/senseonics/bluetoothle/BleHealthUpload;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BleHealthUpload;->access$000(Lcom/senseonics/bluetoothle/BleHealthUpload;)V

    return-void
.end method
