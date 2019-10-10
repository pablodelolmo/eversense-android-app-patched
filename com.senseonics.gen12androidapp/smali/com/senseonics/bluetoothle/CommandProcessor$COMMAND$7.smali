.class final enum Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND$7;
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

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;-><init>(Ljava/lang/String;ILcom/senseonics/bluetoothle/CommandProcessor$1;)V

    return-void
.end method


# virtual methods
.method public generate(Landroid/os/Bundle;)Lcom/senseonics/bluetoothle/Request;
    .locals 7

    const-string v0, "expected response id"

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "data"

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    const-string v0, "record number"

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "expected response count"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 82
    new-instance p1, Lcom/senseonics/bluetoothle/Request;

    const/16 v6, 0xa

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/bluetoothle/Request;-><init>(I[IIII)V

    return-object p1
.end method
