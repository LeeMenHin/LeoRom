.class Lorg/simpleframework/xml/core/SignatureScanner;
.super Ljava/lang/Object;
.source "SignatureScanner.java"


# instance fields
.field private final builder:Lorg/simpleframework/xml/core/SignatureBuilder;

.field private final constructor:Ljava/lang/reflect/Constructor;

.field private final factory:Lorg/simpleframework/xml/core/ParameterFactory;

.field private final registry:Lorg/simpleframework/xml/core/ParameterMap;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/core/ParameterMap;Lorg/simpleframework/xml/core/Support;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/SignatureBuilder;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder;-><init>(Ljava/lang/reflect/Constructor;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->builder:Lorg/simpleframework/xml/core/SignatureBuilder;

    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/ParameterFactory;-><init>(Lorg/simpleframework/xml/core/Support;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->factory:Lorg/simpleframework/xml/core/ParameterFactory;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->type:Ljava/lang/Class;

    iput-object p1, p0, Lorg/simpleframework/xml/core/SignatureScanner;->constructor:Ljava/lang/reflect/Constructor;

    iput-object p2, p0, Lorg/simpleframework/xml/core/SignatureScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->type:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/SignatureScanner;->scan(Ljava/lang/Class;)V

    return-void
.end method

.method private create(Ljava/lang/annotation/Annotation;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            "I)",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Parameter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->factory:Lorg/simpleframework/xml/core/ParameterFactory;

    iget-object v1, p0, Lorg/simpleframework/xml/core/SignatureScanner;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1, p1, p2}, Lorg/simpleframework/xml/core/ParameterFactory;->getInstance(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/SignatureScanner;->register(Lorg/simpleframework/xml/core/Parameter;)V

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private extract(Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    aget-object v2, v1, v4

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, [Ljava/lang/annotation/Annotation;

    return-object v4

    :cond_0
    new-instance v2, Lorg/simpleframework/xml/core/UnionException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    iget-object v4, p0, Lorg/simpleframework/xml/core/SignatureScanner;->type:Ljava/lang/Class;

    aput-object v4, v5, v3

    const-string v3, "Annotation \'%s\' is not a valid union for %s"

    invoke-direct {v2, v3, v5}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method private process(Ljava/lang/annotation/Annotation;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            "I)",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Parameter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p1, Lorg/simpleframework/xml/Attribute;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/SignatureScanner;->create(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p1, Lorg/simpleframework/xml/Element;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/SignatureScanner;->create(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v0, p1, Lorg/simpleframework/xml/ElementList;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/SignatureScanner;->create(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    instance-of v0, p1, Lorg/simpleframework/xml/ElementArray;

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/SignatureScanner;->create(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_3
    instance-of v0, p1, Lorg/simpleframework/xml/ElementMap;

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/SignatureScanner;->create(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    instance-of v0, p1, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/SignatureScanner;->union(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_5
    instance-of v0, p1, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/SignatureScanner;->union(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_6
    instance-of v0, p1, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/SignatureScanner;->union(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_7
    instance-of v0, p1, Lorg/simpleframework/xml/Text;

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/SignatureScanner;->create(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private register(Lorg/simpleframework/xml/core/Parameter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v2, v1}, Lorg/simpleframework/xml/core/ParameterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/SignatureScanner;->validate(Lorg/simpleframework/xml/core/Parameter;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v2, v0}, Lorg/simpleframework/xml/core/ParameterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/SignatureScanner;->validate(Lorg/simpleframework/xml/core/Parameter;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v2, v0, p1}, Lorg/simpleframework/xml/core/ParameterMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v2, v1, p1}, Lorg/simpleframework/xml/core/ParameterMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private scan(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-direct {p0, v2, v1}, Lorg/simpleframework/xml/core/SignatureScanner;->scan(Ljava/lang/Class;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private scan(Ljava/lang/Class;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    aget-object v2, v0, p2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, p2

    aget-object v2, v2, v1

    invoke-direct {p0, v2, p2}, Lorg/simpleframework/xml/core/SignatureScanner;->process(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/simpleframework/xml/core/Parameter;

    iget-object v5, p0, Lorg/simpleframework/xml/core/SignatureScanner;->builder:Lorg/simpleframework/xml/core/SignatureBuilder;

    invoke-virtual {v5, v4, p2}, Lorg/simpleframework/xml/core/SignatureBuilder;->insert(Lorg/simpleframework/xml/core/Parameter;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private union(Ljava/lang/annotation/Annotation;I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            "I)",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Parameter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/simpleframework/xml/core/Signature;

    iget-object v1, p0, Lorg/simpleframework/xml/core/SignatureScanner;->constructor:Ljava/lang/reflect/Constructor;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/SignatureScanner;->extract(Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v2, v1

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    iget-object v7, p0, Lorg/simpleframework/xml/core/SignatureScanner;->factory:Lorg/simpleframework/xml/core/ParameterFactory;

    iget-object v8, p0, Lorg/simpleframework/xml/core/SignatureScanner;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v7, v8, p1, v6, p2}, Lorg/simpleframework/xml/core/ParameterFactory;->getInstance(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v7

    invoke-interface {v7}, Lorg/simpleframework/xml/core/Parameter;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/simpleframework/xml/core/Signature;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v0, v8, v7}, Lorg/simpleframework/xml/core/Signature;->set(Ljava/lang/Object;Lorg/simpleframework/xml/core/Parameter;)V

    invoke-direct {p0, v7}, Lorg/simpleframework/xml/core/SignatureScanner;->register(Lorg/simpleframework/xml/core/Parameter;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v9, Lorg/simpleframework/xml/core/UnionException;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v4

    const/4 v4, 0x1

    aput-object p1, v10, v4

    const/4 v4, 0x2

    iget-object v11, p0, Lorg/simpleframework/xml/core/SignatureScanner;->type:Ljava/lang/Class;

    aput-object v11, v10, v4

    const-string v4, "Annotation name \'%s\' used more than once in %s for %s"

    invoke-direct {v9, v4, v10}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v9

    :cond_1
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Signature;->getAll()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private validate(Lorg/simpleframework/xml/core/Parameter;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/ParameterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->isText()Z

    move-result v1

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Parameter;->isText()Z

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Parameter;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Parameter;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->getType()Ljava/lang/Class;

    move-result-object v8

    if-ne v4, v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v8, Lorg/simpleframework/xml/core/ConstructorException;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v6

    iget-object v6, p0, Lorg/simpleframework/xml/core/SignatureScanner;->type:Ljava/lang/Class;

    aput-object v6, v7, v5

    const-string v5, "Parameter types do not match for \'%s\' in %s"

    invoke-direct {v8, v5, v7}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v8

    :cond_1
    new-instance v4, Lorg/simpleframework/xml/core/ConstructorException;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v6

    iget-object v6, p0, Lorg/simpleframework/xml/core/SignatureScanner;->type:Ljava/lang/Class;

    aput-object v6, v7, v5

    const-string v5, "Annotations do not match for \'%s\' in %s"

    invoke-direct {v4, v5, v7}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getSignatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->builder:Lorg/simpleframework/xml/core/SignatureBuilder;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SignatureBuilder;->build()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->builder:Lorg/simpleframework/xml/core/SignatureBuilder;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SignatureBuilder;->isValid()Z

    move-result v0

    return v0
.end method
