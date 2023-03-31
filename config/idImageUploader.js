const idImgbbUploader = require("imgbb-uploader");

  const getIdImageUrl = async (buffer, name = "Default-filename") => {
      return await idImgbbUploader({
        apiKey: "2aab0877b0ef8fd62d5b4ea70f5e19e7",
        base64string: buffer,
        name,
      })
        .then((res) => {
          return res.url;
        })
        .catch((e) => {
        });
    };
  module.exports={getIdImageUrl}

  