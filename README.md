# 🌐 URL Shortener

This is a URL shortening service built with Ruby on Rails and styled with Tailwind CSS.

## 🚀 Features

- 📝 Users can submit a URL through a form on the homepage. This URL is then saved to the database.
- 🔗 Each URL can be accessed via a Base62 encoded primary key - ID (short code) at /v/:id.
- 📋 Users can easily copy the shortened URL to their clipboard.
- 📊 Each visit to the short URL is recorded, allowing us to track the number of views per day.
- 📈 The total number of views is saved to the URL record.
- 📉 Users can view a graph showing the number of views over the past two weeks.
- ✏️ Users have the ability to edit and delete the URLs they've submitted.
- 🌐 The service retrieves the title, description, and OpenGraph image for the HTML document of the submitted URL. This process runs in the background to maintain application performance. If a URL is edited, the title, description, and image are updated.
- 📖 The list of shortened URLs is paginated for easy navigation.

## 🛠️ Technologies Used

- 💎 Ruby
- 🛤️ Rails
- 🎨 Tailwind CSS
