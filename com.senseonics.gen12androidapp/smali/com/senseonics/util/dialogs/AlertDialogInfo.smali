.class public Lcom/senseonics/util/dialogs/AlertDialogInfo;
.super Lcom/senseonics/util/dialogs/CustomDialogInfo;
.source "AlertDialogInfo.java"


# instance fields
.field private aep:Lcom/senseonics/events/AlertEventPoint;


# direct methods
.method public constructor <init>(Lcom/senseonics/events/AlertEventPoint;I)V
    .locals 1

    .line 9
    sget-object v0, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;->ALERT_DIALOG:Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    invoke-direct {p0, v0, p2}, Lcom/senseonics/util/dialogs/CustomDialogInfo;-><init>(Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;I)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/senseonics/util/dialogs/AlertDialogInfo;->setAlertEventPoint(Lcom/senseonics/events/AlertEventPoint;)V

    return-void
.end method


# virtual methods
.method public getAlertEventPoint()Lcom/senseonics/events/AlertEventPoint;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/senseonics/util/dialogs/AlertDialogInfo;->aep:Lcom/senseonics/events/AlertEventPoint;

    return-object v0
.end method

.method public setAlertEventPoint(Lcom/senseonics/events/AlertEventPoint;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/senseonics/util/dialogs/AlertDialogInfo;->aep:Lcom/senseonics/events/AlertEventPoint;

    return-void
.end method
