.class final enum Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND$3;
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

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;-><init>(Ljava/lang/String;ILcom/senseonics/bluetoothle/CommandProcessor$1;)V

    return-void
.end method


# virtual methods
.method public generate(Landroid/os/Bundle;)Lcom/senseonics/bluetoothle/Request;
    .locals 4

    const-string v0, "glucose level"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "milliseconds"

    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "single float"

    .line 52
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    const/4 v3, 0x0

    .line 53
    invoke-static {v1, v2, v0, v3, p1}, Lcom/senseonics/bluetoothle/Request;->writeBloodGlucoseEvent(JIZF)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    return-object p1
.end method
