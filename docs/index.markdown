# Protocol Documentation
<a name="top"/>

## Table of Contents
* [common.proto](#common.proto)
 * [Error](#com.zxventures.geladinha.resources.common.Error)
 * [Message](#com.zxventures.geladinha.resources.common.Message)
 * [Messages](#com.zxventures.geladinha.resources.common.Messages)
 * [MessageCategory](#com.zxventures.geladinha.resources.common.MessageCategory)
* [geometry.proto](#geometry.proto)
 * [LinearString](#com.zxventures.geladinha.resources.geometry.LinearString)
 * [MultiPolygon](#com.zxventures.geladinha.resources.geometry.MultiPolygon)
 * [Point](#com.zxventures.geladinha.resources.geometry.Point)
 * [Polygon](#com.zxventures.geladinha.resources.geometry.Polygon)
* [point_of_sale.proto](#point_of_sale.proto)
 * [PointOfSale](#com.zxventures.geladinha.resources.pointOfSale.PointOfSale)
 * [PointsOfSale](#com.zxventures.geladinha.resources.pointOfSale.PointsOfSale)
* [Scalar Value Types](#scalar-value-types)

<a name="common.proto"/>
<p align="right"><a href="#top">Top</a></p>

## common.proto



<a name="com.zxventures.geladinha.resources.common.Error"/>
### Error
Error resource is a representation of any unexpected error.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message | [string](#string) | optional |  |


<a name="com.zxventures.geladinha.resources.common.Message"/>
### Message
[Message] is a representation of any message that should be sent to consumer clients.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| category | [MessageCategory](#com.zxventures.geladinha.resources.common.MessageCategory) | optional |  |
| target | [string](#string) | optional |  |
| message | [string](#string) | optional |  |
| key | [string](#string) | optional |  |
| args | [string](#string) | repeated |  |


<a name="com.zxventures.geladinha.resources.common.Messages"/>
### Messages
A wrapper to accumulate several [Message]s.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| messages | [Message](#com.zxventures.geladinha.resources.common.Message) | repeated |  |



<a name="com.zxventures.geladinha.resources.common.MessageCategory"/>
### MessageCategory
[MessageCategory] is the way to group Messages by it's meaning.

| Name | Number | Description |
| ---- | ------ | ----------- |
| INFO | 0 |  |
| VALIDATION | 1 |  |
| ERROR | 2 |  |




<a name="geometry.proto"/>
<p align="right"><a href="#top">Top</a></p>

## geometry.proto



<a name="com.zxventures.geladinha.resources.geometry.LinearString"/>
### LinearString
[LinearString](https://tools.ietf.org/html/rfc7946#section-3.1.4) is represented as a list of [Point]s.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| points | [Point](#com.zxventures.geladinha.resources.geometry.Point) | repeated |  |


<a name="com.zxventures.geladinha.resources.geometry.MultiPolygon"/>
### MultiPolygon
[MultiPolygon] is represented as a list of [Polygons]s.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| polygons | [Polygon](#com.zxventures.geladinha.resources.geometry.Polygon) | repeated |  |


<a name="com.zxventures.geladinha.resources.geometry.Point"/>
### Point
[Point](https://tools.ietf.org/html/rfc7946#section-3.1.2) represents a single position in the planet earth
given its latitude and longitude.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| latitude | [float](#float) | optional |  |
| longitude | [float](#float) | optional |  |


<a name="com.zxventures.geladinha.resources.geometry.Polygon"/>
### Polygon
[Polygon](https://tools.ietf.org/html/rfc7946#section-3.1.6) is represented as a list of [LinearString]s.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| linear_strings | [LinearString](#com.zxventures.geladinha.resources.geometry.LinearString) | repeated |  |






<a name="point_of_sale.proto"/>
<p align="right"><a href="#top">Top</a></p>

## point_of_sale.proto



<a name="com.zxventures.geladinha.resources.pointOfSale.PointOfSale"/>
### PointOfSale
[PointOfSale] is the representation of a beer commercial point of sale in ZX-Ventures plataform.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) | optional |  |
| trading_name | [string](#string) | optional |  |
| owner_name | [string](#string) | optional |  |
| document | [string](#string) | optional |  |
| coverage_area | [MultiPolygon](#com.zxventures.geladinha.resources.geometry.MultiPolygon) | optional |  |
| address | [Point](#com.zxventures.geladinha.resources.geometry.Point) | optional |  |


<a name="com.zxventures.geladinha.resources.pointOfSale.PointsOfSale"/>
### PointsOfSale
A list of [PointOfSale].

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pointsOfSale | [PointOfSale](#com.zxventures.geladinha.resources.pointOfSale.PointOfSale) | repeated |  |







<a name="scalar-value-types"/>
## Scalar Value Types

| .proto Type | Notes | C++ Type | Java Type | Python Type |
| ----------- | ----- | -------- | --------- | ----------- |
| <a name="double"/> double |  | double | double | float |
| <a name="float"/> float |  | float | float | float |
| <a name="int32"/> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int |
| <a name="int64"/> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long |
| <a name="uint32"/> uint32 | Uses variable-length encoding. | uint32 | int | int/long |
| <a name="uint64"/> uint64 | Uses variable-length encoding. | uint64 | long | int/long |
| <a name="sint32"/> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int |
| <a name="sint64"/> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long |
| <a name="fixed32"/> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int |
| <a name="fixed64"/> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long |
| <a name="sfixed32"/> sfixed32 | Always four bytes. | int32 | int | int |
| <a name="sfixed64"/> sfixed64 | Always eight bytes. | int64 | long | int/long |
| <a name="bool"/> bool |  | bool | boolean | boolean |
| <a name="string"/> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode |
| <a name="bytes"/> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str |
