.class Lcom/senseonics/mycircle/model/MyCircleModel$3;
.super Ljava/lang/Object;
.source "MyCircleModel.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/model/MyCircleModel;->getRemovedMemberNamesAndSaveMembers()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/model/MyCircleModel;


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/model/MyCircleModel;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/senseonics/mycircle/model/MyCircleModel$3;->this$0:Lcom/senseonics/mycircle/model/MyCircleModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/senseonics/mycircle/model/MyCirclePeerModel;)Ljava/lang/Integer;
    .locals 0

    .line 86
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getFollowerUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/model/MyCircleModel$3;->apply(Lcom/senseonics/mycircle/model/MyCirclePeerModel;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
