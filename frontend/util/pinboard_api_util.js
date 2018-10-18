export const createPinBoard = (pinboard) => (
  $.ajax({
    method: 'POST',
    url: "/api/pinboards",
    data: {pinboard:  {board_id: pinboard.boardId, pin_id: pinboard.pinId}}
  })
);
