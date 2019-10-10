.class public final Ldagger/internal/codegen/InjectAdapterProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "InjectAdapterProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "javax.inject.Inject"
    }
.end annotation


# instance fields
.field private final remainingTypeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 73
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->remainingTypeNames:Ljava/util/Set;

    return-void
.end method

.method private allTypesExist(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/Element;",
            ">;)Z"
        }
    .end annotation

    .line 119
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 120
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ERROR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private createInjectedClass(Ljava/lang/String;)Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;
    .locals 9

    .line 187
    iget-object v0, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    .line 188
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/Element;

    .line 193
    const-class v7, Ljavax/inject/Inject;

    invoke-interface {v6, v7}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    sget-object v7, Ldagger/internal/codegen/InjectAdapterProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {v6}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 218
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot inject "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_0

    :pswitch_0
    if-eqz v5, :cond_1

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many injectable constructors on "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Abstract class "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " must not have an @Inject-annotated constructor."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    .line 214
    :cond_2
    :goto_1
    check-cast v6, Ljavax/lang/model/element/ExecutableElement;

    move-object v5, v6

    goto :goto_0

    .line 199
    :pswitch_1
    invoke-interface {v6}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 200
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 202
    :cond_3
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    if-nez v5, :cond_5

    if-nez v0, :cond_5

    .line 224
    invoke-static {p1}, Ldagger/internal/codegen/Util;->getNoArgsConstructor(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 225
    invoke-static {v0}, Ldagger/internal/codegen/Util;->isCallableConstructor(Ljavax/lang/model/element/ExecutableElement;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object v0, v4

    goto :goto_2

    :cond_5
    move-object v0, v5

    .line 230
    :cond_6
    :goto_2
    new-instance v3, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;

    invoke-direct {v3, p1, v1, v0, v2}, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;-><init>(Ljavax/lang/model/element/TypeElement;Ljava/util/List;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V
    .locals 2

    .line 513
    iget-object v0, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p1, p2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    return-void
.end method

.method private fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;
    .locals 1

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "field_"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private findImports(ZZZ)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 477
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 478
    const-class v1, Ldagger/internal/Binding;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 480
    const-class p1, Ldagger/internal/Linker;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 481
    const-class p1, Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 483
    const-class p1, Ldagger/MembersInjector;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_2

    .line 484
    const-class p1, Ljavax/inject/Provider;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private findInjectedClassNames(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 130
    const-class v1, Ljavax/inject/Inject;

    invoke-interface {p1, v1}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 131
    invoke-direct {p0, v1}, Ldagger/internal/codegen/InjectAdapterProcessor;->validateInjectable(Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Ldagger/internal/codegen/Util;->rawTypeToString(Ljavax/lang/model/type/TypeMirror;C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private generateInjectAdapter(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    .line 241
    invoke-static/range {p1 .. p1}, Ldagger/internal/codegen/Util;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1, v0}, Ldagger/internal/codegen/InjectAdapterProcessor;->strippedTypeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 244
    invoke-static/range {p1 .. p1}, Ldagger/internal/codegen/Util;->getApplicationSupertype(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v11

    const-string v1, "$$InjectAdapter"

    .line 245
    invoke-static {v3, v1}, Ldagger/internal/codegen/Util;->adapterName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 246
    iget-object v1, v8, Ldagger/internal/codegen/InjectAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Ljavax/lang/model/element/Element;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    invoke-interface {v1, v5, v4}, Ljavax/annotation/processing/Filer;->createSourceFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 247
    new-instance v7, Lcom/squareup/javawriter/JavaWriter;

    invoke-interface {v1}, Ljavax/tools/JavaFileObject;->openWriter()Ljava/io/Writer;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/squareup/javawriter/JavaWriter;-><init>(Ljava/io/Writer;)V

    .line 248
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/TypeElement;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v4, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 249
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 250
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    if-eqz v9, :cond_2

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    if-nez v4, :cond_4

    if-eqz v9, :cond_3

    .line 253
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v14, 0x1

    :goto_4
    const-string v12, "Code generated by dagger-compiler.  Do not edit."

    .line 256
    new-array v13, v6, [Ljava/lang/Object;

    invoke-virtual {v7, v12, v13}, Lcom/squareup/javawriter/JavaWriter;->emitSingleLineComment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 257
    invoke-virtual {v7, v0}, Lcom/squareup/javawriter/JavaWriter;->emitPackage(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    if-eqz v9, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 258
    :goto_5
    invoke-direct {v8, v14, v4, v0}, Ldagger/internal/codegen/InjectAdapterProcessor;->findImports(ZZZ)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/squareup/javawriter/JavaWriter;->emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    .line 259
    invoke-virtual {v7}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 260
    invoke-static {v10, v1, v4, v14}, Ldagger/internal/codegen/AdapterJavadocs;->bindingTypeDocs(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    const-string v0, "class"

    .line 261
    sget-object v1, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    sget-object v12, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {v1, v12}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-class v12, Ldagger/internal/Binding;

    new-array v13, v2, [Ljava/lang/String;

    aput-object v10, v13, v6

    invoke-static {v12, v13}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    invoke-direct {v8, v10, v4, v2}, Ldagger/internal/codegen/InjectAdapterProcessor;->implementedInterfaces(Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v17

    move-object v12, v7

    move-object v13, v5

    move v6, v14

    move-object v14, v0

    move v2, v15

    move-object v15, v1

    invoke-virtual/range {v12 .. v17}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-object/from16 v12, p3

    .line 264
    invoke-direct {v8, v7, v12, v2}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeMemberBindingsFields(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;Z)V

    if-eqz v9, :cond_7

    .line 266
    invoke-direct {v8, v7, v9, v2}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeParameterBindingsFields(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Z)V

    :cond_7
    if-eqz v11, :cond_8

    .line 269
    invoke-direct {v8, v7, v11}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeSupertypeInjectorField(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/type/TypeMirror;)V

    .line 271
    :cond_8
    invoke-virtual {v7}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    move-object v0, v8

    move-object v1, v7

    move v13, v2

    move-object v2, v9

    move v14, v4

    move-object v4, v10

    .line 272
    invoke-direct/range {v0 .. v5}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeInjectAdapterConstructor(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_9

    const/4 v15, 0x1

    move-object v0, v8

    move-object v1, v7

    move-object v2, v9

    move-object v3, v12

    move v4, v13

    move-object v5, v10

    move-object v6, v11

    move-object/from16 v18, v7

    move v7, v15

    .line 274
    invoke-direct/range {v0 .. v7}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeAttachMethod(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;ZLjava/lang/String;Ljavax/lang/model/type/TypeMirror;Z)V

    const/4 v6, 0x1

    move-object/from16 v1, v18

    move-object v5, v11

    .line 276
    invoke-direct/range {v0 .. v6}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeGetDependenciesMethod(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;ZLjavax/lang/model/type/TypeMirror;Z)V

    goto :goto_7

    :cond_9
    move-object/from16 v18, v7

    :goto_7
    if-eqz v9, :cond_a

    move-object v0, v8

    move-object/from16 v1, v18

    move-object v2, v9

    move v3, v13

    move v4, v14

    move-object v5, v10

    .line 279
    invoke-direct/range {v0 .. v5}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeGetMethod(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;ZZLjava/lang/String;)V

    :cond_a
    if-eqz v14, :cond_b

    move-object v0, v8

    move-object/from16 v1, v18

    move-object v2, v12

    move v3, v13

    move-object v4, v10

    move-object v5, v11

    .line 282
    invoke-direct/range {v0 .. v5}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeMembersInjectMethod(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;ZLjava/lang/String;Ljavax/lang/model/type/TypeMirror;)V

    :cond_b
    move-object/from16 v0, v18

    .line 284
    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->endType()Lcom/squareup/javawriter/JavaWriter;

    .line 285
    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->close()V

    return-void
.end method

.method private generateInjectionsForClass(Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p1, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->constructor:Ljavax/lang/model/element/ExecutableElement;

    if-nez v0, :cond_0

    iget-object v0, p1, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    :cond_0
    iget-object v0, p1, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->type:Ljavax/lang/model/element/TypeElement;

    iget-object v1, p1, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->constructor:Ljavax/lang/model/element/ExecutableElement;

    iget-object v2, p1, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->fields:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Ldagger/internal/codegen/InjectAdapterProcessor;->generateInjectAdapter(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;)V

    .line 109
    :cond_1
    iget-object v0, p1, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->staticFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p1, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->type:Ljavax/lang/model/element/TypeElement;

    iget-object p1, p1, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->staticFields:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Ldagger/internal/codegen/InjectAdapterProcessor;->generateStaticInjection(Ljavax/lang/model/element/TypeElement;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private generateStaticInjection(Ljavax/lang/model/element/TypeElement;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$$StaticInjection"

    .line 293
    invoke-static {p1, v1}, Ldagger/internal/codegen/Util;->adapterName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    iget-object v1, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Ljavax/lang/model/element/Element;

    const/4 v8, 0x0

    aput-object p1, v4, v8

    invoke-interface {v1, v3, v4}, Ljavax/annotation/processing/Filer;->createSourceFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 296
    new-instance v9, Lcom/squareup/javawriter/JavaWriter;

    invoke-interface {v1}, Ljavax/tools/JavaFileObject;->openWriter()Ljava/io/Writer;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/squareup/javawriter/JavaWriter;-><init>(Ljava/io/Writer;)V

    const-string v1, "Code generated by dagger-compiler.  Do not edit."

    .line 298
    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v9, v1, v4}, Lcom/squareup/javawriter/JavaWriter;->emitSingleLineComment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 299
    invoke-static {p1}, Ldagger/internal/codegen/Util;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/squareup/javawriter/JavaWriter;->emitPackage(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    const/4 v1, 0x3

    .line 300
    new-array v1, v1, [Ljava/lang/String;

    const-class v4, Ldagger/internal/StaticInjection;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    const-class v4, Ldagger/internal/Binding;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-class v4, Ldagger/internal/Linker;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/squareup/javawriter/JavaWriter;->emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    .line 304
    invoke-virtual {v9}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    const-string v1, "A manager for {@code %s}\'s injections into static fields."

    .line 305
    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-virtual {v9, v1, v2}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    const-string v4, "class"

    .line 306
    sget-object p1, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    sget-object v1, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {p1, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    const-class p1, Ldagger/internal/StaticInjection;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/String;

    move-object v2, v9

    invoke-virtual/range {v2 .. v7}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 308
    invoke-direct {p0, v9, p2, v8}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeMemberBindingsFields(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;Z)V

    .line 309
    invoke-virtual {v9}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v4, p2

    move-object v6, v0

    .line 310
    invoke-direct/range {v1 .. v8}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeAttachMethod(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;ZLjava/lang/String;Ljavax/lang/model/type/TypeMirror;Z)V

    .line 311
    invoke-direct {p0, v9, p2, v0}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeStaticInjectMethod(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v9}, Lcom/squareup/javawriter/JavaWriter;->endType()Lcom/squareup/javawriter/JavaWriter;

    .line 313
    invoke-virtual {v9}, Lcom/squareup/javawriter/JavaWriter;->close()V

    return-void
.end method

.method private implementedInterfaces(Ljava/lang/String;ZZ)[Ljava/lang/String;
    .locals 4

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    .line 492
    const-class p3, Ljavax/inject/Provider;

    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v1

    invoke-static {p3, v3}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 495
    const-class p2, Ldagger/MembersInjector;

    new-array p3, v2, [Ljava/lang/String;

    aput-object p1, p3, v1

    invoke-static {p2, p3}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private parameterName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;
    .locals 1

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "parameter_"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private strippedTypeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 501
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private validateInjectable(Ljavax/lang/model/element/Element;)Z
    .locals 6

    .line 140
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 142
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@Inject is not valid on a class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    return v3

    .line 147
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_1

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method injection is not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    return v3

    .line 152
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_2

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t inject a final field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    return v3

    .line 158
    :cond_2
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_3

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t inject a private field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    return v3

    .line 164
    :cond_3
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_4

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t inject a private constructor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    return v3

    .line 170
    :cond_4
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->isClass()Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v1, 0x1

    .line 172
    :goto_1
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v2

    sget-object v5, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v1, :cond_7

    if-nez v2, :cond_7

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t inject a non-static inner class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    return v3

    :cond_7
    return v4
.end method

.method private writeAttachMethod(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;ZLjava/lang/String;Ljavax/lang/model/type/TypeMirror;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Element;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p6

    const-string v4, "Used internally to link bindings/providers together at run time\naccording to their dependency graph."

    const/4 v5, 0x0

    .line 357
    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v6}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    if-eqz p7, :cond_0

    .line 359
    const-class v4, Ljava/lang/Override;

    invoke-virtual {v1, v4}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 361
    :cond_0
    const-class v4, Ljava/lang/SuppressWarnings;

    const-string v6, "unchecked"

    invoke-static {v6}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    const-string v4, "void"

    const-string v6, "attach"

    .line 362
    sget-object v7, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/String;

    const-class v10, Ldagger/internal/Linker;

    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    const-string v10, "linker"

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-virtual {v1, v4, v6, v7, v9}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    const/4 v4, 0x3

    const/4 v6, 0x4

    if-eqz p2, :cond_1

    .line 365
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/lang/model/element/VariableElement;

    const-string v10, "%s = (%s) linker.requestBinding(%s, %s.class, getClass().getClassLoader())"

    .line 366
    new-array v12, v6, [Ljava/lang/Object;

    invoke-direct {v0, v2, v9}, Ldagger/internal/codegen/InjectAdapterProcessor;->parameterName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    const-class v13, Ldagger/internal/Binding;

    new-array v14, v11, [Ljava/lang/String;

    invoke-interface {v9}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-static {v6}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v5

    invoke-static {v13, v14}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/squareup/javawriter/JavaWriter;->compressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v11

    invoke-static {v9}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v8

    aput-object p5, v12, v4

    invoke-virtual {v1, v10, v12}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    const/4 v6, 0x4

    goto :goto_0

    .line 373
    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/Element;

    const-string v9, "%s = (%s) linker.requestBinding(%s, %s.class, getClass().getClassLoader())"

    const/4 v10, 0x4

    .line 374
    new-array v12, v10, [Ljava/lang/Object;

    invoke-direct {v0, v2, v7}, Ldagger/internal/codegen/InjectAdapterProcessor;->fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v5

    const-class v10, Ldagger/internal/Binding;

    new-array v13, v11, [Ljava/lang/String;

    invoke-interface {v7}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v14

    invoke-static {v14}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-static {v10, v13}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/squareup/javawriter/JavaWriter;->compressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v11

    check-cast v7, Ljavax/lang/model/element/VariableElement;

    invoke-static {v7}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v12, v8

    aput-object p5, v12, v4

    invoke-virtual {v1, v9, v12}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    const-string v2, "%s = (%s) linker.requestBinding(%s, %s.class, getClass().getClassLoader(), false, true)"

    const/4 v6, 0x4

    .line 381
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "supertype"

    aput-object v7, v6, v5

    const-class v7, Ldagger/internal/Binding;

    new-array v9, v11, [Ljava/lang/String;

    const/16 v10, 0x2e

    invoke-static {v3, v10}, Ldagger/internal/codegen/Util;->rawTypeToString(Ljavax/lang/model/type/TypeMirror;C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v7, v9}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/squareup/javawriter/JavaWriter;->compressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v11

    invoke-static/range {p6 .. p6}, Ldagger/internal/codegen/GeneratorKeys;->rawMembersKey(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    aput-object p5, v6, v4

    invoke-virtual {v1, v2, v6}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 388
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 389
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    return-void
.end method

.method private writeGetDependenciesMethod(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;ZLjavax/lang/model/type/TypeMirror;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Element;",
            ">;Z",
            "Ljavax/lang/model/type/TypeMirror;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Used internally obtain dependency information, such as for cyclical\ngraph detection."

    const/4 v1, 0x0

    .line 395
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    if-eqz p6, :cond_0

    .line 397
    const-class p6, Ljava/lang/Override;

    invoke-virtual {p1, p6}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 399
    :cond_0
    const-class p6, Ljava/util/Set;

    const-string v0, "Binding<?>"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    const-string v0, "void"

    const-string v2, "getDependencies"

    .line 400
    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object p6, v4, v1

    const-string v5, "getBindings"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object p6, v4, v5

    const/4 p6, 0x3

    const-string v5, "injectMembersBindings"

    aput-object v5, v4, p6

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    if-eqz p2, :cond_1

    .line 403
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljavax/lang/model/element/Element;

    const-string v0, "getBindings.add(%s)"

    .line 404
    new-array v2, v6, [Ljava/lang/Object;

    invoke-direct {p0, p4, p6}, Ldagger/internal/codegen/InjectAdapterProcessor;->parameterName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object p6

    aput-object p6, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 407
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/lang/model/element/Element;

    const-string p6, "injectMembersBindings.add(%s)"

    .line 408
    new-array v0, v6, [Ljava/lang/Object;

    invoke-direct {p0, p4, p3}, Ldagger/internal/codegen/InjectAdapterProcessor;->fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v1

    invoke-virtual {p1, p6, v0}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_1

    :cond_2
    if-eqz p5, :cond_3

    const-string p2, "injectMembersBindings.add(%s)"

    .line 411
    new-array p3, v6, [Ljava/lang/Object;

    const-string p4, "supertype"

    aput-object p4, p3, v1

    invoke-virtual {p1, p2, p3}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 413
    :cond_3
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 414
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    return-void
.end method

.method private writeGetMethod(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;ZZLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Returns the fully provisioned instance satisfying the contract for\n{@code Provider<%s>}."

    const/4 v1, 0x1

    .line 420
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    invoke-virtual {p1, v0, v2}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 421
    const-class v0, Ljava/lang/Override;

    invoke-virtual {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    const-string v0, "get"

    .line 422
    sget-object v2, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p1, p5, v0, v2, v4}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " result = new "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p5, 0x28

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljavax/lang/model/element/VariableElement;

    if-nez v1, :cond_0

    const-string v2, ", "

    .line 428
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 430
    :goto_1
    invoke-direct {p0, p3, p5}, Ldagger/internal/codegen/InjectAdapterProcessor;->parameterName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".get()"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p2, 0x29

    .line 432
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    if-eqz p4, :cond_2

    const-string p2, "injectMembers(result)"

    .line 435
    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    :cond_2
    const-string p2, "return result"

    .line 437
    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 438
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 439
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    return-void
.end method

.method private writeInjectAdapterConstructor(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    sget-object v0, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, p5, v0, v2}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    if-eqz p2, :cond_0

    .line 343
    invoke-interface {p3}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 346
    :cond_0
    invoke-interface {p3}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/codegen/GeneratorKeys;->rawMembersKey(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 347
    const-class p5, Ljavax/inject/Singleton;

    invoke-interface {p3, p5}, Ljavax/lang/model/element/TypeElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p3

    const/4 p5, 0x1

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const-string v0, "super(%s, %s, %s, %s.class)"

    const/4 v2, 0x4

    .line 348
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    aput-object p2, v2, p5

    const/4 p2, 0x2

    if-eqz p3, :cond_2

    const-string p3, "IS_SINGLETON"

    goto :goto_1

    :cond_2
    const-string p3, "NOT_SINGLETON"

    :goto_1
    aput-object p3, v2, p2

    const/4 p2, 0x3

    aput-object p4, v2, p2

    invoke-virtual {p1, v0, v2}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 350
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 351
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    return-void
.end method

.method private writeMemberBindingsFields(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Element;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 319
    const-class v1, Ldagger/internal/Binding;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-static {v4}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v0}, Ldagger/internal/codegen/InjectAdapterProcessor;->fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeMembersInjectMethod(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;ZLjava/lang/String;Ljavax/lang/model/type/TypeMirror;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Element;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Injects any {@code @Inject} annotated fields in the given instance,\nsatisfying the contract for {@code Provider<%s>}."

    const/4 v1, 0x1

    .line 445
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    invoke-virtual {p1, v0, v2}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 446
    const-class v0, Ljava/lang/Override;

    invoke-virtual {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    const-string v0, "void"

    const-string v2, "injectMembers"

    .line 447
    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    aput-object p4, v6, v3

    const-string p4, "object"

    aput-object p4, v6, v1

    invoke-virtual {p1, v0, v2, v4, v6}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 448
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljavax/lang/model/element/Element;

    const-string v0, "object.%s = %s.get()"

    .line 449
    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {p4}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, p3, p4}, Ldagger/internal/codegen/InjectAdapterProcessor;->fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    const-string p2, "supertype.injectMembers(object)"

    .line 454
    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 456
    :cond_1
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 457
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    return-void
.end method

.method private writeParameterBindingsFields(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    .line 328
    const-class v1, Ldagger/internal/Binding;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-static {v4}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v0}, Ldagger/internal/codegen/InjectAdapterProcessor;->parameterName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeStaticInjectMethod(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Element;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    const-string v0, "Performs the injections of dependencies into static fields when requested by\nthe {@code dagger.ObjectGraph}."

    const/4 v1, 0x0

    .line 463
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 464
    const-class v0, Ljava/lang/Override;

    invoke-virtual {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    const-string v0, "void"

    const-string v2, "inject"

    .line 465
    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 466
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    const-string v2, "%s.%s = %s.get()"

    const/4 v3, 0x3

    .line 467
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p3}, Lcom/squareup/javawriter/JavaWriter;->compressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-direct {p0, v1, v0}, Ldagger/internal/codegen/InjectAdapterProcessor;->fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 472
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 473
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    return-void
.end method

.method private writeSupertypeInjectorField(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/type/TypeMirror;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    const-class v0, Ldagger/internal/Binding;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-static {p2, v2}, Ldagger/internal/codegen/Util;->rawTypeToString(Ljavax/lang/model/type/TypeMirror;C)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "supertype"

    sget-object v1, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;

    return-void
.end method


# virtual methods
.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .line 76
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    .line 80
    iget-object p1, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->remainingTypeNames:Ljava/util/Set;

    invoke-direct {p0, p2}, Ldagger/internal/codegen/InjectAdapterProcessor;->findInjectedClassNames(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 81
    iget-object p1, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->remainingTypeNames:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ldagger/internal/codegen/InjectAdapterProcessor;->createInjectedClass(Ljava/lang/String;)Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;

    move-result-object v0

    .line 84
    iget-object v2, v0, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->fields:Ljava/util/List;

    invoke-direct {p0, v2}, Ldagger/internal/codegen/InjectAdapterProcessor;->allTypesExist(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->constructor:Ljavax/lang/model/element/ExecutableElement;

    if-eqz v2, :cond_1

    iget-object v2, v0, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->constructor:Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Ldagger/internal/codegen/InjectAdapterProcessor;->allTypesExist(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v0, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->staticFields:Ljava/util/List;

    invoke-direct {p0, v2}, Ldagger/internal/codegen/InjectAdapterProcessor;->allTypesExist(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_0

    .line 91
    :try_start_0
    invoke-direct {p0, v0}, Ldagger/internal/codegen/InjectAdapterProcessor;->generateInjectionsForClass(Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Code gen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->type:Ljavax/lang/model/element/TypeElement;

    invoke-direct {p0, v1, v0}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    .line 95
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 98
    :cond_4
    invoke-interface {p2}, Ljavax/annotation/processing/RoundEnvironment;->processingOver()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->remainingTypeNames:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 99
    iget-object p1, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object p1

    sget-object p2, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find injection type required by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->remainingTypeNames:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    :cond_5
    return v1
.end method
