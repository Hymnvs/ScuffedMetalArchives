# SMAC - Scuffed MA Clone

## Feature Brainstorming

- I want to see all bands
- I want to filter bands
- I want to be able to maintain a band (CRUD)
- I want to be able to maintain releases for a band (CRUD)
- I want to be able to maintain artists for a band (CRUD)
- I want to be able to maintain links for a band (CRUD)
- I want to be able to see information on a band, a release and an artist
- ...

## Band

### A band has the following properties

- Name
- Country
- Location (City, State)
- Formation date
- Genre(s)
- Release(s)
- Artist(s)
- Link(s)
- Logo(s)
- Band picture(s)

### A band has the following information properties

- Created by
- Created on
- Modified by
- Modified on

## Release

### A release has the following properties

- Band
- Title
- Type (Full-length, EP, Demo...)
- Release date
- Song(s)
- Artist(s)

### A release has the following information properties

- Created by
- Created on
- Modified by
- Modified on

## Artist

### An artist has the following properties

- Alias
- Real name
- Age
- Place of origin
- Gender (M/F/Unknown)
- Band(s)
- Release(s)

### An artist has the following information properties

- Created by
- Created on
- Modified by
- Modified on

## Link

### A link has the following property

- Name
- URL