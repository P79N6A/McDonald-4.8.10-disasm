.class public Lcom/mcdonalds/app/analytics/datalayer/view/CustomViewInterceptor;
.super Ljava/lang/Object;
.source "CustomViewInterceptor.java"

# interfaces
.implements Lio/github/inflationx/viewpump/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private inflateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const-string v0, "inflateView"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    const-string v0, "Button"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerButton;

    invoke-direct {v0, p2, p3}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const-string v0, "TextView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerTextView;

    invoke-direct {v0, p2, p3}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 42
    :cond_1
    const-string v0, "ListView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    new-instance v0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerListView;

    invoke-direct {v0, p2, p3}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 44
    :cond_2
    const-string v0, "FrameLayout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    new-instance v0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerFrameLayout;

    invoke-direct {v0, p2, p3}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 46
    :cond_3
    const-string v0, "LinearLayout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    new-instance v0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerLinearLayout;

    invoke-direct {v0, p2, p3}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 48
    :cond_4
    const-string v0, "RelativeLayout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 49
    new-instance v0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerRelativeLayout;

    invoke-direct {v0, p2, p3}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 50
    :cond_5
    const-string v0, "android.support.design.widget.TabLayout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51
    new-instance v0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerTabLayout;

    invoke-direct {v0, p2, p3}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 52
    :cond_6
    const-string v0, "ImageButton"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 53
    new-instance v0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerImageButton;

    invoke-direct {v0, p2, p3}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 56
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public intercept(Lio/github/inflationx/viewpump/Interceptor$Chain;)Lio/github/inflationx/viewpump/InflateResult;
    .locals 5
    .param p1, "chain"    # Lio/github/inflationx/viewpump/Interceptor$Chain;

    .prologue
    const-string v2, "intercept"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-interface {p1}, Lio/github/inflationx/viewpump/Interceptor$Chain;->request()Lio/github/inflationx/viewpump/InflateRequest;

    move-result-object v0

    .line 22
    .local v0, "request":Lio/github/inflationx/viewpump/InflateRequest;
    invoke-virtual {v0}, Lio/github/inflationx/viewpump/InflateRequest;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/github/inflationx/viewpump/InflateRequest;->context()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lio/github/inflationx/viewpump/InflateRequest;->attrs()Landroid/util/AttributeSet;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/mcdonalds/app/analytics/datalayer/view/CustomViewInterceptor;->inflateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 24
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 25
    invoke-static {}, Lio/github/inflationx/viewpump/InflateResult;->builder()Lio/github/inflationx/viewpump/InflateResult$Builder;

    move-result-object v2

    .line 26
    invoke-virtual {v2, v1}, Lio/github/inflationx/viewpump/InflateResult$Builder;->view(Landroid/view/View;)Lio/github/inflationx/viewpump/InflateResult$Builder;

    move-result-object v2

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/github/inflationx/viewpump/InflateResult$Builder;->name(Ljava/lang/String;)Lio/github/inflationx/viewpump/InflateResult$Builder;

    move-result-object v2

    .line 28
    invoke-virtual {v0}, Lio/github/inflationx/viewpump/InflateRequest;->context()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/github/inflationx/viewpump/InflateResult$Builder;->context(Landroid/content/Context;)Lio/github/inflationx/viewpump/InflateResult$Builder;

    move-result-object v2

    .line 29
    invoke-virtual {v0}, Lio/github/inflationx/viewpump/InflateRequest;->attrs()Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/github/inflationx/viewpump/InflateResult$Builder;->attrs(Landroid/util/AttributeSet;)Lio/github/inflationx/viewpump/InflateResult$Builder;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lio/github/inflationx/viewpump/InflateResult$Builder;->build()Lio/github/inflationx/viewpump/InflateResult;

    move-result-object v2

    .line 32
    :goto_0
    return-object v2

    :cond_0
    invoke-interface {p1, v0}, Lio/github/inflationx/viewpump/Interceptor$Chain;->proceed(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;

    move-result-object v2

    goto :goto_0
.end method
