.class Lcom/senseonics/events/ExerciseEventActivity$1;
.super Ljava/lang/Object;
.source "ExerciseEventActivity.java"

# interfaces
.implements Lcom/senseonics/events/EventUtils$PickerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/events/ExerciseEventActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/events/ExerciseEventActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/events/ExerciseEventActivity;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity$1;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity$1;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-virtual {v0, p1}, Lcom/senseonics/events/ExerciseEventActivity;->setIntensity(I)V

    return-void
.end method
