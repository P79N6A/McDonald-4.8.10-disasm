.class Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;
.super Landroid/view/LayoutInflater;
.source "ViewPumpLayoutInflater.java"

# interfaces
.implements Lio/github/inflationx/viewpump/ViewPumpActivityFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$PrivateWrapperFactory2ViewCreator;,
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$PrivateWrapperFactory2;,
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory2ViewCreator;,
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory2;,
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactoryViewCreator;,
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory;,
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$NameAndAttrsViewCreator;,
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ParentAndNameAndAttrsViewCreator;,
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ActivityViewCreator;
    }
.end annotation


# static fields
.field private static final sClassPrefixList:[Ljava/lang/String;


# instance fields
.field private mConstructorArgs:Ljava/lang/reflect/Field;

.field private mSetPrivateFactory:Z

.field private nameAndAttrsViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

.field private parentAndNameAndAttrsViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.widget."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.webkit."

    aput-object v2, v0, v1

    sput-object v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    .line 25
    iput-boolean v1, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mSetPrivateFactory:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    .line 30
    new-instance v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$NameAndAttrsViewCreator;

    invoke-direct {v0, p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$NameAndAttrsViewCreator;-><init>(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;)V

    iput-object v0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->nameAndAttrsViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    .line 31
    new-instance v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ParentAndNameAndAttrsViewCreator;

    invoke-direct {v0, p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ParentAndNameAndAttrsViewCreator;-><init>(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;)V

    iput-object v0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->parentAndNameAndAttrsViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    .line 32
    invoke-direct {p0, v1}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->setUpLayoutFactories(Z)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Z)V
    .locals 1
    .param p1, "original"    # Landroid/view/LayoutInflater;
    .param p2, "newContext"    # Landroid/content/Context;
    .param p3, "cloned"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mSetPrivateFactory:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    .line 37
    new-instance v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$NameAndAttrsViewCreator;

    invoke-direct {v0, p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$NameAndAttrsViewCreator;-><init>(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;)V

    iput-object v0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->nameAndAttrsViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    .line 38
    new-instance v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ParentAndNameAndAttrsViewCreator;

    invoke-direct {v0, p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ParentAndNameAndAttrsViewCreator;-><init>(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;)V

    iput-object v0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->parentAndNameAndAttrsViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    .line 39
    invoke-direct {p0, p3}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->setUpLayoutFactories(Z)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/content/Context;
    .param p5, "x5"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct/range {p0 .. p5}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->createCustomViewInternal(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->superOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->superOnCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private createCustomViewInternal(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "viewContext"    # Landroid/content/Context;
    .param p5, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 191
    invoke-static {}, Lio/github/inflationx/viewpump/ViewPump;->get()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object v3

    invoke-virtual {v3}, Lio/github/inflationx/viewpump/ViewPump;->isCustomViewCreation()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, p2

    .line 211
    .end local p2    # "view":Landroid/view/View;
    .local v2, "view":Landroid/view/View;
    :goto_0
    return-object v2

    .line 192
    .end local v2    # "view":Landroid/view/View;
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    if-nez p2, :cond_2

    const/16 v3, 0x2e

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    .line 193
    iget-object v3, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1

    .line 194
    const-class v3, Landroid/view/LayoutInflater;

    const-string v4, "mConstructorArgs"

    invoke-static {v3, v4}, Lio/github/inflationx/viewpump/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    .line 196
    :cond_1
    iget-object v3, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    invoke-static {v3, p0}, Lio/github/inflationx/viewpump/ReflectionUtils;->getValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    .line 197
    .local v1, "mConstructorArgsArr":[Ljava/lang/Object;
    aget-object v0, v1, v5

    .line 201
    .local v0, "lastContext":Ljava/lang/Object;
    aput-object p4, v1, v5

    .line 202
    iget-object v3, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    invoke-static {v3, p0, v1}, Lio/github/inflationx/viewpump/ReflectionUtils;->setValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p3, v3, p5}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 207
    aput-object v0, v1, v5

    .line 208
    iget-object v3, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    invoke-static {v3, p0, v1}, Lio/github/inflationx/viewpump/ReflectionUtils;->setValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v0    # "lastContext":Ljava/lang/Object;
    .end local v1    # "mConstructorArgsArr":[Ljava/lang/Object;
    :cond_2
    :goto_1
    move-object v2, p2

    .line 211
    .end local p2    # "view":Landroid/view/View;
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 205
    .end local v2    # "view":Landroid/view/View;
    .restart local v0    # "lastContext":Ljava/lang/Object;
    .restart local v1    # "mConstructorArgsArr":[Ljava/lang/Object;
    .restart local p2    # "view":Landroid/view/View;
    :catch_0
    move-exception v3

    .line 207
    aput-object v0, v1, v5

    .line 208
    iget-object v3, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    invoke-static {v3, p0, v1}, Lio/github/inflationx/viewpump/ReflectionUtils;->setValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 207
    :catchall_0
    move-exception v3

    aput-object v0, v1, v5

    .line 208
    iget-object v4, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    invoke-static {v4, p0, v1}, Lio/github/inflationx/viewpump/ReflectionUtils;->setValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3
.end method

.method private setPrivateFactoryInternal()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 98
    iget-boolean v1, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mSetPrivateFactory:Z

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-static {}, Lio/github/inflationx/viewpump/ViewPump;->get()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object v1

    invoke-virtual {v1}, Lio/github/inflationx/viewpump/ViewPump;->isReflection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/view/LayoutInflater$Factory2;

    if-nez v1, :cond_2

    .line 103
    iput-boolean v5, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mSetPrivateFactory:Z

    goto :goto_0

    .line 108
    :cond_2
    const-class v1, Landroid/view/LayoutInflater;

    const-string v2, "setPrivateFactory"

    invoke-static {v1, v2}, Lio/github/inflationx/viewpump/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 110
    .local v0, "setPrivateFactoryMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_3

    .line 111
    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$PrivateWrapperFactory2;

    .line 113
    invoke-virtual {p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v4, v1, p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$PrivateWrapperFactory2;-><init>(Landroid/view/LayoutInflater$Factory2;Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;)V

    aput-object v4, v2, v3

    .line 111
    invoke-static {p0, v0, v2}, Lio/github/inflationx/viewpump/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 115
    :cond_3
    iput-boolean v5, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mSetPrivateFactory:Z

    goto :goto_0
.end method

.method private setUpLayoutFactories(Z)V
    .locals 1
    .param p1, "cloned"    # Z

    .prologue
    .line 63
    if-eqz p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory2;

    if-nez v0, :cond_2

    .line 67
    invoke-virtual {p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 70
    :cond_2
    invoke-virtual {p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    instance-of v0, v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory;

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    goto :goto_0
.end method

.method private superOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 216
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 218
    :goto_0
    return-object v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private superOnCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 224
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 226
    :goto_0
    return-object v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "newContext"    # Landroid/content/Context;

    .prologue
    .line 44
    new-instance v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Z)V

    return-object v0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->setPrivateFactoryInternal()V

    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreateView(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    invoke-static {}, Lio/github/inflationx/viewpump/ViewPump;->get()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object v0

    invoke-static {}, Lio/github/inflationx/viewpump/InflateRequest;->builder()Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 130
    invoke-virtual {v1, p3}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name(Ljava/lang/String;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 131
    invoke-virtual {v1, p4}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context(Landroid/content/Context;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 132
    invoke-virtual {v1, p5}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->attrs(Landroid/util/AttributeSet;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 133
    invoke-virtual {v1, p1}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->parent(Landroid/view/View;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    new-instance v2, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ActivityViewCreator;

    invoke-direct {v2, p0, p2}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ActivityViewCreator;-><init>(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;Landroid/view/View;)V

    .line 134
    invoke-virtual {v1, v2}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator(Lio/github/inflationx/viewpump/FallbackViewCreator;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->build()Lio/github/inflationx/viewpump/InflateRequest;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lio/github/inflationx/viewpump/ViewPump;->inflate(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lio/github/inflationx/viewpump/InflateResult;->view()Landroid/view/View;

    move-result-object v0

    .line 129
    return-object v0
.end method

.method protected onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Lio/github/inflationx/viewpump/ViewPump;->get()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object v0

    invoke-static {}, Lio/github/inflationx/viewpump/InflateRequest;->builder()Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 145
    invoke-virtual {v1, p2}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name(Ljava/lang/String;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context(Landroid/content/Context;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 147
    invoke-virtual {v1, p3}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->attrs(Landroid/util/AttributeSet;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 148
    invoke-virtual {v1, p1}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->parent(Landroid/view/View;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->parentAndNameAndAttrsViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    .line 149
    invoke-virtual {v1, v2}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator(Lio/github/inflationx/viewpump/FallbackViewCreator;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->build()Lio/github/inflationx/viewpump/InflateRequest;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Lio/github/inflationx/viewpump/ViewPump;->inflate(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lio/github/inflationx/viewpump/InflateResult;->view()Landroid/view/View;

    move-result-object v0

    .line 144
    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Lio/github/inflationx/viewpump/ViewPump;->get()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object v0

    invoke-static {}, Lio/github/inflationx/viewpump/InflateRequest;->builder()Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 161
    invoke-virtual {v1, p1}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name(Ljava/lang/String;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 162
    invoke-virtual {p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context(Landroid/content/Context;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 163
    invoke-virtual {v1, p2}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->attrs(Landroid/util/AttributeSet;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->nameAndAttrsViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    .line 164
    invoke-virtual {v1, v2}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator(Lio/github/inflationx/viewpump/FallbackViewCreator;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->build()Lio/github/inflationx/viewpump/InflateRequest;

    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Lio/github/inflationx/viewpump/ViewPump;->inflate(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lio/github/inflationx/viewpump/InflateResult;->view()Landroid/view/View;

    move-result-object v0

    .line 160
    return-object v0
.end method

.method public setFactory(Landroid/view/LayoutInflater$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory;

    .prologue
    .line 78
    instance-of v0, p1, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory;

    invoke-direct {v0, p1}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory;-><init>(Landroid/view/LayoutInflater$Factory;)V

    invoke-super {p0, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-super {p0, p1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    goto :goto_0
.end method

.method public setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .locals 1
    .param p1, "factory2"    # Landroid/view/LayoutInflater$Factory2;

    .prologue
    .line 88
    instance-of v0, p1, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory2;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory2;

    invoke-direct {v0, p1}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory2;-><init>(Landroid/view/LayoutInflater$Factory2;)V

    invoke-super {p0, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-super {p0, p1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0
.end method
