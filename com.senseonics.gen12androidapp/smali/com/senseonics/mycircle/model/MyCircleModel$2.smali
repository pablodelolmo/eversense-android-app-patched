.class Lcom/senseonics/mycircle/model/MyCircleModel$2;
.super Ljava/lang/Object;
.source "MyCircleModel.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/model/MyCircleModel;->getInvites()Ljava/util/List;
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


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/model/MyCircleModel;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/senseonics/mycircle/model/MyCircleModel$2;->this$0:Lcom/senseonics/mycircle/model/MyCircleModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/senseonics/mycircle/model/MyCirclePeerModel;)Z
    .locals 0

    .line 72
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->isMember()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 69
    check-cast p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/model/MyCircleModel$2;->apply(Lcom/senseonics/mycircle/model/MyCirclePeerModel;)Z

    move-result p1

    return p1
.end method
