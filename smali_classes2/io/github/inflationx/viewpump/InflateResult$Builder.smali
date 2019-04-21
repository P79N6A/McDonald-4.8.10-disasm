.class public final Lio/github/inflationx/viewpump/InflateResult$Builder;
.super Ljava/lang/Object;
.source "InflateResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/inflationx/viewpump/InflateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private attrs:Landroid/util/AttributeSet;

.field private context:Landroid/content/Context;

.field private name:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/github/inflationx/viewpump/InflateResult$1;)V
    .locals 0
    .param p1, "x0"    # Lio/github/inflationx/viewpump/InflateResult$1;

    .prologue
    .line 63
    invoke-direct {p0}, Lio/github/inflationx/viewpump/InflateResult$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lio/github/inflationx/viewpump/InflateResult;)V
    .locals 1
    .param p1, "result"    # Lio/github/inflationx/viewpump/InflateResult;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateResult;->access$600(Lio/github/inflationx/viewpump/InflateResult;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->view:Landroid/view/View;

    .line 73
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateResult;->access$700(Lio/github/inflationx/viewpump/InflateResult;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->name:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateResult;->access$800(Lio/github/inflationx/viewpump/InflateResult;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->context:Landroid/content/Context;

    .line 75
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateResult;->access$900(Lio/github/inflationx/viewpump/InflateResult;)Landroid/util/AttributeSet;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->attrs:Landroid/util/AttributeSet;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lio/github/inflationx/viewpump/InflateResult;Lio/github/inflationx/viewpump/InflateResult$1;)V
    .locals 0
    .param p1, "x0"    # Lio/github/inflationx/viewpump/InflateResult;
    .param p2, "x1"    # Lio/github/inflationx/viewpump/InflateResult$1;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lio/github/inflationx/viewpump/InflateResult$Builder;-><init>(Lio/github/inflationx/viewpump/InflateResult;)V

    return-void
.end method

.method static synthetic access$000(Lio/github/inflationx/viewpump/InflateResult$Builder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/viewpump/InflateResult$Builder;

    .prologue
    .line 63
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lio/github/inflationx/viewpump/InflateResult$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/viewpump/InflateResult$Builder;

    .prologue
    .line 63
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lio/github/inflationx/viewpump/InflateResult$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/viewpump/InflateResult$Builder;

    .prologue
    .line 63
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lio/github/inflationx/viewpump/InflateResult$Builder;)Landroid/util/AttributeSet;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/viewpump/InflateResult$Builder;

    .prologue
    .line 63
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->attrs:Landroid/util/AttributeSet;

    return-object v0
.end method


# virtual methods
.method public attrs(Landroid/util/AttributeSet;)Lio/github/inflationx/viewpump/InflateResult$Builder;
    .locals 0
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->attrs:Landroid/util/AttributeSet;

    .line 95
    return-object p0
.end method

.method public build()Lio/github/inflationx/viewpump/InflateResult;
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->name:Ljava/lang/String;

    iget-object v1, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->view:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must be the view\'s fully qualified name ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->view:Landroid/view/View;

    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_2
    new-instance v0, Lio/github/inflationx/viewpump/InflateResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/github/inflationx/viewpump/InflateResult;-><init>(Lio/github/inflationx/viewpump/InflateResult$Builder;Lio/github/inflationx/viewpump/InflateResult$1;)V

    return-object v0
.end method

.method public context(Landroid/content/Context;)Lio/github/inflationx/viewpump/InflateResult$Builder;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->context:Landroid/content/Context;

    .line 90
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lio/github/inflationx/viewpump/InflateResult$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->name:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public view(Landroid/view/View;)Lio/github/inflationx/viewpump/InflateResult$Builder;
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 79
    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->view:Landroid/view/View;

    .line 80
    return-object p0
.end method
