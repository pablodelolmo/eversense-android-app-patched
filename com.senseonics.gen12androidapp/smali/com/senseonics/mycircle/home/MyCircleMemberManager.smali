.class public Lcom/senseonics/mycircle/home/MyCircleMemberManager;
.super Ljava/lang/Object;
.source "MyCircleMemberManager.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final Tag:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private messageHandler:Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;

.field private model:Lcom/senseonics/mycircle/model/MyCircleModel;

.field private repository:Lcom/senseonics/mycircle/home/MyCircleRepository;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/mycircle/home/MyCircleRepository;Lcom/senseonics/mycircle/model/MyCircleModel;Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "(DMS)MemberManager"

    .line 21
    iput-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->Tag:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 31
    iput-object p2, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->repository:Lcom/senseonics/mycircle/home/MyCircleRepository;

    .line 32
    iput-object p3, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    .line 33
    iput-object p4, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->messageHandler:Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/mycircle/home/MyCircleMemberManager;)Lcom/senseonics/mycircle/model/MyCircleModel;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/mycircle/home/MyCircleMemberManager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->onFetchListsComplete()V

    return-void
.end method

.method private fetchMemberListNow()V
    .locals 5

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->repository:Lcom/senseonics/mycircle/home/MyCircleRepository;

    new-instance v2, Lcom/senseonics/mycircle/home/MyCircleMemberManager$1;

    invoke-direct {v2, p0, v0}, Lcom/senseonics/mycircle/home/MyCircleMemberManager$1;-><init>(Lcom/senseonics/mycircle/home/MyCircleMemberManager;Ljava/util/List;)V

    new-instance v3, Lcom/senseonics/mycircle/home/MyCircleMemberManager$2;

    invoke-direct {v3, p0}, Lcom/senseonics/mycircle/home/MyCircleMemberManager$2;-><init>(Lcom/senseonics/mycircle/home/MyCircleMemberManager;)V

    new-instance v4, Lcom/senseonics/mycircle/home/MyCircleMemberManager$3;

    invoke-direct {v4, p0, v0}, Lcom/senseonics/mycircle/home/MyCircleMemberManager$3;-><init>(Lcom/senseonics/mycircle/home/MyCircleMemberManager;Ljava/util/List;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/senseonics/mycircle/home/MyCircleRepository;->getPeerLists(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V

    return-void
.end method

.method private onFetchListsComplete()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    invoke-virtual {v0}, Lcom/senseonics/mycircle/model/MyCircleModel;->getRemovedMemberNamesAndSaveMembers()Ljava/util/List;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->messageHandler:Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;

    invoke-virtual {v1, v0}, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->postMemberRemovedEvent(Ljava/util/List;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->setCurrentDateTimeToMemberListLastFetchedOnInPreference()V

    return-void
.end method


# virtual methods
.method public startLoadingMemberList()V
    .locals 11

    .line 38
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getMemberListLastFetchedOnDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "(DMS)MemberManager"

    const-string v1, "no last fetch time -> FETCH NOW"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-direct {p0}, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->fetchMemberListNow()V

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    const-string v8, "(DMS)MemberManager"

    .line 48
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentTimeInMills:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "|lastFetchedTimeInMills:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "|diff:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v6, v2

    if-gez v0, :cond_1

    const-string v0, "(DMS)MemberManager"

    const-string v1, "Invalid time"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->resetMemberListLastFetchedOnInPreference()V

    return-void

    :cond_1
    const/16 v0, 0x78

    int-to-long v1, v0

    const-wide/16 v3, 0x3c

    mul-long v1, v1, v3

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    cmp-long v1, v6, v1

    if-gez v1, :cond_2

    const-string v1, "(DMS)MemberManager"

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Less than ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " minutes)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 61
    :cond_2
    invoke-direct {p0}, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->fetchMemberListNow()V

    :goto_0
    return-void
.end method
