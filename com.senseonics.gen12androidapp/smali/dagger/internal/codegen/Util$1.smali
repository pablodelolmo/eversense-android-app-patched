.class final Ldagger/internal/codegen/Util$1;
.super Ljavax/lang/model/util/SimpleTypeVisitor6;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;C)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor6<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$innerClassSeparator:C

.field final synthetic val$result:Ljava/lang/StringBuilder;

.field final synthetic val$type:Ljavax/lang/model/type/TypeMirror;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;CLjavax/lang/model/type/TypeMirror;)V
    .locals 0

    .line 104
    iput-object p1, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    iput-char p2, p0, Ldagger/internal/codegen/Util$1;->val$innerClassSeparator:C

    iput-object p3, p0, Ldagger/internal/codegen/Util$1;->val$type:Ljavax/lang/model/type/TypeMirror;

    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor6;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 104
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$1;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 154
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected TypeKind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 104
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$1;->visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 126
    invoke-interface {p1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    .line 127
    instance-of v0, p2, Ljavax/lang/model/type/PrimitiveType;

    if-eqz v0, :cond_0

    .line 128
    iget-object p1, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 130
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    iget-object p2, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    iget-char v0, p0, Ldagger/internal/codegen/Util$1;->val$innerClassSeparator:C

    invoke-static {p1, p2, v0}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;C)V

    .line 132
    :goto_0
    iget-object p1, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    const-string p2, "[]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 104
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$1;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 106
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/element/TypeElement;

    .line 107
    iget-object v0, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    iget-char v1, p0, Ldagger/internal/codegen/Util$1;->val$innerClassSeparator:C

    invoke-static {v0, p2, v1}, Ldagger/internal/codegen/Util;->rawTypeToString(Ljava/lang/StringBuilder;Ljavax/lang/model/element/TypeElement;C)V

    .line 108
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p1

    .line 109
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 110
    iget-object p2, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    .line 111
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    if-eqz p2, :cond_0

    .line 113
    iget-object v0, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    iget-object v1, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    iget-char v2, p0, Ldagger/internal/codegen/Util$1;->val$innerClassSeparator:C

    invoke-static {v0, v1, v2}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;C)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 117
    :cond_1
    iget-object p1, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 104
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$1;->visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    const-string p2, "<any>"

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 146
    new-instance p1, Ldagger/internal/codegen/Util$CodeGenerationIncompleteException;

    const-string p2, "Type reported as <any> is likely a not-yet generated parameterized type."

    invoke-direct {p1, p2}, Ldagger/internal/codegen/Util$CodeGenerationIncompleteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_0
    iget-object p2, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 104
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$1;->visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 122
    iget-object p1, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    iget-object p2, p0, Ldagger/internal/codegen/Util$1;->val$type:Ljavax/lang/model/type/TypeMirror;

    check-cast p2, Ljavax/lang/model/type/PrimitiveType;

    invoke-static {p2}, Ldagger/internal/codegen/Util;->access$000(Ljavax/lang/model/type/PrimitiveType;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 104
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$1;->visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 136
    iget-object p2, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    return-object p1
.end method
