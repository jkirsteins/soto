//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension S3 {
    ///  Returns some or all (up to 1,000) of the objects in a bucket with each request. You can use the request parameters as selection criteria to return a subset of the objects in a bucket. A  200 OK response can contain valid or invalid XML. Make sure to design your application to parse the contents of the response and handle it appropriately.  Objects are returned sorted in an ascending order of the respective key names in the list. For more information about listing objects, see Listing object keys  programmatically
    ///   To use this operation, you must have READ access to the bucket.
    ///   To use this action in an Identity and Access Management (IAM) policy, you must have permissions to perform the s3:ListBucket action. The bucket owner has this permission by default and can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources.  This section describes the latest revision of this action. We recommend that you use this revised API for application development. For backward compatibility, Amazon S3 continues to support the prior version of this API, ListObjects.
    ///   To get a list of your buckets, see ListBuckets.
    ///   The following operations are related to ListObjectsV2:    GetObject     PutObject     CreateBucket
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listObjectsV2Paginator(
        _ input: ListObjectsV2Request,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListObjectsV2Request, ListObjectsV2Output> {
        return .init(
            input: input,
            command: listObjectsV2,
            inputKey: \ListObjectsV2Request.continuationToken,
            outputKey: \ListObjectsV2Output.nextContinuationToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the parts that have been uploaded for a specific multipart upload. This operation must include the upload ID, which you obtain by sending the initiate multipart upload request (see CreateMultipartUpload). This request returns a maximum of 1,000 uploaded parts. The default number of parts returned is 1,000 parts. You can restrict the number of parts returned by specifying the max-parts request parameter. If your multipart upload consists of more than 1,000 parts, the response returns an IsTruncated field with the value of true, and a NextPartNumberMarker element. In subsequent ListParts requests you can include the part-number-marker query string parameter and set its value to the NextPartNumberMarker field value from the previous response.
    ///   For more information on multipart uploads, see Uploading Objects Using Multipart Upload.
    ///   For information on permissions required to use the multipart upload API, see Multipart Upload and Permissions.
    ///   The following operations are related to ListParts:    CreateMultipartUpload     UploadPart     CompleteMultipartUpload     AbortMultipartUpload     ListMultipartUploads
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPartsPaginator(
        _ input: ListPartsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPartsRequest, ListPartsOutput> {
        return .init(
            input: input,
            command: listParts,
            outputKey: \ListPartsOutput.nextPartNumberMarker,
            moreResultsKey: \ListPartsOutput.isTruncated,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
