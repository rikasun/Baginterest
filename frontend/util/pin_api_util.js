export const fetchPins = (userId) => (
  $.ajax({
    method: 'GET',
    url: `/api/users/${userId}/pins`
  })
);

export const fetchPin = (id) => (
  $.ajax({
    method: 'GET',
    url: `/api/pins/${id}`
  })
);

export const createPin = (data) => (
  $.ajax({
    method: 'POST',
    url: "/api/pins",
    data: data,
    processData: false,
    contentType: false
  })
);
export const updatePin = (pin) => (
  $.ajax({
    method: 'PATCH',
    url: `/api/pins/${pin.id}`,
    data: {pin}
  })
);
export const deletePin = (id) => (
  $.ajax({
    method: 'DELETE',
    url: `/api/pins/${id}`
  })
);
