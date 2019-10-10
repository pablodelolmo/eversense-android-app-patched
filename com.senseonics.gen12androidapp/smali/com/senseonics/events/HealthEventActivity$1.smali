.class Lcom/senseonics/events/HealthEventActivity$1;
.super Ljava/lang/Object;
.source "HealthEventActivity.java"

# interfaces
.implements Lcom/senseonics/events/EventUtils$PickerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/events/HealthEventActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/events/HealthEventActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/events/HealthEventActivity;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/senseonics/events/HealthEventActivity$1;->this$0:Lcom/senseonics/events/HealthEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/senseonics/events/HealthEventActivity$1;->this$0:Lcom/senseonics/events/HealthEventActivity;

    invoke-virtual {v0, p1}, Lcom/senseonics/events/HealthEventActivity;->setCondition(I)V

    return-void
.end method
