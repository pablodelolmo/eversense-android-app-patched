.class public Lcom/senseonics/events/CalibrationEventActivity;
.super Lcom/senseonics/events/GlucoseEventActivity;
.source "CalibrationEventActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/senseonics/events/GlucoseEventActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 11
    invoke-super {p0, p1}, Lcom/senseonics/events/GlucoseEventActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    iget-object p1, p0, Lcom/senseonics/events/CalibrationEventActivity;->naviBarTitle:Landroid/widget/TextView;

    const v0, 0x7f0f006a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/senseonics/events/CalibrationEventActivity;->hasSaveButton:Z

    const p1, 0x7f090082

    .line 19
    invoke-virtual {p0, p1}, Lcom/senseonics/events/CalibrationEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
