#import <Foundation/Foundation.h>

@class DMStory;

@interface DMStoryBuilder : NSObject

+ (instancetype)story;

+ (instancetype)storyFromExistingStory:(DMStory *)existingStory;

- (DMStory *)build;

- (instancetype)withId:(NSString *)id;

- (instancetype)withStreamId:(NSString *)streamId;

- (instancetype)withTimestamp:(NSDate *)timestamp;

- (instancetype)withTitle:(NSString *)title;

- (instancetype)withContent:(NSString *)content;

- (instancetype)withAuthor:(NSString *)author;

- (instancetype)withUrl:(NSURL *)url;

- (instancetype)withPublished:(NSDate *)published;

- (instancetype)withUpdated:(NSDate *)updated;

- (instancetype)withLikes:(NSUInteger)likes;

@end

