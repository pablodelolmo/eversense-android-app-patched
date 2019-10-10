.class public Lcom/senseonics/util/dialogs/CalibrateDialogInfo;
.super Lcom/senseonics/util/dialogs/CustomDialogInfo;
.source "CalibrateDialogInfo.java"


# instance fields
.field private ep:Lcom/senseonics/events/EventPoint;


# direct methods
.method public constructor <init>(Lcom/senseonics/events/EventPoint;I)V
    .locals 1

    .line 10
    sget-object v0, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;->CALIBRATE_DIALOG:Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    invoke-direct {p0, v0, p2}, Lcom/senseonics/util/dialogs/CustomDialogInfo;-><init>(Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;I)V

    .line 11
    iput-object p1, p0, Lcom/senseonics/util/dialogs/CalibrateDialogInfo;->ep:Lcom/senseonics/events/EventPoint;

    return-void
.end method


# virtual methods
.method public getEventPoint()Lcom/senseonics/events/EventPoint;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/senseonics/util/dialogs/CalibrateDialogInfo;->ep:Lcom/senseonics/events/EventPoint;

    return-object v0
.end method
