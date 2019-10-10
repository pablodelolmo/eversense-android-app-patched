.class public Lcom/senseonics/mycircle/model/MyCircleModel;
.super Ljava/lang/Object;
.source "MyCircleModel.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private context:Landroid/content/Context;

.field private peerModels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;"
        }
    .end annotation
.end field

.field private secureStorer:Lcom/senseonics/util/UserInfoSecureStorer;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/UserInfoSecureStorer;Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/senseonics/mycircle/model/MyCircleModel;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 33
    iput-object p2, p0, Lcom/senseonics/mycircle/model/MyCircleModel;->secureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    .line 34
    iput-object p3, p0, Lcom/senseonics/mycircle/model/MyCircleModel;->context:Landroid/content/Context;

    .line 35
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/senseonics/mycircle/model/MyCircleModel;->peerModels:Ljava/util/Map;

    return-void
.end method

.method private filterModels(Lcom/google/common/base/Predicate;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/senseonics/mycircle/model/MyCircleModel;->peerModels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    new-instance p1, Lcom/senseonics/mycircle/model/MyCircleModel$6;

    invoke-direct {p1, p0, p2}, Lcom/senseonics/mycircle/model/MyCircleModel$6;-><init>(Lcom/senseonics/mycircle/model/MyCircleModel;Z)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public addPeers(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/PeerDto;",
            ">;)V"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/senseonics/mycircle/model/MyCircleModel;->peerModels:Ljava/util/Map;

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/mycircle/model/PeerDto;

    .line 45
    iget-object v1, p0, Lcom/senseonics/mycircle/model/MyCircleModel;->peerModels:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/senseonics/mycircle/model/PeerDto;->getEmail()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/senseonics/mycircle/model/MyCirclePeerModel;

    iget-object v4, p0, Lcom/senseonics/mycircle/model/MyCircleModel;->context:Landroid/content/Context;

    invoke-direct {v3, v0, v4}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;-><init>(Lcom/senseonics/mycircle/model/PeerDto;Landroid/content/Context;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurrentUser()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCircleModel;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getAccountUsernameFromPreference()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInvites()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/senseonics/mycircle/model/MyCircleModel$2;

    invoke-direct {v0, p0}, Lcom/senseonics/mycircle/model/MyCircleModel$2;-><init>(Lcom/senseonics/mycircle/model/MyCircleModel;)V

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, v0, v1}, Lcom/senseonics/mycircle/model/MyCircleModel;->filterModels(Lcom/google/common/base/Predicate;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/senseonics/mycircle/model/MyCircleModel$1;

    invoke-direct {v0, p0}, Lcom/senseonics/mycircle/model/MyCircleModel$1;-><init>(Lcom/senseonics/mycircle/model/MyCircleModel;)V

    const/4 v1, 0x1

    .line 65
    invoke-direct {p0, v0, v1}, Lcom/senseonics/mycircle/model/MyCircleModel;->filterModels(Lcom/google/common/base/Predicate;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPeer(Ljava/lang/String;)Lcom/senseonics/mycircle/model/MyCirclePeerModel;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCircleModel;->peerModels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;

    return-object p1
.end method

.method public getRemovedMemberNamesAndSaveMembers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/senseonics/mycircle/model/MyCircleModel;->getMembers()Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v1

    new-instance v2, Lcom/senseonics/mycircle/model/MyCircleModel$3;

    invoke-direct {v2, p0}, Lcom/senseonics/mycircle/model/MyCircleModel$3;-><init>(Lcom/senseonics/mycircle/model/MyCircleModel;)V

    .line 83
    invoke-virtual {v1, v2}, Lcom/google/common/collect/FluentIterable;->transform(Lcom/google/common/base/Function;)Lcom/google/common/collect/FluentIterable;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/google/common/collect/FluentIterable;->toList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/senseonics/mycircle/model/MyCircleModel;->secureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-virtual {v2}, Lcom/senseonics/util/UserInfoSecureStorer;->getMemberList()Ljava/util/List;

    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/senseonics/mycircle/model/MyCircleModel;->secureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-virtual {v3, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->saveMemberList(Ljava/util/List;)V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    new-instance v3, Lcom/senseonics/mycircle/model/MyCircleModel$4;

    invoke-direct {v3, p0, v1}, Lcom/senseonics/mycircle/model/MyCircleModel$4;-><init>(Lcom/senseonics/mycircle/model/MyCircleModel;Lcom/google/common/collect/ImmutableList;)V

    invoke-static {v2, v3}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 106
    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    new-instance v1, Lcom/senseonics/mycircle/model/MyCircleModel$5;

    invoke-direct {v1, p0}, Lcom/senseonics/mycircle/model/MyCircleModel$5;-><init>(Lcom/senseonics/mycircle/model/MyCircleModel;)V

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/common/collect/FluentIterable;->transform(Lcom/google/common/base/Function;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/common/collect/FluentIterable;->toList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/senseonics/mycircle/model/MyCircleModel;->peerModels:Ljava/util/Map;

    return-void
.end method

.method public updatePeerSharingStatus(Ljava/lang/String;I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCircleModel;->peerModels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;

    invoke-virtual {p1, p2}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->setStatus(I)V

    return-void
.end method
