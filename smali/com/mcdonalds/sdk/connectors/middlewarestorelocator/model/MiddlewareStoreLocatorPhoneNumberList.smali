.class public Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorPhoneNumberList;
.super Ljava/lang/Object;
.source "MiddlewareStoreLocatorPhoneNumberList.java"


# instance fields
.field public phoneNumberList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phonenumber"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorPhoneNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
