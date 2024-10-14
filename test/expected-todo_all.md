# Test ToDo Variations

- [ ] Test conversion of tree nodes to list items with checkmarks in different variations.
- [ ] A todo list
  - [ ] normal task
  - [ ] nested tasks
    - [ ] subtask
      - [ ] subsubtask
    - [x] completed subtask
    - [x] completed subtask with different icon
  - [ ] task explictly marked with icon
    - [ ] with list item as subnote
      - [ ] and subsubnote
    - [ ] subtask
    - [x] completed subtask
    - [x] completed subtask
  - [x] completed task
    - [ ] unmarked list item under completed task
    - [x] task with different icon
  - [x] completed task
    - [ ] unmarked list item under completed task
  - :heavy_multiplication_x: cancelled task
    - [ ] unmarked list item under cancelled task
  - [x] some variations of nesting
    - [ ] list item
      - [x] task again
      - [x] task again
      - [ ] list item
    - [x] task
      - [ ] list item
    - :information_source: info
      - [ ] subinfo
      - [x] task
- [ ] Cases for extended checkmark syntax
  - [ ] ToDo
    - [ ] - [ ]
  - [x] Done
    - [ ] - [x]
  - [x] Covered / Discussed
    - [ ] :heavy_check_mark:
    - [ ] - [x]
  - :heavy_multiplication_x: Canceled
    - [ ] :heavy_multiplication_x:
    - [ ] - [/]
  - :hourglass: Waiting / blocked
    - [ ] :hourglass:
    - [ ] - [w]
  - :calendar: Timed
    - [ ] :calendar:
    - [ ] - [t]
  - :stop_sign: Not further pursued
    - [ ] :stop_sign:
  - :information_source: Info
    - [ ] :information_source:
    - [ ] -[i]
  - :repeat: Recurring
    - [ ] :repeat:
    - [ ] - [r]
  - :exclamation: !
    - [ ] :exclamation:
    - [ ] -[!]
  - :question: ?
    - [ ] :question:
    - [ ] - [?]
  - [0%] [25%] [50%] [75%] [100%] Progress icons
    - [ ] Any emoji ?
    - [ ] - [25%] ... etc.
  - :one: :two: :three: etc.Priority
    - [ ] :one: :two: :three: etc.
  - :very_negative: :negative: :neutral: :positive: :very_positive: Rating
    - [ ] Any similar emojies?
    - [ ] (--), (-), 0, (+), (++)