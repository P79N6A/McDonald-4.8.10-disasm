.class public Lio/github/inflationx/viewpump/InflateResult;
.super Ljava/lang/Object;
.source "InflateResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/inflationx/viewpump/InflateResult$Builder;
    }
.end annotation


# instance fields
.field private final attrs:Landroid/util/AttributeSet;

.field private final context:Landroid/content/Context;

.field private final name:Ljava/lang/String;

.field private final view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lio/github/inflationx/viewpump/InflateResult$Builder;)V
    .locals 1
    .param p1, "builder"    # Lio/github/inflationx/viewpump/InflateResult$Builder;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateResult$Builder;->access$000(Lio/github/inflationx/viewpump/InflateResult$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateResult;->view:Landroid/view/View;

    .line 17
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateResult$Builder;->access$100(Lio/github/inflationx/viewpump/InflateResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateResult;->name:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateResult$Builder;->access$200(Lio/github/inflationx/viewpump/InflateResult$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateResult;->context:Landroid/content/Context;

    .line 19
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateResult$Builder;->access$300(Lio/github/inflationx/viewpump/InflateResult$Builder;)Landroid/util/AttributeSet;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateResult;->attrs:Landroid/util/AttributeSet;

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lio/github/inflationx/viewpump/InflateResult$Builder;Lio/github/inflationx/viewpump/InflateResult$1;)V
    .locals 0
    .param p1, "x0"    # Lio/github/inflationx/viewpump/InflateResult$Builder;
    .param p2, "x1"    # Lio/github/inflationx/viewpump/InflateResult$1;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lio/github/inflationx/viewpump/InflateResult;-><init>(Lio/github/inflationx/viewpump/InflateResult$Builder;)V

    return-void
.end method

.method static synthetic access$600(Lio/github/inflationx/viewpump/InflateResult;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/viewpump/InflateResult;

    .prologue
    .line 9
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateResult;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lio/github/inflationx/viewpump/InflateResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/viewpump/InflateResult;

    .prologue
    .line 9
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateResult;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lio/github/inflationx/viewpump/InflateResult;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/viewpump/InflateResult;

    .prologue
    .line 9
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateResult;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lio/github/inflationx/viewpump/InflateResult;)Landroid/util/AttributeSet;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/viewpump/InflateResult;

    .prologue
    .line 9
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateResult;->attrs:Landroid/util/AttributeSet;

    return-object v0
.end method

.method public static builder()Lio/github/inflationx/viewpump/InflateResult$Builder;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lio/github/inflationx/viewpump/InflateResult$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/inflationx/viewpump/InflateResult$Builder;-><init>(Lio/github/inflationx/viewpump/InflateResult$1;)V

    return-object v0
.end method


# virtual methods
.method public attrs()Landroid/util/AttributeSet;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateResult;->attrs:Landroid/util/AttributeSet;

    return-object v0
.end method

.method public context()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateResult;->context:Landroid/content/Context;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateResult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toBuilder()Lio/github/inflationx/viewpump/InflateResult$Builder;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lio/github/inflationx/viewpump/InflateResult$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/github/inflationx/viewpump/InflateResult$Builder;-><init>(Lio/github/inflationx/viewpump/InflateResult;Lio/github/inflationx/viewpump/InflateResult$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InflateResult{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/github/inflationx/viewpump/InflateResult;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/github/inflationx/viewpump/InflateResult;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/github/inflationx/viewpump/InflateResult;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/github/inflationx/viewpump/InflateResult;->attrs:Landroid/util/AttributeSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public view()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateResult;->view:Landroid/view/View;

    return-object v0
.end method
