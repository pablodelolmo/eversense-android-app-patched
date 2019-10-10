.class Lcom/senseonics/mycircle/model/MyCircleModel$6;
.super Ljava/lang/Object;
.source "MyCircleModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/model/MyCircleModel;->filterModels(Lcom/google/common/base/Predicate;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/model/MyCircleModel;

.field final synthetic val$isMember:Z


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/model/MyCircleModel;Z)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/senseonics/mycircle/model/MyCircleModel$6;->this$0:Lcom/senseonics/mycircle/model/MyCircleModel;

    iput-boolean p2, p0, Lcom/senseonics/mycircle/model/MyCircleModel$6;->val$isMember:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/senseonics/mycircle/model/MyCirclePeerModel;Lcom/senseonics/mycircle/model/MyCirclePeerModel;)I
    .locals 2

    .line 122
    iget-boolean v0, p0, Lcom/senseonics/mycircle/model/MyCircleModel$6;->val$isMember:Z

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getStatus()I

    move-result v0

    invoke-virtual {p2}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getStatus()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getMemberName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getMemberName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0

    .line 129
    :cond_1
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getEmailAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getEmailAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 119
    check-cast p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;

    check-cast p2, Lcom/senseonics/mycircle/model/MyCirclePeerModel;

    invoke-virtual {p0, p1, p2}, Lcom/senseonics/mycircle/model/MyCircleModel$6;->compare(Lcom/senseonics/mycircle/model/MyCirclePeerModel;Lcom/senseonics/mycircle/model/MyCirclePeerModel;)I

    move-result p1

    return p1
.end method
