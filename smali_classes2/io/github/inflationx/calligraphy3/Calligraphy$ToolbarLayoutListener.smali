.class Lio/github/inflationx/calligraphy3/Calligraphy$ToolbarLayoutListener;
.super Ljava/lang/Object;
.source "Calligraphy.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/inflationx/calligraphy3/Calligraphy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToolbarLayoutListener"
.end annotation


# static fields
.field static BLANK:Ljava/lang/String;


# instance fields
.field private final mCalligraphyFactory:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/github/inflationx/calligraphy3/Calligraphy;",
            ">;"
        }
    .end annotation
.end field

.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mToolbarReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/widget/Toolbar;",
            ">;"
        }
    .end annotation
.end field

.field private final originalSubTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 219
    const-string v0, " "

    sput-object v0, Lio/github/inflationx/calligraphy3/Calligraphy$ToolbarLayoutListener;->BLANK:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lio/github/inflationx/calligraphy3/Calligraphy;Landroid/content/Context;Landroid/support/v7/widget/Toolbar;)V
    .locals 1
    .param p1, "calligraphy"    # Lio/github/inflationx/calligraphy3/Calligraphy;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "toolbar"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/github/inflationx/calligraphy3/Calligraphy$ToolbarLayoutListener;->mCalligraphyFactory:Ljava/lang/ref/WeakReference;

    .line 229
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/github/inflationx/calligraphy3/Calligraphy$ToolbarLayoutListener;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 230
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/github/inflationx/calligraphy3/Calligraphy$ToolbarLayoutListener;->mToolbarReference:Ljava/lang/ref/WeakReference;

    .line 231
    invoke-virtual {p3}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/calligraphy3/Calligraphy$ToolbarLayoutListener;->originalSubTitle:Ljava/lang/CharSequence;

    .line 232
    sget-object v0, Lio/github/inflationx/calligraphy3/Calligraphy$ToolbarLayoutListener;->BLANK:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method

.method synthetic constructor <init>(Lio/github/inflationx/calligraphy3/Calligraphy;Landroid/content/Context;Landroid/support/v7/widget/Toolbar;Lio/github/inflationx/calligraphy3/Calligraphy$1;)V
    .locals 0
    .param p1, "x0"    # Lio/github/inflationx/calligraphy3/Calligraphy;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Landroid/support/v7/widget/Toolbar;
    .param p4, "x3"    # Lio/github/inflationx/calligraphy3/Calligraphy$1;

    .prologue
    .line 217
    invoke-direct {p0, p1, p2, p3}, Lio/github/inflationx/calligraphy3/Calligraphy$ToolbarLayoutListener;-><init>(Lio/github/inflationx/calligraphy3/Calligraphy;Landroid/content/Context;Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method

.method private removeSelf(Landroid/support/v7/widget/Toolbar;)V
    .locals 2
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 237
    iget-object v5, p0, Lio/github/inflationx/calligraphy3/Calligraphy$ToolbarLayoutListener;->mToolbarReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/Toolbar;

    .line 238
    .local v4, "toolbar":Landroid/support/v7/widget/Toolbar;
    iget-object v5, p0, Lio/github/inflationx/calligraphy3/Calligraphy$ToolbarLayoutListener;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 239
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p0, Lio/github/inflationx/calligraphy3/Calligraphy$ToolbarLayoutListener;->mCalligraphyFactory:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/inflationx/calligraphy3/Calligraphy;

    .line 240
    .local v2, "factory":Lio/github/inflationx/calligraphy3/Calligraphy;
    if-nez v4, :cond_0

    .line 255
    :goto_0
    return-void

    .line 241
    :cond_0
    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 242
    :cond_1
    invoke-direct {p0, v4}, Lio/github/inflationx/calligraphy3/Calligraphy$ToolbarLayoutListener;->removeSelf(Landroid/support/v7/widget/Toolbar;)V

    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 247
    .local v0, "childCount":I
    if-eqz v0, :cond_3

    .line 249
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 250
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v1, v6}, Lio/github/inflationx/calligraphy3/Calligraphy;->onViewCreated(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 253
    .end local v3    # "i":I
    :cond_3
    invoke-direct {p0, v4}, Lio/github/inflationx/calligraphy3/Calligraphy$ToolbarLayoutListener;->removeSelf(Landroid/support/v7/widget/Toolbar;)V

    .line 254
    iget-object v5, p0, Lio/github/inflationx/calligraphy3/Calligraphy$ToolbarLayoutListener;->originalSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
