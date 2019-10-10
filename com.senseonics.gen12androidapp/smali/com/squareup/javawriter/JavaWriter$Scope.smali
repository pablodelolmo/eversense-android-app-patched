.class final enum Lcom/squareup/javawriter/JavaWriter$Scope;
.super Ljava/lang/Enum;
.source "JavaWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/javawriter/JavaWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/javawriter/JavaWriter$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum ANNOTATION_ARRAY_VALUE:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum ANNOTATION_ATTRIBUTE:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum CONSTRUCTOR:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum INTERFACE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum TYPE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 853
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "TYPE_DECLARATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->TYPE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 854
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "INTERFACE_DECLARATION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->INTERFACE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 855
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "ABSTRACT_METHOD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 856
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "NON_ABSTRACT_METHOD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 857
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "CONSTRUCTOR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->CONSTRUCTOR:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 858
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "CONTROL_FLOW"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 859
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "ANNOTATION_ATTRIBUTE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ATTRIBUTE:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 860
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "ANNOTATION_ARRAY_VALUE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ARRAY_VALUE:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 861
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "INITIALIZER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

    const/16 v0, 0x9

    .line 852
    new-array v0, v0, [Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->TYPE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->INTERFACE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v1, v0, v5

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->CONSTRUCTOR:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v1, v0, v7

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ATTRIBUTE:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v1, v0, v8

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ARRAY_VALUE:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v1, v0, v9

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v1, v0, v10

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->$VALUES:[Lcom/squareup/javawriter/JavaWriter$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 852
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter$Scope;
    .locals 1

    .line 852
    const-class v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/javawriter/JavaWriter$Scope;

    return-object p0
.end method

.method public static values()[Lcom/squareup/javawriter/JavaWriter$Scope;
    .locals 1

    .line 852
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->$VALUES:[Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-virtual {v0}, [Lcom/squareup/javawriter/JavaWriter$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/javawriter/JavaWriter$Scope;

    return-object v0
.end method
