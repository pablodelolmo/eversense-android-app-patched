.class Lcom/senseonics/fragments/GraphFragment$5;
.super Ljava/lang/Object;
.source "GraphFragment.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/DateDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/GraphFragment;->createPickerViewDialog(Ljava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/GraphFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/GraphFragment;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment$5;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSelected(Ljava/util/Calendar;)V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$5;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->access$000(Lcom/senseonics/fragments/GraphFragment;)Lcom/senseonics/graph/GraphManagerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$5;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->access$000(Lcom/senseonics/fragments/GraphFragment;)Lcom/senseonics/graph/GraphManagerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/senseonics/graph/GraphManagerView;->setCurrentVisibleDate(Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method
