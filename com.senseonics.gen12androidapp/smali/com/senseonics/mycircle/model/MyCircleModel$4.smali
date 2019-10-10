.class Lcom/senseonics/mycircle/model/MyCircleModel$4;
.super Ljava/lang/Object;
.source "MyCircleModel.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


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
        "Lcom/google/common/base/Predicate<",
        "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/model/MyCircleModel;

.field final synthetic val$currentMemberIDs:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/model/MyCircleModel;Lcom/google/common/collect/ImmutableList;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/senseonics/mycircle/model/MyCircleModel$4;->this$0:Lcom/senseonics/mycircle/model/MyCircleModel;

    iput-object p2, p0, Lcom/senseonics/mycircle/model/MyCircleModel$4;->val$currentMemberIDs:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/senseonics/mycircle/model/MyCirclePeerModel;)Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCircleModel$4;->val$currentMemberIDs:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getFollowerUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 96
    check-cast p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/model/MyCircleModel$4;->apply(Lcom/senseonics/mycircle/model/MyCirclePeerModel;)Z

    move-result p1

    return p1
.end method
