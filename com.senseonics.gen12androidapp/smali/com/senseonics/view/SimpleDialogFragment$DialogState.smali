.class final enum Lcom/senseonics/view/SimpleDialogFragment$DialogState;
.super Ljava/lang/Enum;
.source "SimpleDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/view/SimpleDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DialogState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/view/SimpleDialogFragment$DialogState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/view/SimpleDialogFragment$DialogState;

.field public static final enum CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

.field public static final enum CANCELLING:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

.field public static final enum FINISHING:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

.field public static final enum NOT_CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 186
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    const-string v1, "NOT_CANCELLABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/view/SimpleDialogFragment$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->NOT_CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    .line 187
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    const-string v1, "CANCELLABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/view/SimpleDialogFragment$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    .line 188
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    const-string v1, "CANCELLING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/view/SimpleDialogFragment$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->CANCELLING:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    .line 189
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    const-string v1, "FINISHING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/senseonics/view/SimpleDialogFragment$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->FINISHING:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    const/4 v0, 0x4

    .line 185
    new-array v0, v0, [Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    sget-object v1, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->NOT_CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->CANCELLING:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->FINISHING:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->$VALUES:[Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/view/SimpleDialogFragment$DialogState;
    .locals 1

    .line 185
    const-class v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/view/SimpleDialogFragment$DialogState;
    .locals 1

    .line 185
    sget-object v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->$VALUES:[Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    invoke-virtual {v0}, [Lcom/senseonics/view/SimpleDialogFragment$DialogState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    return-object v0
.end method
