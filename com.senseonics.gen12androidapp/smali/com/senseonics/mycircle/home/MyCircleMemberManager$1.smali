.class Lcom/senseonics/mycircle/home/MyCircleMemberManager$1;
.super Ljava/lang/Object;
.source "MyCircleMemberManager.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/home/MyCircleMemberManager;->fetchMemberListNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lcom/senseonics/mycircle/model/PeerDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/home/MyCircleMemberManager;

.field final synthetic val$peerDtos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/home/MyCircleMemberManager;Ljava/util/List;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$1;->this$0:Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    iput-object p2, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$1;->val$peerDtos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/senseonics/mycircle/model/PeerDto;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$1;->val$peerDtos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Lcom/senseonics/mycircle/model/PeerDto;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/home/MyCircleMemberManager$1;->call(Lcom/senseonics/mycircle/model/PeerDto;)V

    return-void
.end method
