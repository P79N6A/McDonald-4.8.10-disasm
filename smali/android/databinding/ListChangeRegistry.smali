.class public Landroid/databinding/ListChangeRegistry;
.super Landroid/databinding/CallbackRegistry;
.source "ListChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/ListChangeRegistry$ListChanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/databinding/CallbackRegistry",
        "<",
        "Landroid/databinding/ObservableList$OnListChangedCallback;",
        "Landroid/databinding/ObservableList;",
        "Landroid/databinding/ListChangeRegistry$ListChanges;",
        ">;"
    }
.end annotation


# static fields
.field private static final NOTIFIER_CALLBACK:Landroid/databinding/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/CallbackRegistry$NotifierCallback",
            "<",
            "Landroid/databinding/ObservableList$OnListChangedCallback;",
            "Landroid/databinding/ObservableList;",
            "Landroid/databinding/ListChangeRegistry$ListChanges;",
            ">;"
        }
    .end annotation
.end field

.field private static final sListChanges:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool",
            "<",
            "Landroid/databinding/ListChangeRegistry$ListChanges;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/databinding/ListChangeRegistry;->sListChanges:Landroid/support/v4/util/Pools$SynchronizedPool;

    .line 37
    new-instance v0, Landroid/databinding/ListChangeRegistry$1;

    invoke-direct {v0}, Landroid/databinding/ListChangeRegistry$1;-><init>()V

    sput-object v0, Landroid/databinding/ListChangeRegistry;->NOTIFIER_CALLBACK:Landroid/databinding/CallbackRegistry$NotifierCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    sget-object v0, Landroid/databinding/ListChangeRegistry;->NOTIFIER_CALLBACK:Landroid/databinding/CallbackRegistry$NotifierCallback;

    invoke-direct {p0, v0}, Landroid/databinding/CallbackRegistry;-><init>(Landroid/databinding/CallbackRegistry$NotifierCallback;)V

    .line 143
    return-void
.end method

.method private static acquire(III)Landroid/databinding/ListChangeRegistry$ListChanges;
    .locals 2
    .param p0, "start"    # I
    .param p1, "to"    # I
    .param p2, "count"    # I

    .prologue
    .line 122
    sget-object v1, Landroid/databinding/ListChangeRegistry;->sListChanges:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/databinding/ListChangeRegistry$ListChanges;

    .line 123
    .local v0, "listChanges":Landroid/databinding/ListChangeRegistry$ListChanges;
    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/databinding/ListChangeRegistry$ListChanges;

    .end local v0    # "listChanges":Landroid/databinding/ListChangeRegistry$ListChanges;
    invoke-direct {v0}, Landroid/databinding/ListChangeRegistry$ListChanges;-><init>()V

    .line 126
    .restart local v0    # "listChanges":Landroid/databinding/ListChangeRegistry$ListChanges;
    :cond_0
    iput p0, v0, Landroid/databinding/ListChangeRegistry$ListChanges;->start:I

    .line 127
    iput p1, v0, Landroid/databinding/ListChangeRegistry$ListChanges;->to:I

    .line 128
    iput p2, v0, Landroid/databinding/ListChangeRegistry$ListChanges;->count:I

    .line 129
    return-object v0
.end method


# virtual methods
.method public declared-synchronized notifyCallbacks(Landroid/databinding/ObservableList;ILandroid/databinding/ListChangeRegistry$ListChanges;)V
    .locals 1
    .param p1, "sender"    # Landroid/databinding/ObservableList;
    .param p2, "notificationType"    # I
    .param p3, "listChanges"    # Landroid/databinding/ListChangeRegistry$ListChanges;

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 136
    if-eqz p3, :cond_0

    .line 137
    sget-object v0, Landroid/databinding/ListChangeRegistry;->sListChanges:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p3}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Landroid/databinding/ObservableList;

    check-cast p3, Landroid/databinding/ListChangeRegistry$ListChanges;

    invoke-virtual {p0, p1, p2, p3}, Landroid/databinding/ListChangeRegistry;->notifyCallbacks(Landroid/databinding/ObservableList;ILandroid/databinding/ListChangeRegistry$ListChanges;)V

    return-void
.end method

.method public notifyChanged(Landroid/databinding/ObservableList;II)V
    .locals 2
    .param p1, "list"    # Landroid/databinding/ObservableList;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 80
    const/4 v1, 0x0

    invoke-static {p2, v1, p3}, Landroid/databinding/ListChangeRegistry;->acquire(III)Landroid/databinding/ListChangeRegistry$ListChanges;

    move-result-object v0

    .line 81
    .local v0, "listChanges":Landroid/databinding/ListChangeRegistry$ListChanges;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/databinding/ListChangeRegistry;->notifyCallbacks(Landroid/databinding/ObservableList;ILandroid/databinding/ListChangeRegistry$ListChanges;)V

    .line 82
    return-void
.end method

.method public notifyInserted(Landroid/databinding/ObservableList;II)V
    .locals 2
    .param p1, "list"    # Landroid/databinding/ObservableList;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 92
    const/4 v1, 0x0

    invoke-static {p2, v1, p3}, Landroid/databinding/ListChangeRegistry;->acquire(III)Landroid/databinding/ListChangeRegistry$ListChanges;

    move-result-object v0

    .line 93
    .local v0, "listChanges":Landroid/databinding/ListChangeRegistry$ListChanges;
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Landroid/databinding/ListChangeRegistry;->notifyCallbacks(Landroid/databinding/ObservableList;ILandroid/databinding/ListChangeRegistry$ListChanges;)V

    .line 94
    return-void
.end method

.method public notifyRemoved(Landroid/databinding/ObservableList;II)V
    .locals 2
    .param p1, "list"    # Landroid/databinding/ObservableList;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 117
    const/4 v1, 0x0

    invoke-static {p2, v1, p3}, Landroid/databinding/ListChangeRegistry;->acquire(III)Landroid/databinding/ListChangeRegistry$ListChanges;

    move-result-object v0

    .line 118
    .local v0, "listChanges":Landroid/databinding/ListChangeRegistry$ListChanges;
    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1, v0}, Landroid/databinding/ListChangeRegistry;->notifyCallbacks(Landroid/databinding/ObservableList;ILandroid/databinding/ListChangeRegistry$ListChanges;)V

    .line 119
    return-void
.end method
