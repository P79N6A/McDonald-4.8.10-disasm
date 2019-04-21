.class public Lio/github/inflationx/calligraphy3/CalligraphyInterceptor;
.super Ljava/lang/Object;
.source "CalligraphyInterceptor.java"

# interfaces
.implements Lio/github/inflationx/viewpump/Interceptor;


# instance fields
.field private final calligraphy:Lio/github/inflationx/calligraphy3/Calligraphy;


# direct methods
.method public constructor <init>(Lio/github/inflationx/calligraphy3/CalligraphyConfig;)V
    .locals 1
    .param p1, "calligraphyConfig"    # Lio/github/inflationx/calligraphy3/CalligraphyConfig;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lio/github/inflationx/calligraphy3/Calligraphy;

    invoke-direct {v0, p1}, Lio/github/inflationx/calligraphy3/Calligraphy;-><init>(Lio/github/inflationx/calligraphy3/CalligraphyConfig;)V

    iput-object v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyInterceptor;->calligraphy:Lio/github/inflationx/calligraphy3/Calligraphy;

    .line 14
    return-void
.end method


# virtual methods
.method public intercept(Lio/github/inflationx/viewpump/Interceptor$Chain;)Lio/github/inflationx/viewpump/InflateResult;
    .locals 6
    .param p1, "chain"    # Lio/github/inflationx/viewpump/Interceptor$Chain;

    .prologue
    .line 18
    invoke-interface {p1}, Lio/github/inflationx/viewpump/Interceptor$Chain;->request()Lio/github/inflationx/viewpump/InflateRequest;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/github/inflationx/viewpump/Interceptor$Chain;->proceed(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;

    move-result-object v0

    .line 19
    .local v0, "result":Lio/github/inflationx/viewpump/InflateResult;
    iget-object v2, p0, Lio/github/inflationx/calligraphy3/CalligraphyInterceptor;->calligraphy:Lio/github/inflationx/calligraphy3/Calligraphy;

    invoke-virtual {v0}, Lio/github/inflationx/viewpump/InflateResult;->view()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0}, Lio/github/inflationx/viewpump/InflateResult;->context()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lio/github/inflationx/viewpump/InflateResult;->attrs()Landroid/util/AttributeSet;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lio/github/inflationx/calligraphy3/Calligraphy;->onViewCreated(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 20
    .local v1, "viewWithTypeface":Landroid/view/View;
    invoke-virtual {v0}, Lio/github/inflationx/viewpump/InflateResult;->toBuilder()Lio/github/inflationx/viewpump/InflateResult$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/github/inflationx/viewpump/InflateResult$Builder;->view(Landroid/view/View;)Lio/github/inflationx/viewpump/InflateResult$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lio/github/inflationx/viewpump/InflateResult$Builder;->build()Lio/github/inflationx/viewpump/InflateResult;

    move-result-object v2

    return-object v2
.end method
