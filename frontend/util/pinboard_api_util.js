export const createPinBoard = (pinboard) => (
  $.ajax({
    method: 'POST',
    url: "/api/pinboards",
    data: {pinboard:  {board_id: pinboard.boardId, pin_id: pinboard.pinId}}
  })
);

export const deletePinBoard = (id) => (
  $.ajax({
    method: 'DELETE',
    url: `/api/pinboards/${id}`,
  })
);
