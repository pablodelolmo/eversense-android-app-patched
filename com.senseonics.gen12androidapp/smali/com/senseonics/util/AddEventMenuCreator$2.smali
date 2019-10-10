.class final Lcom/senseonics/util/AddEventMenuCreator$2;
.super Ljava/lang/Object;
.source "AddEventMenuCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/util/AddEventMenuCreator;->createLogEventMenuDialog(Landroid/content/Context;Ljava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/senseonics/util/AddEventMenuCreator$2;->val$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/senseonics/util/AddEventMenuCreator$2;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/senseonics/util/AddEventMenuCreator$2;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 87
    iget-object p1, p0, Lcom/senseonics/util/AddEventMenuCreator$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 88
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/senseonics/util/AddEventMenuCreator$2;->val$ctx:Landroid/content/Context;

    const-class v1, Lcom/senseonics/events/MealEventActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    iget-object v0, p0, Lcom/senseonics/util/AddEventMenuCreator$2;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 91
    iget-object v0, p0, Lcom/senseonics/util/AddEventMenuCreator$2;->val$ctx:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
