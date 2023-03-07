local Library = {}

function Library:CreateWindow()
	local GUI = Instance.new("ScreenGui")
	local FRAME = Instance.new("Frame")
	local CORNER = Instance.new("UICorner")
	local SIDEBAR = Instance.new("Frame")
	local CORNER_2 = Instance.new("UICorner")
	local BAR = Instance.new("Frame")
	local TABS = Instance.new("Frame")
	local TABBUTTON = Instance.new("TextButton")
	local CORNER_3 = Instance.new("UICorner")
	local TLISTING = Instance.new("UIListLayout")
	local PAGES = Instance.new("Frame")
	local CORNER_4 = Instance.new("UICorner")
	local FOLDER = Instance.new("Folder")

	GUI.Name = "GUI"
	GUI.Parent = game.CoreGui
	GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	GUI.ResetOnSpawn = false

	FRAME.Name = "FRAME"
	FRAME.Parent = GUI
	FRAME.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
	FRAME.Position = UDim2.new(0.395215303, 0, 0.334063649, 0)
	FRAME.Size = UDim2.new(0, 430, 0, 260)

	CORNER.CornerRadius = UDim.new(0, 9)
	CORNER.Name = "CORNER"
	CORNER.Parent = FRAME

	SIDEBAR.Name = "SIDEBAR"
	SIDEBAR.Parent = FRAME
	SIDEBAR.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	SIDEBAR.BorderColor3 = Color3.fromRGB(34, 34, 34)
	SIDEBAR.BorderSizePixel = 0
	SIDEBAR.Size = UDim2.new(0, 110, 0, 260)

	CORNER_2.CornerRadius = UDim.new(0, 9)
	CORNER_2.Name = "CORNER"
	CORNER_2.Parent = SIDEBAR

	BAR.Name = "BAR"
	BAR.Parent = SIDEBAR
	BAR.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
	BAR.BorderSizePixel = 0
	BAR.Position = UDim2.new(0.943925261, 0, 0, 0)
	BAR.Size = UDim2.new(0, 6, 0, 260)

	TABS.Name = "TABS"
	TABS.Parent = SIDEBAR
	TABS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TABS.BackgroundTransparency = 1.000
	TABS.Position = UDim2.new(0.0500000007, 0, 0.0299999993, 0)
	TABS.Size = UDim2.new(0, 98, 0, 246)

	TLISTING.Name = "TLISTING"
	TLISTING.Parent = TABS
	TLISTING.SortOrder = Enum.SortOrder.LayoutOrder
	TLISTING.Padding = UDim.new(0, 2)

	PAGES.Name = "PAGES"
	PAGES.Parent = FRAME
	PAGES.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	PAGES.BorderColor3 = Color3.fromRGB(34, 34, 34)
	PAGES.Position = UDim2.new(0.274418592, 0, 0.0269230772, 0)
	PAGES.Size = UDim2.new(0, 306, 0, 245)

	CORNER_4.CornerRadius = UDim.new(0, 5)
	CORNER_4.Name = "CORNER"
	CORNER_4.Parent = PAGES

	FOLDER.Name = "FOLDER"
	FOLDER.Parent = PAGES

	local Tabs = {}

	function Tabs:CreateTab(TabName)
		TabName = TabName or  "New Tab"

		local TABBUTTON = Instance.new("TextButton")
		local CORNER_3 = Instance.new("UICorner")
		local PAGE = Instance.new("ScrollingFrame")
		local ELISTING = Instance.new("UIListLayout")

		TABBUTTON.Name = "TABBUTTON"
		TABBUTTON.Parent = TABS
		TABBUTTON.BackgroundColor3 = Color3.fromRGB(162, 162, 162)
		TABBUTTON.BorderColor3 = Color3.fromRGB(162, 162, 162)
		TABBUTTON.Size = UDim2.new(0, 90, 0, 25)
		TABBUTTON.Font = Enum.Font.Gotham
		TABBUTTON.Text = TabName
		TABBUTTON.TextColor3 = Color3.fromRGB(255, 255, 255)
		TABBUTTON.TextSize = 14.00
		TABBUTTON.MouseButton1Click:Connect(function()
			for i,v in next, PAGES:GetChildren() do -- We get all the pages that we added
				v.Visible = false   -- then we make them invisible 
			end 

			PAGE.Visible = true

			for i,v in next, TABS:GetChildren() do
				if v:IsA("TextButton") then
					game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(115, 49, 37)}):Play()
				end
			end
			
			game.TweenService:Create(TABBUTTON, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(255, 109, 83)}):Play()
		end)

		CORNER_3.CornerRadius = UDim.new(0, 5)
		CORNER_3.Name = "CORNER"
		CORNER_3.Parent = TABBUTTON

		PAGE.Name = "PAGE"
		PAGE.Parent = PAGES
		PAGE.Active = true
		PAGE.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
		PAGE.BackgroundTransparency = 1.000
		PAGE.BorderColor3 = Color3.fromRGB(34, 34, 34)
		PAGE.Size = UDim2.new(1, 0, 1, 0)
		PAGE.ScrollBarThickness = 4

		ELISTING.Name = "ELISTING"
		ELISTING.Parent = PAGE
		ELISTING.HorizontalAlignment = Enum.HorizontalAlignment.Center
		ELISTING.SortOrder = Enum.SortOrder.LayoutOrder
		ELISTING.Padding = UDim.new(0, 5)
	end

	return Tabs
end

return Library
