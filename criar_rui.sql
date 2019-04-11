PRAGMA foreign_keys = off;

BEGIN TRANSACTION;


-- Table: Challenge

DROP TABLE IF EXISTS Challenge;



CREATE TABLE Challenge (
    
    id           INT     PRIMARY KEY
  NOT NULL ON CONFLICT ABORT,

    startTime    DATE    NOT NULL ON CONFLICT ABORT,

    endTime      DATE    NOT NULL ON CONFLICT ABORT,

    exercisePlan INT     REFERENCES ExercisePlan (id) ON DELETE SET NULL
  ON UPDATE CASCADE
 NOT NULL ON CONFLICT ABORT,

    isPublic     BOOLEAN NOT NULL ON CONFLICT ABORT
 DEFAULT (1),

    CHECK (endTime >= startTime) 
)

WITHOUT ROWID;




-- Table: ChallengeDay

DROP TABLE IF EXISTS ChallengeDay;



CREATE TABLE ChallengeDay (
    
    challenge INT REFERENCES Challenge (id) ON DELETE SET NULL
                                            ON UPDATE CASCADE
                  NOT NULL ON CONFLICT ABORT,

    weekDay   INT NOT NULL ON CONFLICT ABORT
                  REFERENCES WeekDay (id) ON DELETE SET NULL
                                          ON UPDATE CASCADE,

    PRIMARY KEY (
        challenge,
        weekDay
    )
)

WITHOUT ROWID;




-- Table: CustomExercise

DROP TABLE IF EXISTS CustomExercise;



CREATE TABLE CustomExercise (
    
	id       INT     PRIMARY KEY
                     NOT NULL ON CONFLICT ABORT
                     REFERENCES Exercise (id) ON DELETE SET NULL
                                              ON UPDATE CASCADE,

    isPublic BOOLEAN NOT NULL ON CONFLICT ABORT
                     DEFAULT true,

    creator  BIGINT  REFERENCES User (facebookID) ON DELETE SET NULL
      ON UPDATE CASCADE
      NOT NULL ON CONFLICT ABORT
)
WITHOUT ROWID;



-- Table: CustomPlan

DROP TABLE IF EXISTS CustomPlan;



CREATE TABLE CustomPlan (
  
id           INT     PRIMARY KEY
      REFERENCES ExercisePlan (id) ON DELETE SET NULL
             ON UPDATE CASCADE              NOT NULL ON CONFLICT ABORT,

    lastTimeUsed DATE    DEFAULT NULL,

    isPublic     BOOLEAN NOT NULL ON CONFLICT ABORT
      DEFAULT true,
    creator      BIGINT  REFERENCES User (facebookID) ON DELETE SET NULL
    ON UPDATE CASCADE
    NOT NULL ON CONFLICT ABORT
)

WITHOUT ROWID;




-- Table: DefaultExercise

DROP TABLE IF EXISTS DefaultExercise;


CREATE TABLE DefaultExercise (
    

	id INT PRIMARY KEY
         REFERENCES Exercise (id) ON DELETE SET NULL
   ON UPDATE CASCADE
     NOT NULL ON CONFLICT ABORT
)

WITHOUT ROWID;



-- Table: DefaultPlan

DROP TABLE IF EXISTS DefaultPlan;



CREATE TABLE DefaultPlan (
    
   id INT PRIMARY KEY
         REFERENCES ExercisePlan (id) ON DELETE SET NULL
     ON UPDATE CASCADE
   NOT NULL ON CONFLICT ABORT
)

WITHOUT ROWID;




-- Table: Execution

DROP TABLE IF EXISTS Execution;



CREATE TABLE Execution (
 
   
id        INT    PRIMARY KEY
                     NOT NULL ON CONFLICT ABORT,

    date      DATE   NOT NULL ON CONFLICT ABORT,

    duration  INT    NOT NULL ON CONFLICT ABORT
                     CHECK (duration >= 1),

    user      BIGINT REFERENCES User (facebookID) ON DELETE SET NULL
    ON UPDATE CASCADE
                     NOT NULL ON CONFLICT ABORT,

    challenge INT    REFERENCES Challenge (id) ON DELETE SET NULL    ON UPDATE CASCADE
                     NOT NULL ON CONFLICT ABORT
)

WITHOUT ROWID;




-- Table: Exercise

DROP TABLE IF EXISTS Exercise;



CREATE TABLE Exercise (
   
 id          INT  PRIMARY KEY
                     NOT NULL ON CONFLICT ABORT,

    name        TEXT NOT NULL ON CONFLICT ABORT,

    videoLink   TEXT DEFAULT NULL,

    description TEXT NOT NULL ON CONFLICT ABORT
  DEFAULT ('No description available.'),

    imageURL    TEXT DEFAULT NULL,
 
    difficulty  INT  CHECK (difficulty >= 1 AND 
                            difficulty <= 5)         DEFAULT (3) 
                     NOT NULL ON CONFLICT ABORT,

    type        INT  REFERENCES ExerciseType (id) ON DELETE SET NULL
        ON UPDATE CASCADE
                     NOT NULL ON CONFLICT ABORT
)

WITHOUT ROWID;




-- Table: ExerciseParameters

DROP TABLE IF EXISTS ExerciseParameters;



CREATE TABLE ExerciseParameters (
  
  exercisePlan   INT REFERENCES ExercisePlan (id) ON DELETE SET NULL
     ON UPDATE CASCADE
                       NOT NULL ON CONFLICT ABORT,
 
  exercise       INT REFERENCES Exercise (id) ON DELETE SET NULL
       ON UPDATE CASCADE
                       NOT NULL ON CONFLICT ABORT,

  numRepetitions INT CHECK (numRepetitions >= 1) 
                       NOT NULL ON CONFLICT ABORT,

    numSets        INT CHECK (numSets >= 1) 
                       NOT NULL ON CONFLICT ABORT,

    PRIMARY KEY (
        exercisePlan,
        exercise
    )
)

WITHOUT ROWID;




-- Table: ExercisePlan

DROP TABLE IF EXISTS ExercisePlan;



CREATE TABLE ExercisePlan (
    
id                 INT PRIMARY KEY
                           NOT NULL ON CONFLICT ABORT,

    recomendedCooldown INT CHECK (recomendedCooldown > 0),

    difficulty         INT NOT NULL ON CONFLICT ABORT
)


WITHOUT ROWID;




-- Table: ExerciseType

DROP TABLE IF EXISTS ExerciseType;



CREATE TABLE ExerciseType (
    
id   INT  NOT NULL ON CONFLICT ABORT
              PRIMARY KEY,

    name TEXT UNIQUE
              NOT NULL ON CONFLICT ABORT
)


WITHOUT ROWID;



-- Table: ParticipationDetails


DROP TABLE IF EXISTS ParticipationDetails;



CREATE TABLE ParticipationDetails (
    
user            BIGINT NOT NULL ON CONFLICT ABORT
       REFERENCES User (facebookID) ON DELETE SET NULL
        ON UPDATE CASCADE,

    challenge       INT    REFERENCES Challenge (id) ON DELETE SET NULL
                   ON UPDATE CASCADE
                           NOT NULL ON CONFLICT ABORT,

    score           INT    NOT NULL ON CONFLICT ABORT
                           CHECK (score >= 0) 
                           DEFAULT (0),

    finalPlanRating INT    DEFAULT NULL
                           CHECK (finalPlanRating >= 1 AND 
                                  finalPlanRating <= 10),

    PRIMARY KEY (
        user,
        challenge
    )
)


WITHOUT ROWID;



-- Table: User

DROP TABLE IF EXISTS User;



CREATE TABLE User (
    
facebookID BIGINT       PRIMARY KEY ON CONFLICT ABORT
                            NOT NULL ON CONFLICT ABORT,

    nickname   TEXT (6, 48) UNIQUE
                            NOT NULL ON CONFLICT ABORT,

    score      INT          NOT NULL ON CONFLICT ABORT
                            DEFAULT (0) 
)

WITHOUT ROWID;




-- Table: WeekDay

DROP TABLE IF EXISTS WeekDay;



CREATE TABLE WeekDay (
    id      INT  PRIMARY KEY
                 NOT NULL ON CONFLICT ABORT,

    dayName TEXT NOT NULL ON CONFLICT ABORT
   CHECK (dayName == 'Monday' OR 
 dayName == 'Tuesday' OR 
   dayName == 'Wednesday' OR 
     dayName == 'Thursday' OR 
                      dayName == 'Friday' OR 
                        dayName == 'Saturday' OR 
                        dayName == 'Sunday') 
)

WITHOUT ROWID;



COMMIT TRANSACTION;

PRAGMA foreign_keys = on;