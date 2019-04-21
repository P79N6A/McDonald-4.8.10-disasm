.class Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$NameAndAttrsViewCreator;
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
    name = "NameAndAttrsViewCreator"
.end annotation


# instance fields
.field private final inflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;


# direct methods
.method public constructor <init>(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;)V
    .locals 0
    .param p1, "inflater"    # Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$NameAndAttrsViewCreator;->inflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    .line 267
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 273
    const/4 v1, 0x0

    .line 274
    .local v1, "view":Landroid/view/View;
    invoke-static {}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->access$200()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 276
    .local v0, "prefix":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$NameAndAttrsViewCreator;->inflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    invoke-virtual {v5, p2, v0, p4}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 277
    if-eqz v1, :cond_2

    .line 285
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$NameAndAttrsViewCreator;->inflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    invoke-static {v2, p2, p4}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->access$300(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 286
    :cond_1
    return-object v1

    .line 280
    .restart local v0    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 274
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
