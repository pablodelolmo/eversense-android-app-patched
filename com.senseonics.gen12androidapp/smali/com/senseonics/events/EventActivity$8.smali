.class Lcom/senseonics/events/EventActivity$8;
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

    .line 346
    iput-object p1, p0, Lcom/senseonics/events/EventActivity$8;->this$0:Lcom/senseonics/events/EventActivity;

    iput-object p2, p0, Lcom/senseonics/events/EventActivity$8;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 350
    iget-object p1, p0, Lcom/senseonics/events/EventActivity$8;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
