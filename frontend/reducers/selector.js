export const selectPinsByBoardId = (state, boardId) =>
  Object.values(state.entities.pinBoards).filter(pinBoard => pinBoard.boardId === boardId)
  .map(pinBoard => state.entities.pins[pinBoard.id]);
