.class public final Ldagger/internal/codegen/GraphVizWriter;
.super Ljava/lang/Object;
.source "GraphVizWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final INDENT:Ljava/lang/String; = "  "


# instance fields
.field private final generatedNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private indent:I

.field private nextName:I

.field private final out:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Ldagger/internal/codegen/GraphVizWriter;->indent:I

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Ldagger/internal/codegen/GraphVizWriter;->nextName:I

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->generatedNames:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    return-void
.end method

.method private attributes([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 98
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 99
    invoke-direct {p0}, Ldagger/internal/codegen/GraphVizWriter;->indent()V

    .line 100
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Ldagger/internal/codegen/GraphVizWriter;->literal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private indent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 135
    :goto_0
    iget v1, p0, Ldagger/internal/codegen/GraphVizWriter;->indent:I

    if-ge v0, v1, :cond_0

    .line 136
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private inlineAttributes([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 110
    :cond_1
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 111
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    if-eqz v0, :cond_2

    .line 112
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 113
    :cond_2
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Ldagger/internal/codegen/GraphVizWriter;->literal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 117
    :cond_3
    iget-object p1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private literal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\\w+"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private nextName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Ldagger/internal/codegen/GraphVizWriter;->nextName:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Ldagger/internal/codegen/GraphVizWriter;->nextName:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private nodeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\\w+"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 122
    :cond_0
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->generatedNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "n"

    .line 124
    invoke-direct {p0, v0}, Ldagger/internal/codegen/GraphVizWriter;->nextName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->generatedNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 126
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "label"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Ldagger/internal/codegen/GraphVizWriter;->node(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public varargs beginGraph([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ldagger/internal/codegen/GraphVizWriter;->indent()V

    .line 45
    iget v0, p0, Ldagger/internal/codegen/GraphVizWriter;->indent:I

    if-nez v0, :cond_0

    const-string v0, "digraph "

    goto :goto_0

    :cond_0
    const-string v0, "subgraph "

    .line 46
    :goto_0
    iget v1, p0, Ldagger/internal/codegen/GraphVizWriter;->indent:I

    if-nez v1, :cond_1

    const-string v1, "G"

    goto :goto_1

    :cond_1
    const-string v1, "cluster"

    :goto_1
    invoke-direct {p0, v1}, Ldagger/internal/codegen/GraphVizWriter;->nextName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    iget-object v2, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 50
    iget v0, p0, Ldagger/internal/codegen/GraphVizWriter;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldagger/internal/codegen/GraphVizWriter;->indent:I

    .line 51
    invoke-direct {p0, p1}, Ldagger/internal/codegen/GraphVizWriter;->attributes([Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public varargs edge(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Ldagger/internal/codegen/GraphVizWriter;->nodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-direct {p0, p2}, Ldagger/internal/codegen/GraphVizWriter;->nodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-direct {p0}, Ldagger/internal/codegen/GraphVizWriter;->indent()V

    .line 72
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p3}, Ldagger/internal/codegen/GraphVizWriter;->inlineAttributes([Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string p2, ";\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public varargs edgeDefaults([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Ldagger/internal/codegen/GraphVizWriter;->indent()V

    .line 90
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v1, "edge"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p1}, Ldagger/internal/codegen/GraphVizWriter;->inlineAttributes([Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public endGraph()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget v0, p0, Ldagger/internal/codegen/GraphVizWriter;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ldagger/internal/codegen/GraphVizWriter;->indent:I

    .line 56
    invoke-direct {p0}, Ldagger/internal/codegen/GraphVizWriter;->indent()V

    .line 57
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public varargs node(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Ldagger/internal/codegen/GraphVizWriter;->nodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-direct {p0}, Ldagger/internal/codegen/GraphVizWriter;->indent()V

    .line 63
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p2}, Ldagger/internal/codegen/GraphVizWriter;->inlineAttributes([Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string p2, ";\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public varargs nodeDefaults([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-direct {p0}, Ldagger/internal/codegen/GraphVizWriter;->indent()V

    .line 82
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v1, "node"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1}, Ldagger/internal/codegen/GraphVizWriter;->inlineAttributes([Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
