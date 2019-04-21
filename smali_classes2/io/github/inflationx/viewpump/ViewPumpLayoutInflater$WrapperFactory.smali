.class Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory;
.super Ljava/lang/Object;
.source "ViewPumpLayoutInflater.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrapperFactory"
.end annotation


# instance fields
.field private final mViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory;

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactoryViewCreator;

    invoke-direct {v0, p1}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactoryViewCreator;-><init>(Landroid/view/LayoutInflater$Factory;)V

    iput-object v0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory;->mViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    .line 303
    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 307
    invoke-static {}, Lio/github/inflationx/viewpump/ViewPump;->get()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object v0

    invoke-static {}, Lio/github/inflationx/viewpump/InflateRequest;->builder()Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 308
    invoke-virtual {v1, p1}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name(Ljava/lang/String;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 309
    invoke-virtual {v1, p2}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context(Landroid/content/Context;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 310
    invoke-virtual {v1, p3}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->attrs(Landroid/util/AttributeSet;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory;->mViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    .line 311
    invoke-virtual {v1, v2}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator(Lio/github/inflationx/viewpump/FallbackViewCreator;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->build()Lio/github/inflationx/viewpump/InflateRequest;

    move-result-object v1

    .line 307
    invoke-virtual {v0, v1}, Lio/github/inflationx/viewpump/ViewPump;->inflate(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lio/github/inflationx/viewpump/InflateResult;->view()Landroid/view/View;

    move-result-object v0

    .line 307
    return-object v0
.end method
