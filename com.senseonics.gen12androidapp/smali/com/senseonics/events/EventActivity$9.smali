.class Lcom/senseonics/events/EventActivity$9;
.super Ljava/lang/Object;
.source "EventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/events/EventActivity;->createDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/events/EventActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/senseonics/events/EventActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/senseonics/events/EventActivity$9;->this$0:Lcom/senseonics/events/EventActivity;

    iput-object p2, p0, Lcom/senseonics/events/EventActivity$9;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 361
    iget-object p1, p0, Lcom/senseonics/events/EventActivity$9;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 362
    iget-object p1, p0, Lcom/senseonics/events/EventActivity$9;->this$0:Lcom/senseonics/events/EventActivity;

    iget-object p1, p1, Lcom/senseonics/events/EventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/senseonics/events/EventPoint;->setEventHidden(Z)V

    .line 364
    iget-object p1, p0, Lcom/senseonics/events/EventActivity$9;->this$0:Lcom/senseonics/events/EventActivity;

    iget-object p1, p1, Lcom/senseonics/events/EventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/senseonics/events/EventPoint;->setCalendarEventHidden(Ljava/util/Calendar;)V

    .line 365
    iget-object p1, p0, Lcom/senseonics/events/EventActivity$9;->this$0:Lcom/senseonics/events/EventActivity;

    invoke-static {p1}, Lcom/senseonics/events/EventActivity;->access$100(Lcom/senseonics/events/EventActivity;)Lcom/senseonics/db/DatabaseManager;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/events/EventActivity$9;->this$0:Lcom/senseonics/events/EventActivity;

    iget-object v0, v0, Lcom/senseonics/events/EventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {p1, v0}, Lcom/senseonics/db/DatabaseManager;->updateEvent(Lcom/senseonics/events/EventPoint;)V

    .line 367
    iget-object p1, p0, Lcom/senseonics/events/EventActivity$9;->this$0:Lcom/senseonics/events/EventActivity;

    iget-object p1, p1, Lcom/senseonics/events/EventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getRecordNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 368
    iget-object p1, p0, Lcom/senseonics/events/EventActivity$9;->this$0:Lcom/senseonics/events/EventActivity;

    invoke-static {p1}, Lcom/senseonics/events/EventActivity;->access$200(Lcom/senseonics/events/EventActivity;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/events/EventActivity$9;->this$0:Lcom/senseonics/events/EventActivity;

    iget-object v0, v0, Lcom/senseonics/events/EventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getRecordNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postMarkPatientEventDeleted(J)V

    .line 370
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 371
    iget-object v0, p0, Lcom/senseonics/events/EventActivity$9;->this$0:Lcom/senseonics/events/EventActivity;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1, p1}, Lcom/senseonics/events/EventActivity;->setResult(ILandroid/content/Intent;)V

    .line 372
    iget-object p1, p0, Lcom/senseonics/events/EventActivity$9;->this$0:Lcom/senseonics/events/EventActivity;

    invoke-virtual {p1}, Lcom/senseonics/events/EventActivity;->finish()V

    return-void
.end method
