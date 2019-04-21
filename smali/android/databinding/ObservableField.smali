.class public Landroid/databinding/ObservableField;
.super Landroid/databinding/BaseObservable;
.source "ObservableField.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/databinding/BaseObservable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    .local p0, "this":Landroid/databinding/ObservableField;, "Landroid/databinding/ObservableField<TT;>;"
    invoke-direct {p0}, Landroid/databinding/BaseObservable;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Landroid/databinding/ObservableField;, "Landroid/databinding/ObservableField<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/databinding/BaseObservable;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/databinding/ObservableField;->mValue:Ljava/lang/Object;

    .line 45
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Landroid/databinding/ObservableField;, "Landroid/databinding/ObservableField<TT;>;"
    iget-object v0, p0, Landroid/databinding/ObservableField;->mValue:Ljava/lang/Object;

    return-object v0
.end method
