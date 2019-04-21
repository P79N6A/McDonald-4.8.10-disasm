.class public final Lio/github/inflationx/viewpump/ViewPumpContextWrapper;
.super Landroid/content/ContextWrapper;
.source "ViewPumpContextWrapper.java"


# instance fields
.field private mInflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method static get(Landroid/app/Activity;)Lio/github/inflationx/viewpump/ViewPumpActivityFactory;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    instance-of v0, v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This activity does not wrap the Base Context! See ViewPumpContextWrapper.wrap(Context)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    check-cast v0, Lio/github/inflationx/viewpump/ViewPumpActivityFactory;

    return-object v0
.end method

.method public static onActivityCreateView(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "attr"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    invoke-static {p0}, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;->get(Landroid/app/Activity;)Lio/github/inflationx/viewpump/ViewPumpActivityFactory;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/github/inflationx/viewpump/ViewPumpActivityFactory;->onActivityCreateView(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;
    .locals 1
    .param p0, "base"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    new-instance v0, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;

    invoke-direct {v0, p0}, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;->mInflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    invoke-virtual {p0}, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Z)V

    iput-object v0, p0, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;->mInflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    .line 90
    :cond_0
    iget-object v0, p0, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;->mInflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    .line 92
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
