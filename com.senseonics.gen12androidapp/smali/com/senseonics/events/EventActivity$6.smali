.class Lcom/senseonics/events/EventActivity$6;
.super Ljava/lang/Object;
.source "EventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/events/EventActivity;->initEventLayout()V
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

    .line 298
    iput-object p1, p0, Lcom/senseonics/events/EventActivity$6;->this$0:Lcom/senseonics/events/EventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 302
    iget-object p1, p0, Lcom/senseonics/events/EventActivity$6;->this$0:Lcom/senseonics/events/EventActivity;

    invoke-virtual {p1}, Lcom/senseonics/events/EventActivity;->onBackPressed()V

    return-void
.end method
