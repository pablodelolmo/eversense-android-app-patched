.class final enum Lcom/google/common/collect/Constraints$NotNullConstraint;
.super Ljava/lang/Enum;
.source "Constraints.java"

# interfaces
.implements Lcom/google/common/collect/Constraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NotNullConstraint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/Constraints$NotNullConstraint;",
        ">;",
        "Lcom/google/common/collect/Constraint<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/Constraints$NotNullConstraint;

.field public static final enum INSTANCE:Lcom/google/common/collect/Constraints$NotNullConstraint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Lcom/google/common/collect/Constraints$NotNullConstraint;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Constraints$NotNullConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/Constraints$NotNullConstraint;->INSTANCE:Lcom/google/common/collect/Constraints$NotNullConstraint;

    const/4 v0, 0x1

    .line 53
    new-array v0, v0, [Lcom/google/common/collect/Constraints$NotNullConstraint;

    sget-object v1, Lcom/google/common/collect/Constraints$NotNullConstraint;->INSTANCE:Lcom/google/common/collect/Constraints$NotNullConstraint;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/collect/Constraints$NotNullConstraint;->$VALUES:[Lcom/google/common/collect/Constraints$NotNullConstraint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/Constraints$NotNullConstraint;
    .locals 1

    .line 53
    const-class v0, Lcom/google/common/collect/Constraints$NotNullConstraint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Constraints$NotNullConstraint;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/Constraints$NotNullConstraint;
    .locals 1

    .line 53
    sget-object v0, Lcom/google/common/collect/Constraints$NotNullConstraint;->$VALUES:[Lcom/google/common/collect/Constraints$NotNullConstraint;

    invoke-virtual {v0}, [Lcom/google/common/collect/Constraints$NotNullConstraint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/Constraints$NotNullConstraint;

    return-object v0
.end method


# virtual methods
.method public checkElement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Not null"

    return-object v0
.end method
