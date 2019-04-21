.class public Landroid/databinding/ViewStubProxy;
.super Ljava/lang/Object;
.source "ViewStubProxy.java"


# instance fields
.field private mContainingBinding:Landroid/databinding/ViewDataBinding;

.field private mOnInflateListener:Landroid/view/ViewStub$OnInflateListener;

.field private mRoot:Landroid/view/View;

.field private mViewDataBinding:Landroid/databinding/ViewDataBinding;

.field private mViewStub:Landroid/view/ViewStub;


# direct methods
.method static synthetic access$002(Landroid/databinding/ViewStubProxy;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Landroid/databinding/ViewStubProxy;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 28
    iput-object p1, p0, Landroid/databinding/ViewStubProxy;->mRoot:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$102(Landroid/databinding/ViewStubProxy;Landroid/databinding/ViewDataBinding;)Landroid/databinding/ViewDataBinding;
    .locals 0
    .param p0, "x0"    # Landroid/databinding/ViewStubProxy;
    .param p1, "x1"    # Landroid/databinding/ViewDataBinding;

    .prologue
    .line 28
    iput-object p1, p0, Landroid/databinding/ViewStubProxy;->mViewDataBinding:Landroid/databinding/ViewDataBinding;

    return-object p1
.end method

.method static synthetic access$200(Landroid/databinding/ViewStubProxy;)Landroid/databinding/ViewDataBinding;
    .locals 1
    .param p0, "x0"    # Landroid/databinding/ViewStubProxy;

    .prologue
    .line 28
    iget-object v0, p0, Landroid/databinding/ViewStubProxy;->mContainingBinding:Landroid/databinding/ViewDataBinding;

    return-object v0
.end method

.method static synthetic access$302(Landroid/databinding/ViewStubProxy;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0
    .param p0, "x0"    # Landroid/databinding/ViewStubProxy;
    .param p1, "x1"    # Landroid/view/ViewStub;

    .prologue
    .line 28
    iput-object p1, p0, Landroid/databinding/ViewStubProxy;->mViewStub:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic access$400(Landroid/databinding/ViewStubProxy;)Landroid/view/ViewStub$OnInflateListener;
    .locals 1
    .param p0, "x0"    # Landroid/databinding/ViewStubProxy;

    .prologue
    .line 28
    iget-object v0, p0, Landroid/databinding/ViewStubProxy;->mOnInflateListener:Landroid/view/ViewStub$OnInflateListener;

    return-object v0
.end method

.method static synthetic access$402(Landroid/databinding/ViewStubProxy;Landroid/view/ViewStub$OnInflateListener;)Landroid/view/ViewStub$OnInflateListener;
    .locals 0
    .param p0, "x0"    # Landroid/databinding/ViewStubProxy;
    .param p1, "x1"    # Landroid/view/ViewStub$OnInflateListener;

    .prologue
    .line 28
    iput-object p1, p0, Landroid/databinding/ViewStubProxy;->mOnInflateListener:Landroid/view/ViewStub$OnInflateListener;

    return-object p1
.end method
