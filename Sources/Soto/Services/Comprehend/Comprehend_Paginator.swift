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

import SotoCore

// MARK: Paginators

extension Comprehend {
    ///  Gets a list of the documentation classification jobs that you have submitted.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listDocumentClassificationJobsPaginator<Result>(
        _ input: ListDocumentClassificationJobsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDocumentClassificationJobsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDocumentClassificationJobs,
            inputKey: \ListDocumentClassificationJobsRequest.nextToken,
            outputKey: \ListDocumentClassificationJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listDocumentClassificationJobsPaginator(
        _ input: ListDocumentClassificationJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDocumentClassificationJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDocumentClassificationJobs,
            inputKey: \ListDocumentClassificationJobsRequest.nextToken,
            outputKey: \ListDocumentClassificationJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of summaries of the document classifiers that you have created
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listDocumentClassifierSummariesPaginator<Result>(
        _ input: ListDocumentClassifierSummariesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDocumentClassifierSummariesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDocumentClassifierSummaries,
            inputKey: \ListDocumentClassifierSummariesRequest.nextToken,
            outputKey: \ListDocumentClassifierSummariesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listDocumentClassifierSummariesPaginator(
        _ input: ListDocumentClassifierSummariesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDocumentClassifierSummariesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDocumentClassifierSummaries,
            inputKey: \ListDocumentClassifierSummariesRequest.nextToken,
            outputKey: \ListDocumentClassifierSummariesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of the document classifiers that you have created.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listDocumentClassifiersPaginator<Result>(
        _ input: ListDocumentClassifiersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDocumentClassifiersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDocumentClassifiers,
            inputKey: \ListDocumentClassifiersRequest.nextToken,
            outputKey: \ListDocumentClassifiersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listDocumentClassifiersPaginator(
        _ input: ListDocumentClassifiersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDocumentClassifiersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDocumentClassifiers,
            inputKey: \ListDocumentClassifiersRequest.nextToken,
            outputKey: \ListDocumentClassifiersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of the dominant language detection jobs that you have submitted.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listDominantLanguageDetectionJobsPaginator<Result>(
        _ input: ListDominantLanguageDetectionJobsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDominantLanguageDetectionJobsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDominantLanguageDetectionJobs,
            inputKey: \ListDominantLanguageDetectionJobsRequest.nextToken,
            outputKey: \ListDominantLanguageDetectionJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listDominantLanguageDetectionJobsPaginator(
        _ input: ListDominantLanguageDetectionJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDominantLanguageDetectionJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDominantLanguageDetectionJobs,
            inputKey: \ListDominantLanguageDetectionJobsRequest.nextToken,
            outputKey: \ListDominantLanguageDetectionJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of the entity detection jobs that you have submitted.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listEntitiesDetectionJobsPaginator<Result>(
        _ input: ListEntitiesDetectionJobsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEntitiesDetectionJobsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listEntitiesDetectionJobs,
            inputKey: \ListEntitiesDetectionJobsRequest.nextToken,
            outputKey: \ListEntitiesDetectionJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listEntitiesDetectionJobsPaginator(
        _ input: ListEntitiesDetectionJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEntitiesDetectionJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEntitiesDetectionJobs,
            inputKey: \ListEntitiesDetectionJobsRequest.nextToken,
            outputKey: \ListEntitiesDetectionJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of summaries for the entity recognizers that you have created.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listEntityRecognizerSummariesPaginator<Result>(
        _ input: ListEntityRecognizerSummariesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEntityRecognizerSummariesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listEntityRecognizerSummaries,
            inputKey: \ListEntityRecognizerSummariesRequest.nextToken,
            outputKey: \ListEntityRecognizerSummariesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listEntityRecognizerSummariesPaginator(
        _ input: ListEntityRecognizerSummariesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEntityRecognizerSummariesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEntityRecognizerSummaries,
            inputKey: \ListEntityRecognizerSummariesRequest.nextToken,
            outputKey: \ListEntityRecognizerSummariesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of the properties of all entity recognizers that you created, including recognizers currently in training. Allows you to filter the list of recognizers based on criteria such as status and submission time. This call returns up to 500 entity recognizers in the list, with a default number of 100 recognizers in the list. The results of this list are not in any particular order. Please get the list and sort locally if needed.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listEntityRecognizersPaginator<Result>(
        _ input: ListEntityRecognizersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEntityRecognizersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listEntityRecognizers,
            inputKey: \ListEntityRecognizersRequest.nextToken,
            outputKey: \ListEntityRecognizersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listEntityRecognizersPaginator(
        _ input: ListEntityRecognizersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEntityRecognizersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEntityRecognizers,
            inputKey: \ListEntityRecognizersRequest.nextToken,
            outputKey: \ListEntityRecognizersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of the events detection jobs that you have submitted.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listEventsDetectionJobsPaginator<Result>(
        _ input: ListEventsDetectionJobsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEventsDetectionJobsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listEventsDetectionJobs,
            inputKey: \ListEventsDetectionJobsRequest.nextToken,
            outputKey: \ListEventsDetectionJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listEventsDetectionJobsPaginator(
        _ input: ListEventsDetectionJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEventsDetectionJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEventsDetectionJobs,
            inputKey: \ListEventsDetectionJobsRequest.nextToken,
            outputKey: \ListEventsDetectionJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Get a list of key phrase detection jobs that you have submitted.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listKeyPhrasesDetectionJobsPaginator<Result>(
        _ input: ListKeyPhrasesDetectionJobsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListKeyPhrasesDetectionJobsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listKeyPhrasesDetectionJobs,
            inputKey: \ListKeyPhrasesDetectionJobsRequest.nextToken,
            outputKey: \ListKeyPhrasesDetectionJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listKeyPhrasesDetectionJobsPaginator(
        _ input: ListKeyPhrasesDetectionJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListKeyPhrasesDetectionJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listKeyPhrasesDetectionJobs,
            inputKey: \ListKeyPhrasesDetectionJobsRequest.nextToken,
            outputKey: \ListKeyPhrasesDetectionJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of sentiment detection jobs that you have submitted.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listSentimentDetectionJobsPaginator<Result>(
        _ input: ListSentimentDetectionJobsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSentimentDetectionJobsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSentimentDetectionJobs,
            inputKey: \ListSentimentDetectionJobsRequest.nextToken,
            outputKey: \ListSentimentDetectionJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listSentimentDetectionJobsPaginator(
        _ input: ListSentimentDetectionJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSentimentDetectionJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSentimentDetectionJobs,
            inputKey: \ListSentimentDetectionJobsRequest.nextToken,
            outputKey: \ListSentimentDetectionJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of the topic detection jobs that you have submitted.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listTopicsDetectionJobsPaginator<Result>(
        _ input: ListTopicsDetectionJobsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTopicsDetectionJobsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTopicsDetectionJobs,
            inputKey: \ListTopicsDetectionJobsRequest.nextToken,
            outputKey: \ListTopicsDetectionJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listTopicsDetectionJobsPaginator(
        _ input: ListTopicsDetectionJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTopicsDetectionJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTopicsDetectionJobs,
            inputKey: \ListTopicsDetectionJobsRequest.nextToken,
            outputKey: \ListTopicsDetectionJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Comprehend.ListDocumentClassificationJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListDocumentClassificationJobsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Comprehend.ListDocumentClassifierSummariesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListDocumentClassifierSummariesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Comprehend.ListDocumentClassifiersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListDocumentClassifiersRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Comprehend.ListDominantLanguageDetectionJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListDominantLanguageDetectionJobsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Comprehend.ListEntitiesDetectionJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListEntitiesDetectionJobsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Comprehend.ListEntityRecognizerSummariesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListEntityRecognizerSummariesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Comprehend.ListEntityRecognizersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListEntityRecognizersRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Comprehend.ListEventsDetectionJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListEventsDetectionJobsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Comprehend.ListKeyPhrasesDetectionJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListKeyPhrasesDetectionJobsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Comprehend.ListSentimentDetectionJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListSentimentDetectionJobsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Comprehend.ListTopicsDetectionJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Comprehend.ListTopicsDetectionJobsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
