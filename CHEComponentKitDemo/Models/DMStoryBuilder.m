#if  ! __has_feature(objc_arc)
#error This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

#import "DMStory.h"
#import "DMStoryBuilder.h"

@implementation DMStoryBuilder
{
  NSString *_id;
  NSString *_streamId;
  NSDate *_timestamp;
  NSString *_title;
  NSString *_content;
  NSString *_author;
  NSURL *_url;
  NSDate *_published;
  NSDate *_updated;
  NSUInteger _likes;
}

+ (instancetype)story
{
  return [[DMStoryBuilder alloc] init];
}

+ (instancetype)storyFromExistingStory:(DMStory *)existingStory
{
  return [[[[[[[[[[[DMStoryBuilder story]
                   withId:existingStory.id]
                  withStreamId:existingStory.streamId]
                 withTimestamp:existingStory.timestamp]
                withTitle:existingStory.title]
               withContent:existingStory.content]
              withAuthor:existingStory.author]
             withUrl:existingStory.url]
            withPublished:existingStory.published]
           withUpdated:existingStory.updated]
          withLikes:existingStory.likes];
}

- (DMStory *)build
{
  return [[DMStory alloc] initWithId:_id streamId:_streamId timestamp:_timestamp title:_title content:_content author:_author url:_url published:_published updated:_updated likes:_likes];
}

- (instancetype)withId:(NSString *)id
{
  _id = [id copy];
  return self;
}

- (instancetype)withStreamId:(NSString *)streamId
{
  _streamId = [streamId copy];
  return self;
}

- (instancetype)withTimestamp:(NSDate *)timestamp
{
  _timestamp = [timestamp copy];
  return self;
}

- (instancetype)withTitle:(NSString *)title
{
  _title = [title copy];
  return self;
}

- (instancetype)withContent:(NSString *)content
{
  _content = [content copy];
  return self;
}

- (instancetype)withAuthor:(NSString *)author
{
  _author = [author copy];
  return self;
}

- (instancetype)withUrl:(NSURL *)url
{
  _url = [url copy];
  return self;
}

- (instancetype)withPublished:(NSDate *)published
{
  _published = [published copy];
  return self;
}

- (instancetype)withUpdated:(NSDate *)updated
{
  _updated = [updated copy];
  return self;
}

- (instancetype)withLikes:(NSUInteger)likes
{
  _likes = likes;
  return self;
}

@end

