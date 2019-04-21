.class Lio/github/inflationx/viewpump/FallbackViewCreationInterceptor;
.super Ljava/lang/Object;
.source "FallbackViewCreationInterceptor.java"

# interfaces
.implements Lio/github/inflationx/viewpump/Interceptor;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lio/github/inflationx/viewpump/Interceptor$Chain;)Lio/github/inflationx/viewpump/InflateResult;
    .locals 7
    .param p1, "chain"    # Lio/github/inflationx/viewpump/Interceptor$Chain;

    .prologue
    .line 9
    invoke-interface {p1}, Lio/github/inflationx/viewpump/Interceptor$Chain;->request()Lio/github/inflationx/viewpump/InflateRequest;

    move-result-object v1

    .line 10
    .local v1, "request":Lio/github/inflationx/viewpump/InflateRequest;
    invoke-virtual {v1}, Lio/github/inflationx/viewpump/InflateRequest;->fallbackViewCreator()Lio/github/inflationx/viewpump/FallbackViewCreator;

    move-result-object v2

    .line 11
    .local v2, "viewCreator":Lio/github/inflationx/viewpump/FallbackViewCreator;
    invoke-virtual {v1}, Lio/github/inflationx/viewpump/InflateRequest;->parent()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1}, Lio/github/inflationx/viewpump/InflateRequest;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lio/github/inflationx/viewpump/InflateRequest;->context()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Lio/github/inflationx/viewpump/InflateRequest;->attrs()Landroid/util/AttributeSet;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lio/github/inflationx/viewpump/FallbackViewCreator;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 13
    .local v0, "fallbackView":Landroid/view/View;
    invoke-static {}, Lio/github/inflationx/viewpump/InflateResult;->builder()Lio/github/inflationx/viewpump/InflateResult$Builder;

    move-result-object v3

    .line 14
    invoke-virtual {v3, v0}, Lio/github/inflationx/viewpump/InflateResult$Builder;->view(Landroid/view/View;)Lio/github/inflationx/viewpump/InflateResult$Builder;

    move-result-object v4

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Lio/github/inflationx/viewpump/InflateResult$Builder;->name(Ljava/lang/String;)Lio/github/inflationx/viewpump/InflateResult$Builder;

    move-result-object v3

    .line 16
    invoke-virtual {v1}, Lio/github/inflationx/viewpump/InflateRequest;->context()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/github/inflationx/viewpump/InflateResult$Builder;->context(Landroid/content/Context;)Lio/github/inflationx/viewpump/InflateResult$Builder;

    move-result-object v3

    .line 17
    invoke-virtual {v1}, Lio/github/inflationx/viewpump/InflateRequest;->attrs()Landroid/util/AttributeSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/github/inflationx/viewpump/InflateResult$Builder;->attrs(Landroid/util/AttributeSet;)Lio/github/inflationx/viewpump/InflateResult$Builder;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lio/github/inflationx/viewpump/InflateResult$Builder;->build()Lio/github/inflationx/viewpump/InflateResult;

    move-result-object v3

    .line 13
    return-object v3

    .line 15
    :cond_0
    invoke-virtual {v1}, Lio/github/inflationx/viewpump/InflateRequest;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
