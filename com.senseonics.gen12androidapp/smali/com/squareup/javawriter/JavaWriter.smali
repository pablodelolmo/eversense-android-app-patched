.class public Lcom/squareup/javawriter/JavaWriter;
.super Ljava/lang/Object;
.source "JavaWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/javawriter/JavaWriter$Scope;
    }
.end annotation


# static fields
.field private static final INDENT:Ljava/lang/String; = "  "

.field private static final MAX_SINGLE_LINE_ATTRIBUTES:I = 0x3

.field private static final METHOD_SCOPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/squareup/javawriter/JavaWriter$Scope;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final importedTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private indent:Ljava/lang/String;

.field private isCompressingTypes:Z

.field private final out:Ljava/io/Writer;

.field private packagePrefix:Ljava/lang/String;

.field private final scopes:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/squareup/javawriter/JavaWriter$Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "(?:[\\w$]+\\.)*([\\w\\.*$]+)"

    .line 30
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/squareup/javawriter/JavaWriter;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    .line 837
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->CONSTRUCTOR:Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v2, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v3, Lcom/squareup/javawriter/JavaWriter$Scope;->INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/squareup/javawriter/JavaWriter;->METHOD_SCOPES:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    .line 39
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->types:Ljava/util/Deque;

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/squareup/javawriter/JavaWriter;->isCompressingTypes:Z

    const-string v0, "  "

    .line 42
    iput-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->indent:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    return-void
.end method

.method private checkInMethod()V
    .locals 2

    .line 841
    sget-object v0, Lcom/squareup/javawriter/JavaWriter;->METHOD_SCOPES:Ljava/util/EnumSet;

    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private containsArray(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 614
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 615
    instance-of v0, v0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private emitAnnotationValue(Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ARRAY_VALUE:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 631
    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v5, p1, v3

    if-eqz v4, :cond_0

    .line 634
    iget-object v4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_1

    .line 636
    :cond_0
    iget-object v6, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v7, ",\n"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 638
    :goto_1
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 639
    iget-object v6, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 641
    :cond_1
    new-array p1, v2, [Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ARRAY_VALUE:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v0, p1, v1

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->popScope([Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 642
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 643
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 644
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method

.method private emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-boolean v0, p0, Lcom/squareup/javawriter/JavaWriter;->isCompressingTypes:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->compressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private emitLastEnumValue(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 492
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 493
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private emitModifiers(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 813
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 817
    :cond_0
    instance-of v0, p1, Ljava/util/EnumSet;

    if-nez v0, :cond_1

    .line 818
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    .line 820
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Modifier;

    .line 821
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljavax/lang/model/element/Modifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private hangingIndent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 833
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->indent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private indent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 826
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 827
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->indent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isAmbiguous(Ljava/lang/String;)Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static isClassInPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 208
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2e

    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 213
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private varargs popScope([Lcom/squareup/javawriter/JavaWriter$Scope;)V
    .locals 1

    .line 847
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 848
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_0
    return-void
.end method

.method public static rawType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3c

    .line 800
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 802
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static stringLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    .line 741
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 742
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 743
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v1, :cond_2

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_1

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 767
    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "\\u%04x"

    const/4 v6, 0x1

    .line 768
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 770
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const-string v4, "\\r"

    .line 764
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string v4, "\\f"

    .line 761
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v4, "\\n"

    .line 758
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v4, "\\t"

    .line 755
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string v4, "\\b"

    .line 752
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v4, "\\\\"

    .line 749
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v4, "\\\""

    .line 746
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 774
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 780
    array-length v0, p1

    if-nez v0, :cond_0

    .line 781
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 783
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 784
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 786
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "<"

    .line 788
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 789
    aget-object p0, p1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    .line 790
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_2

    const-string v1, ", "

    .line 791
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    aget-object v1, p1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    const-string p0, ">"

    .line 794
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public beginConstructor(Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->types:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/javawriter/JavaWriter;->rawType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;

    return-object p0
.end method

.method public varargs beginConstructor(Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->types:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/javawriter/JavaWriter;->rawType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    return-object p0
.end method

.method public varargs beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->checkInMethod()V

    .line 675
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 676
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 677
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, " {\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 678
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    sget-object p2, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-interface {p1, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-object p0
.end method

.method public beginInitializer(Z)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    if-eqz p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "static"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "{\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 242
    :goto_0
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-interface {p1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-object p0
.end method

.method public beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 387
    invoke-direct {p0, p3}, Lcom/squareup/javawriter/JavaWriter;->emitModifiers(Ljava/util/Set;)V

    if-eqz p1, :cond_0

    .line 389
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 390
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_0
    invoke-direct {p0, p2}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 395
    :goto_0
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p4, :cond_2

    const/4 v0, 0x0

    .line 397
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 399
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 401
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 402
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    .line 403
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_1

    .line 406
    :cond_2
    iget-object p4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, ")"

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p5, :cond_4

    .line 407
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_4

    .line 408
    iget-object p4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "\n"

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 410
    iget-object p4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "    throws "

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 411
    :goto_2
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    if-ge p2, p4, :cond_4

    if-eqz p2, :cond_3

    .line 413
    iget-object p4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, ", "

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 415
    :cond_3
    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-direct {p0, p4}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 418
    :cond_4
    sget-object p2, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    sget-object p2, Lcom/squareup/javawriter/JavaWriter$Scope;->INTERFACE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    iget-object p3, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    invoke-interface {p3}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/squareup/javawriter/JavaWriter$Scope;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_4

    .line 422
    :cond_5
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p3, " {\n"

    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 423
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    if-nez p1, :cond_6

    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->CONSTRUCTOR:Lcom/squareup/javawriter/JavaWriter$Scope;

    goto :goto_3

    :cond_6
    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    :goto_3
    invoke-interface {p2, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_5

    .line 419
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, ";\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 420
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    sget-object p2, Lcom/squareup/javawriter/JavaWriter$Scope;->ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-interface {p1, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :goto_5
    return-object p0
.end method

.method public varargs beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public beginType(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    const-class v0, Ljavax/lang/model/element/Modifier;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 270
    new-array v6, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public varargs beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 282
    invoke-direct {p0, p3}, Lcom/squareup/javawriter/JavaWriter;->emitModifiers(Ljava/util/Set;)V

    .line 283
    iget-object p3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 284
    iget-object p3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    if-eqz p4, :cond_0

    .line 287
    iget-object p3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, " extends "

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 288
    invoke-direct {p0, p4}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 290
    :cond_0
    array-length p3, p5

    if-lez p3, :cond_2

    .line 291
    iget-object p3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p4, "\n"

    invoke-virtual {p3, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 293
    iget-object p3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p4, "    implements "

    invoke-virtual {p3, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 294
    :goto_0
    array-length p4, p5

    if-ge p3, p4, :cond_2

    if-eqz p3, :cond_1

    .line 296
    iget-object p4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, ", "

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 298
    :cond_1
    aget-object p4, p5, p3

    invoke-direct {p0, p4}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 301
    :cond_2
    iget-object p3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p4, " {\n"

    invoke-virtual {p3, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 302
    iget-object p3, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    const-string p4, "interface"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/squareup/javawriter/JavaWriter$Scope;->INTERFACE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/squareup/javawriter/JavaWriter$Scope;->TYPE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    :goto_1
    invoke-interface {p3, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 303
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->types:Ljava/util/Deque;

    invoke-interface {p2, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-object p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 808
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public compressType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 169
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 172
    :cond_0
    sget-object v1, Lcom/squareup/javawriter/JavaWriter;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 175
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 179
    :goto_1
    invoke-virtual {v0, p1, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    if-nez v4, :cond_2

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 186
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 187
    iget-object v4, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 189
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 190
    :cond_3
    iget-object v4, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/squareup/javawriter/JavaWriter;->isClassInPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 191
    iget-object v4, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-direct {p0, v4}, Lcom/squareup/javawriter/JavaWriter;->isAmbiguous(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 193
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 195
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v4, "java.lang."

    .line 197
    invoke-static {v3, v4}, Lcom/squareup/javawriter/JavaWriter;->isClassInPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "java.lang."

    .line 198
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 200
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :goto_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    goto :goto_0
.end method

.method public emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 520
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 532
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitAnnotation(Ljava/lang/Class;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 556
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitAnnotation(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitAnnotation(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 544
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 545
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 546
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 547
    invoke-direct {p0, p2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotationValue(Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 548
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 549
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitAnnotation(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 569
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 570
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 571
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 585
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_2

    .line 586
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->containsArray(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 575
    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 576
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "value"

    .line 577
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 578
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 579
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, " = "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 581
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotationValue(Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 582
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 587
    :goto_1
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    sget-object v3, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ATTRIBUTE:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-interface {v0, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    const-string v0, "\n"

    goto :goto_2

    :cond_3
    const-string v0, ""

    .line 590
    :goto_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 591
    iget-object v4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const-string v0, ",\n"

    goto :goto_4

    :cond_4
    const-string v0, ", "

    :goto_4
    if-eqz p1, :cond_5

    .line 594
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 596
    :cond_5
    iget-object v4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 597
    iget-object v4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 598
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 599
    invoke-direct {p0, v3}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotationValue(Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_3

    .line 601
    :cond_6
    new-array p2, v1, [Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ATTRIBUTE:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v0, p2, v2

    invoke-direct {p0, p2}, Lcom/squareup/javawriter/JavaWriter;->popScope([Lcom/squareup/javawriter/JavaWriter$Scope;)V

    if-eqz p1, :cond_7

    .line 603
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 604
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 606
    :cond_7
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 609
    :goto_5
    :pswitch_1
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitEnumValue(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 477
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 478
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, ",\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitEnumValue(Ljava/lang/String;Z)Lcom/squareup/javawriter/JavaWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 487
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitLastEnumValue(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitEnumValue(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public emitEnumValues(Ljava/lang/Iterable;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 501
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 503
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->emitEnumValue(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 506
    :cond_0
    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->emitLastEnumValue(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public emitField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    const-class v0, Ljavax/lang/model/element/Modifier;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 331
    invoke-direct {p0, p3}, Lcom/squareup/javawriter/JavaWriter;->emitModifiers(Ljava/util/Set;)V

    .line 332
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitCompressedType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 333
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 337
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, " ="

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 338
    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 339
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    const-string p1, "\n"

    const/4 p2, -0x1

    .line 342
    invoke-virtual {p4, p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 343
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const/4 p3, 0x0

    aget-object p3, p1, p3

    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 344
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_1

    .line 345
    iget-object p3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p4, "\n"

    invoke-virtual {p3, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->hangingIndent()V

    .line 347
    iget-object p3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    aget-object p4, p1, p2

    invoke-virtual {p3, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 350
    :cond_1
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, ";\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    sget-object v1, Lcom/squareup/javawriter/JavaWriter;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 114
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v2, "import "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public varargs emitImports([Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 98
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public varargs emitImports([Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public varargs emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 445
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 446
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "/**\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "\n"

    .line 447
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 448
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 449
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, " *"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 451
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 452
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_1
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 457
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, " */\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitPackage(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 72
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ""

    .line 73
    iput-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "package "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, ";\n\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public varargs emitSingleLineComment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 464
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "// "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 466
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public varargs emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 656
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->checkInMethod()V

    .line 657
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 658
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 659
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 660
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 662
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->hangingIndent()V

    .line 663
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    aget-object v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 665
    :cond_0
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, ";\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitStaticImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    sget-object v1, Lcom/squareup/javawriter/JavaWriter;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 142
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v2, "import static "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public varargs emitStaticImports([Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitStaticImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public endConstructor()Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 732
    new-array v0, v0, [Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->CONSTRUCTOR:Lcom/squareup/javawriter/JavaWriter$Scope;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope([Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 733
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 734
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public endControlFlow()Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 697
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/squareup/javawriter/JavaWriter;->endControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v0

    return-object v0
.end method

.method public varargs endControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 705
    new-array v0, v0, [Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope([Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 706
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    if-eqz p1, :cond_0

    .line 708
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 710
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, ";\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :cond_0
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, "}\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public endInitializer()Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 248
    new-array v0, v0, [Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope([Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 249
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 250
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public endMethod()Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 721
    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->CONSTRUCTOR:Lcom/squareup/javawriter/JavaWriter$Scope;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    if-eq v0, v1, :cond_2

    .line 725
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 722
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 723
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method public endType()Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 309
    new-array v0, v0, [Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->TYPE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->INTERFACE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope([Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 310
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->types:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 311
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 312
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public isCompressingTypes()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/squareup/javawriter/JavaWriter;->isCompressingTypes:Z

    return v0
.end method

.method public varargs nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 687
    new-array v0, v0, [Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope([Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 688
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 689
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/Deque;

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 690
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 692
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, " {\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public setCompressingTypes(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/squareup/javawriter/JavaWriter;->isCompressingTypes:Z

    return-void
.end method

.method public setIndent(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->indent:Ljava/lang/String;

    return-void
.end method
