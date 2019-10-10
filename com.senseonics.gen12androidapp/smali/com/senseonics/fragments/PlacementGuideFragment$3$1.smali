.class Lcom/senseonics/fragments/PlacementGuideFragment$3$1;
.super Ljava/lang/Object;
.source "PlacementGuideFragment.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/NotificationDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/PlacementGuideFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/fragments/PlacementGuideFragment$3;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/PlacementGuideFragment$3;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$3$1;->this$1:Lcom/senseonics/fragments/PlacementGuideFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public leftButtonPressed()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment$3$1;->this$1:Lcom/senseonics/fragments/PlacementGuideFragment$3;

    iget-object v0, v0, Lcom/senseonics/fragments/PlacementGuideFragment$3;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/PlacementGuideFragment;->access$200(Lcom/senseonics/fragments/PlacementGuideFragment;)V

    return-void
.end method

.method public rightButtonPressed()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment$3$1;->this$1:Lcom/senseonics/fragments/PlacementGuideFragment$3;

    iget-object v0, v0, Lcom/senseonics/fragments/PlacementGuideFragment$3;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/PlacementGuideFragment;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/DismissPlacementGuide;

    invoke-direct {v1}, Lcom/senseonics/events/DismissPlacementGuide;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
