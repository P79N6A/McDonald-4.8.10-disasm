.class Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ParentAndNameAndAttrsViewCreator;
.super Ljava/lang/Object;
.source "ViewPumpLayoutInflater.java"

# interfaces
.implements Lio/github/inflationx/viewpump/FallbackViewCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParentAndNameAndAttrsViewCreator"
.end annotation


# instance fields
.field private final inflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;


# direct methods
.method public constructor <init>(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;)V
    .locals 0
    .param p1, "inflater"    # Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ParentAndNameAndAttrsViewCreator;->inflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    .line 254
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 258
    iget-object v0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ParentAndNameAndAttrsViewCreator;->inflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    invoke-static {v0, p1, p2, p4}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->access$100(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
