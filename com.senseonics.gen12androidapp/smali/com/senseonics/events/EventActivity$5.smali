.class Lcom/senseonics/events/EventActivity$5;
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


# direct methods
.method constructor <init>(Lcom/senseonics/events/EventActivity;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/senseonics/events/EventActivity$5;->this$0:Lcom/senseonics/events/EventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 213
    iget-object p1, p0, Lcom/senseonics/events/EventActivity$5;->this$0:Lcom/senseonics/events/EventActivity;

    iget-object v0, p0, Lcom/senseonics/events/EventActivity$5;->this$0:Lcom/senseonics/events/EventActivity;

    const v1, 0x7f0f0111

    invoke-virtual {v0, v1}, Lcom/senseonics/events/EventActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/senseonics/events/EventActivity;->createDialog(Ljava/lang/String;)V

    return-void
.end method
