.class Lcom/senseonics/events/ExerciseEventActivity$2;
.super Ljava/lang/Object;
.source "ExerciseEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 62
    iput-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity$2;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 66
    iget-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity$2;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity$2;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    .line 68
    invoke-virtual {v0}, Lcom/senseonics/events/ExerciseEventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/events/ExerciseEventActivity$2;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    .line 69
    invoke-static {v1}, Lcom/senseonics/events/ExerciseEventActivity;->access$000(Lcom/senseonics/events/ExerciseEventActivity;)Lcom/senseonics/events/EventUtils$PickerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/events/ExerciseEventActivity$2;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {v2}, Lcom/senseonics/events/ExerciseEventActivity;->access$100(Lcom/senseonics/events/ExerciseEventActivity;)Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    move-result-object v2

    invoke-virtual {v2}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->ordinal()I

    move-result v2

    .line 66
    invoke-static {p1, v0, v1, v2}, Lcom/senseonics/events/EventUtils;->createExerciseIntensityPicker(Landroid/content/Context;Ljava/lang/String;Lcom/senseonics/events/EventUtils$PickerManager;I)V

    return-void
.end method
