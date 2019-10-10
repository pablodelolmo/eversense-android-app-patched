.class Lcom/senseonics/mycircle/model/MyCircleModel$5;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/model/MyCircleModel;


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/model/MyCircleModel;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/senseonics/mycircle/model/MyCircleModel$5;->this$0:Lcom/senseonics/mycircle/model/MyCircleModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 107
    check-cast p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/model/MyCircleModel$5;->apply(Lcom/senseonics/mycircle/model/MyCirclePeerModel;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/senseonics/mycircle/model/MyCirclePeerModel;)Ljava/lang/String;
    .locals 0

    .line 110
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getMemberName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
