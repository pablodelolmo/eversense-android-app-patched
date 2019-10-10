.class final enum Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND$1;
.super Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;
.source "CommandProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;-><init>(Ljava/lang/String;ILcom/senseonics/bluetoothle/CommandProcessor$1;)V

    return-void
.end method


# virtual methods
.method public generate(Landroid/os/Bundle;)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 35
    sget-object p1, Lcom/senseonics/bluetoothle/MemoryMap;->clinicalModeDuration:[I

    invoke-static {p1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object p1

    .line 36
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xac

    invoke-direct {v0, v1, p1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method
