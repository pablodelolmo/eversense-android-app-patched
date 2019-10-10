.class Lcom/senseonics/events/EventActivity$3;
.super Ljava/lang/Object;
.source "EventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/events/EventActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/events/EventActivity;

.field final synthetic val$dialogManager:Lcom/senseonics/util/dialogs/DateDialogManager;


# direct methods
.method constructor <init>(Lcom/senseonics/events/EventActivity;Lcom/senseonics/util/dialogs/DateDialogManager;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/senseonics/events/EventActivity$3;->this$0:Lcom/senseonics/events/EventActivity;

    iput-object p2, p0, Lcom/senseonics/events/EventActivity$3;->val$dialogManager:Lcom/senseonics/util/dialogs/DateDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 170
    iget-object v0, p0, Lcom/senseonics/events/EventActivity$3;->this$0:Lcom/senseonics/events/EventActivity;

    invoke-virtual {v0, p1}, Lcom/senseonics/events/EventActivity;->hideKeyboard(Landroid/view/View;)V

    .line 171
    iget-object p1, p0, Lcom/senseonics/events/EventActivity$3;->this$0:Lcom/senseonics/events/EventActivity;

    invoke-static {p1}, Lcom/senseonics/events/EventActivity;->access$000(Lcom/senseonics/events/EventActivity;)Lcom/senseonics/bluetoothle/DialogUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/events/EventActivity$3;->this$0:Lcom/senseonics/events/EventActivity;

    iget-object p1, p0, Lcom/senseonics/events/EventActivity$3;->this$0:Lcom/senseonics/events/EventActivity;

    iget-object v2, p1, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    iget-object p1, p0, Lcom/senseonics/events/EventActivity$3;->this$0:Lcom/senseonics/events/EventActivity;

    iget-object v3, p1, Lcom/senseonics/events/EventActivity;->startDate:Ljava/util/Calendar;

    iget-object p1, p0, Lcom/senseonics/events/EventActivity$3;->this$0:Lcom/senseonics/events/EventActivity;

    iget-object v4, p1, Lcom/senseonics/events/EventActivity;->endDate:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/senseonics/events/EventActivity$3;->val$dialogManager:Lcom/senseonics/util/dialogs/DateDialogManager;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createDateTimePickerDialog(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/senseonics/util/dialogs/DateDialogManager;Z)V

    return-void
.end method
