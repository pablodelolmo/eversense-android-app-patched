.class Lcom/senseonics/events/EventActivity$2;
.super Ljava/lang/Object;
.source "EventActivity.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/DateDialogManager;


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

.field final synthetic val$date:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/senseonics/events/EventActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/senseonics/events/EventActivity$2;->this$0:Lcom/senseonics/events/EventActivity;

    iput-object p2, p0, Lcom/senseonics/events/EventActivity$2;->val$date:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSelected(Ljava/util/Calendar;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/senseonics/events/EventActivity$2;->this$0:Lcom/senseonics/events/EventActivity;

    iput-object p1, v0, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    .line 160
    iget-object p1, p0, Lcom/senseonics/events/EventActivity$2;->val$date:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/events/EventActivity$2;->this$0:Lcom/senseonics/events/EventActivity;

    iget-object v0, v0, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    .line 161
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/events/EventActivity$2;->this$0:Lcom/senseonics/events/EventActivity;

    .line 160
    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->formatDate(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
