.class Lcom/senseonics/events/ExerciseEventActivity$3;
.super Ljava/lang/Object;
.source "ExerciseEventActivity.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/DoublePickerManager;


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

    .line 73
    iput-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity$3;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(II)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity$3;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    iget-object v1, p0, Lcom/senseonics/events/ExerciseEventActivity$3;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {v1}, Lcom/senseonics/events/ExerciseEventActivity;->access$300(Lcom/senseonics/events/ExerciseEventActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Item;

    invoke-virtual {p1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/senseonics/events/ExerciseEventActivity$3;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    const v2, 0x7f0f0123

    invoke-virtual {v1, v2}, Lcom/senseonics/events/ExerciseEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/senseonics/events/ExerciseEventActivity;->access$202(Lcom/senseonics/events/ExerciseEventActivity;I)I

    .line 78
    iget-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity$3;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity$3;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {v0}, Lcom/senseonics/events/ExerciseEventActivity;->access$500(Lcom/senseonics/events/ExerciseEventActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/senseonics/util/Item;

    invoke-virtual {p2}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity$3;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    const v1, 0x7f0f016b

    invoke-virtual {v0, v1}, Lcom/senseonics/events/ExerciseEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/senseonics/events/ExerciseEventActivity;->access$402(Lcom/senseonics/events/ExerciseEventActivity;I)I

    .line 80
    iget-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity$3;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    iget-object p2, p0, Lcom/senseonics/events/ExerciseEventActivity$3;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {p2}, Lcom/senseonics/events/ExerciseEventActivity;->access$200(Lcom/senseonics/events/ExerciseEventActivity;)I

    move-result p2

    mul-int/lit8 p2, p2, 0x3c

    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity$3;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {v0}, Lcom/senseonics/events/ExerciseEventActivity;->access$400(Lcom/senseonics/events/ExerciseEventActivity;)I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/senseonics/events/ExerciseEventActivity;->access$602(Lcom/senseonics/events/ExerciseEventActivity;I)I

    .line 81
    iget-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity$3;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/ExerciseEventActivity;->access$700(Lcom/senseonics/events/ExerciseEventActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity$3;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {v0}, Lcom/senseonics/events/ExerciseEventActivity;->access$200(Lcom/senseonics/events/ExerciseEventActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity$3;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    .line 82
    invoke-virtual {v0, v2}, Lcom/senseonics/events/ExerciseEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity$3;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    .line 83
    invoke-static {v0}, Lcom/senseonics/events/ExerciseEventActivity;->access$400(Lcom/senseonics/events/ExerciseEventActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity$3;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    .line 84
    invoke-virtual {v0, v1}, Lcom/senseonics/events/ExerciseEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
