.class public interface abstract Lcom/senseonics/graph/GraphManagerView$GraphManager;
.super Ljava/lang/Object;
.source "GraphManagerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/graph/GraphManagerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GraphManager"
.end annotation


# virtual methods
.method public abstract dismissProgressDialog()V
.end method

.method public abstract hideEventGlucosePopUp()V
.end method

.method public abstract onEventSelected(Lcom/senseonics/events/EventPoint;)V
.end method

.method public abstract showEventPopUp(FLcom/senseonics/events/EventPoint;)V
.end method

.method public abstract showGlucosePopUp(FLcom/senseonics/graph/util/Glucose;)V
.end method

.method public abstract showNoGlucoseReadingPopUp(F)V
.end method

.method public abstract tapAddNewEvent(Ljava/util/Calendar;)V
.end method
