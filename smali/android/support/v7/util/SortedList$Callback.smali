.class public abstract Landroid/support/v7/util/SortedList$Callback;
.super Ljava/lang/Object;
.source "SortedList.java"

# interfaces
.implements Landroid/support/v7/util/ListUpdateCallback;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/SortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v7/util/ListUpdateCallback;",
        "Ljava/util/Comparator",
        "<TT2;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 684
    .local p0, "this":Landroid/support/v7/util/SortedList$Callback;, "Landroid/support/v7/util/SortedList$Callback<TT2;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)I"
        }
    .end annotation
.end method
