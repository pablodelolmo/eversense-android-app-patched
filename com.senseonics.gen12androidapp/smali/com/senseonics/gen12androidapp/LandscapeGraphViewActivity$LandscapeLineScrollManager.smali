.class Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$LandscapeLineScrollManager;
.super Ljava/lang/Object;
.source "LandscapeGraphViewActivity.java"

# interfaces
.implements Lcom/senseonics/graph/GraphView$LineScrollManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LandscapeLineScrollManager"
.end annotation


# instance fields
.field private popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

.field final synthetic this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;Lcom/senseonics/fragments/PopupGraphManagerView;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$LandscapeLineScrollManager;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$LandscapeLineScrollManager;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    return-void
.end method


# virtual methods
.method public actionCancelled()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$LandscapeLineScrollManager;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/senseonics/fragments/PopupGraphManagerView;->setVisibility(I)V

    return-void
.end method

.method public positionChanged(F)V
    .locals 8

    .line 218
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$LandscapeLineScrollManager;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->access$200(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)Lcom/jjoe64/graphview/LineGraphView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jjoe64/graphview/LineGraphView;->ifEventAtPosition(F)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$LandscapeLineScrollManager;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->access$200(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)Lcom/jjoe64/graphview/LineGraphView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jjoe64/graphview/LineGraphView;->ifGlucoseAtPosition(F)Lcom/senseonics/graph/util/Glucose;

    move-result-object v4

    .line 221
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$LandscapeLineScrollManager;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->access$300(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)I

    move-result v5

    .line 222
    div-int/lit8 v6, v5, 0x4

    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$LandscapeLineScrollManager;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    invoke-virtual {v1, p1, v0, v5, v6}, Lcom/senseonics/fragments/PopupGraphManagerView;->putEventPopUp(FLcom/senseonics/events/EventPoint;II)V

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 227
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$LandscapeLineScrollManager;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$LandscapeLineScrollManager;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    iget-object v7, v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/senseonics/fragments/PopupGraphManagerView;->putGlucosePopUp(FLcom/senseonics/graph/util/Glucose;IILcom/senseonics/model/TransmitterStateModel;)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$LandscapeLineScrollManager;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    invoke-virtual {v0, p1, v5, v6}, Lcom/senseonics/fragments/PopupGraphManagerView;->putNoSensorGlucosePopUp(FII)V

    :goto_0
    return-void
.end method

.method public scrollLeft()V
    .locals 0

    return-void
.end method

.method public scrollRight()V
    .locals 0

    return-void
.end method

.method public stopScroll()V
    .locals 0

    return-void
.end method
