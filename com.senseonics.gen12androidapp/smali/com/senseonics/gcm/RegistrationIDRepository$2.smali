.class Lcom/senseonics/gcm/RegistrationIDRepository$2;
.super Ljava/lang/Object;
.source "RegistrationIDRepository.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gcm/RegistrationIDRepository;->getMyFollowerGCMRegIDsThenPostGCM(Lcom/senseonics/util/TransmitterMessageCode;Ljava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gcm/RegistrationIDRepository;


# direct methods
.method constructor <init>(Lcom/senseonics/gcm/RegistrationIDRepository;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/senseonics/gcm/RegistrationIDRepository$2;->this$0:Lcom/senseonics/gcm/RegistrationIDRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/senseonics/gcm/RegistrationIDRepository$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
