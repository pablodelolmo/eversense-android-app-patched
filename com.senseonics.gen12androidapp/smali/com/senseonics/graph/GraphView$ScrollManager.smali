.class public interface abstract Lcom/senseonics/graph/GraphView$ScrollManager;
.super Ljava/lang/Object;
.source "GraphView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/graph/GraphView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScrollManager"
.end annotation


# virtual methods
.method public abstract dayChanged(Ljava/util/Date;)V
.end method

.method public abstract dayChanged(Ljava/util/Date;Ljava/util/Date;)V
.end method

.method public abstract hideEventGlucosePopUpTop()V
.end method

.method public abstract onEventSelected(Lcom/senseonics/events/EventPoint;)V
.end method

.method public abstract refreshGlucoseData()V
.end method

.method public abstract showEventPopUpTop(FLcom/senseonics/events/EventPoint;)V
.end method

.method public abstract showGlucosePopUpTop(FLcom/senseonics/graph/util/Glucose;)V
.end method

.method public abstract showNoGlucoseReadingPopUp(F)V
.end method

.method public abstract tapAddNewEvent(Ljava/util/Calendar;)V
.end method
