.class Lcom/mcdonalds/app/msa/MSAAlarmActivity$2$1;
.super Ljava/lang/Object;
.source "MSAAlarmActivity.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2$1;->this$1:Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/Object;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    return-void
.end method
