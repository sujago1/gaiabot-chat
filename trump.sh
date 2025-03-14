#!/bin/bash

# Check if jq is installed, and if not, install it
if ! command -v jq &> /dev/null; then
    echo "❌ jq not found. Installing jq..."
    sudo apt update && sudo apt install jq -y
    if [ $? -eq 0 ]; then
        echo "✅ jq installed successfully!"
    else
        echo "❌ Failed to install jq. Please install jq manually and re-run the script."
        exit 1
    fi
else
    echo "✅ jq is already installed."
fi

# List of general questions
general_questions=(
    "what is the best crypto wallet"
"crypto bull run"
"crypto you should invest in 2024"
"crypto xlm price"
"crypto key"
"web3 bug bounty"
"web3 marketing jobs"
"japan web3 whitepaper"
"blockchain youtube channels"
"sui crypto"
"safemoon crypto"
"meaning of web3"
"blockchain marketing"
"crypto atm near me"
"crypto blockchain"
"blockchain hash example"
"web3 global"
"pixels web3 game"
"crypto wallet app"
"crypto presale"
"the ethereum blockchain explorer"
"crypto scams"
"fleek web3"
"goldfinch crypto"
"exodus crypto"
"floki crypto"
"web3 kya hai"
"zero knowledge proof blockchain"
"crypto news live"
"blockchain zk"
"roblox web3"
"gala crypto price prediction"
"monero crypto"
"immutable web3"
"blockchain engineer salary"
"cloudflare web3"
"blockchain com ipo"
"crypto unlocks"
"xsolla web3"
"moralis web3"
"cardano blockchain"
"blockchain smart contracts"
"web3 ui kit"
"stx crypto"
"applications of blockchain"
"xircus web3 protocol"
"ledger web3"
"is bitcoin a blockchain"
"uncaught typeerror web3 is not a constructor"
"vitruveo blockchain"
"web3 crypto"
"youtube blockchain"
"dca crypto"
"aws blockchain"
"web3 npm"
"blockchain korea"
"blockchain website"
"blockchain icon"
"is web3 dead"
"galaxy web3"
"blockchain on aws"
"web3 is going great"
"xai web3"
"value of pi crypto"
"binance blockchain week"
"search blockchain"
"crypto trading platform"
"crypto charts"
"next crypto bull run"
"web3 auth"
"consortium blockchain"
"okx crypto"
"crystal blockchain"
"zilliqa blockchain"
"blockchain definition"
"jupiter blockchain"
"trading crypto"
"blockchain wikipedia"
"crypto uniswap"
"blockchain hash"
"lens web3"
"blockchain jobs salary"
"blockchain images"
"crypto quotes"
"crypto js"
"web3 java"
"paradigm web3"
"web3 technology"
"blockchain lookup"
"krypcore web3"
"blockchain journals"
"oracle web3"
"crypto mining calculator"
"types of blockchain"
"blockchain yt"
"near web3"
"blockchain bets"
"usdc blockchain"
"blockchain forensics"
"web3 oracles"
"crypto wash sale rule"
"ey blockchain"
"ez blockchain"
"edge and node house of web3"
"web3 security"
"genesis crypto"
"magic web3"
"grok crypto"
"crypto usdc"
"web3 wiki"
"goldman sachs blockchain"
"web3 avatar"
"crypto quotes today"
"learn web3 development"
"web3 tutorial"
"xai blockchain"
"crypto kyc"
"ftm crypto"
"web3 uk crypto regulation"
"crypto by market cap"
"how does blockchain work"
"web3 development"
"blockchain explorer"
"zynga web3"
"how to be a crypto miner"
"uk crypto"
"npm web3"
"google blockchain"
"crypto hub"
"web3 index"
"metamask web3"
"golang web3"
"blockchain infrastructure"
"blockchain wallet app"
"nft blockchain"
"pip install web3"
"blockchain applications"
"crypto quant jobs"
"epic web3"
"visa blockchain"
"launchpad crypto"
"blockchain bitcoin"
"airdrop crypto"
"free web3 domain"
"xdc crypto"
"web3 games"
"learn blockchain"
"wallet blockchain"
"web3 house"
"paris blockchain week"
"blockchain wallet address"
"ramp crypto"
"blockchain research"
"ygg web3 games summit"
"crypto guy"
"scroll blockchain"
"web3 lawyer"
"crypto profit calculator"
"blockchain gaming crypto"
"web3 qa jobs"
"top web3 crypto"
"blockchain transaction id"
"blockchain investment"
"is ai web3"
"benefits of web3"
"yale blockchain club"
"blockchain unconfirmed transaction"
"blockchain tracker"
"web3 unity"
"blockchain operating system"
"is metaverse web3"
"crypto futures"
"blockchain zero knowledge"
"web3 quest platforms"
"qubic crypto"
"web3 jobs entry level"
"web3 industry"
"web3 or web3"
"web3 za bank"
"difference between web2 and web3"
"zoth web3"
"bitcoin blockchain"
"crypto prices"
"web3 jobs"
"learn web3"
"chia blockchain"
"web3 business"
"web3 or web 3.0"
"upcoming crypto coins"
"web3 real estate"
"web3 domains list"
"crypto jobs list"
"zksync blockchain"
"define blockchain"
"blockchain network list"
"web3 young talent binance"
"kava crypto"
"y combinator web3"
"web3 platforms"
"blockchain mining"
"crypto rug pull"
"adidas web3"
"decentralized blockchain"
"web3 vs web4"
"web3 operating system"
"crypto youtube channels"
"reiki web3"
"what is blockchain technology"
"web3 stocks"
"web3 logos"
"web3 marketplace"
"blockchain x istanbul"
"uses of blockchain technology"
"crypto prices today"
"web3 domains"
"web3 healthcare"
"jito crypto"
"crypto gram"
"polygon web3"
"crypto funk strain"
"coinbase web3 wallet"
"crypto documentary netflix"
"blockchain news today"
"blockchain key"
"blockchain nonce"
"maksud blockchain"
"crypto arbitrage"
"crypto university"
"crash crypto"
"web3 kol list"
"blockchain hackathons"
"binance web3 wallet"
"crypto oracles"
"bitcoin crypto"
"web3 zkp"
"matic crypto"
"blockchain healthcare"
"key features of blockchain"
"javascript web3"
"quantum computing and blockchain"
"polygon crypto"
"blockchain keywords"
"best web3 wallet"
"how does blockchain technology work"
"gmx crypto"
"web3 learning"
"crypto owner in jail"
"crypto"
"crypto investment calculator"
"blockchain sports"
"blockchain on cash app"
"web3 news"
"vue web3"
"web3 games list"
"paal crypto"
"blockchain gas fees"
"crypto for dummies"
"java blockchain"
"www.crypto.com login"
"web3 sites"
"best crypto exchange"
"gfal crypto"
"uphold crypto"
"blockchain hype"
"youngest crypto billionaire"
"next crypto to explode"
"mining in blockchain"
"yahoo finance crypto"
"web3 conferences"
"web3 education"
"vet crypto"
"riot blockchain stock forecast"
"crypto law"
"web3 grants"
"today crypto news"
"web3 tools"
"blockchain logo"
"web3 young talent program"
"xen crypto"
"crypto airdrops"
"crypto ledger"
"blockchain help"
"sei blockchain"
"discord web3"
"forbes web3"
"crypto strain"
"crypto tracker"
"blockchain jobs remote"
"ethers vs web3"
"what are web3 domains"
"orca crypto"
"amp crypto"
"crypto regulation"
"crypto daily crypto news trading"
"how much is crypto currency"
"crypto jon"
"vertu web3 phone"
"crypto x ai"
"web3 training"
"ethereum blockchain"
"qubic blockchain"
"web3 terms"
"crypto market news"
"ethereum blockchain explorer"
"kyc crypto"
"blockchain or block chain"
"castle age web3"
"blockchain headhunter"
"web3 explained"
"blockchain backer twitter"
"blockchain technology meaning"
"blockchain address"
"korea blockchain week"
"yarn add web3"
"layer 0 blockchain"
"upcoming web3 events"
"blockchain xkcd"
"web3 vs web2 vs web1"
"web3 website builder"
"icp crypto"
"day trading crypto"
"kucoin web3 wallet"
"web3 storage"
"blockchain wallet"
"jaxx liberty blockchain wallet"
"python web3"
"crypto staking"
"blockchain optimization"
"blockchain was built to minimize the use of"
"crypto x wattson"
"crypto portfolio tracker"
"nike web3"
"crypto price prediction"
"yellow web3"
"what is web3 technology"
"crypto news today"
"juno crypto"
"web3 firewall"
"crypto mining rig"
"blockchain for energy"
"google web3"
"yes blockchain"
"web3 zapier"
"sei crypto"
"udemy web3"
"kujira crypto"
"brics blockchain"
"list of web3 wallets"
"vyper web3"
"venom blockchain"
"hong kong web3 festival 2023"
"is coinbase wallet a web3 wallet"
"rndr crypto"
"pushd crypto"
"rally web3"
"hong kong web3 festival"
"javax.crypto.aeadbadtagexception tag mismatch"
"web3 operations jobs"
"zkp blockchain"
"web3 blockchain"
"crypto investment"
"web3 generation"
"blockchain games"
"next crypto to hit $1"

  
    
)

# Function to get a random general question
generate_random_general_question() {
    echo "${general_questions[$RANDOM % ${#general_questions[@]}]}"
}

# Function to handle the API request
send_request() {
    local message="$1"
    local api_key="$2"

    echo "📬 Sending Question: $message"

    json_data=$(cat <<EOF
{
    "messages": [
        {"role": "system", "content": "You are a helpful assistant."},
        {"role": "user", "content": "$message"}
    ]
}
EOF
    )

    response=$(curl -s -w "\n%{http_code}" -X POST "$API_URL" \
        -H "Authorization: Bearer $api_key" \
        -H "Accept: application/json" \
        -H "Content-Type: application/json" \
        -d "$json_data")

    http_status=$(echo "$response" | tail -n 1)
    body=$(echo "$response" | head -n -1)

    # Extract the 'content' from the JSON response using jq (Suppress errors)
    response_message=$(echo "$body" | jq -r '.choices[0].message.content' 2>/dev/null)

    if [[ "$http_status" -eq 200 ]]; then
        if [[ -z "$response_message" ]]; then
            echo "⚠️ Response content is empty!"
        else
            ((success_count++))  # Increment success count
            echo "✅ [SUCCESS] Response $success_count Received!"
            echo "📝 Question: $message"
            echo "💬 Response: $response_message"
        fi
    else
        echo "⚠️ [ERROR] API request failed | Status: $http_status | Retrying..."
        sleep 2
    fi
}

# Asking for API Key (loops until a valid key is provided)
while true; do
    echo -n "Enter your API Key: "
    read -r api_key

    if [ -z "$api_key" ]; then
        echo "❌ Error: API Key is required!"
        echo "🔄 Restarting the installer..."

        # Restart installer
        rm -rf ~/gaiainstaller.sh
        curl -O https://raw.githubusercontent.com/abhiag/Gaiatest/main/gaiainstaller.sh && chmod +x gaiainstaller.sh && ./gaiainstaller.sh 

        exit 1
    else
        break  # Exit loop if API key is provided
    fi
done

# Asking for duration
while true; do
    echo -n "⏳ How many hours do you want the bot to run? "
    read -r bot_hours

    if [[ "$bot_hours" =~ ^[0-9]+$ ]]; then
        max_duration=$((bot_hours * 3600))
        echo "🕒 The bot will run for $bot_hours hour(s) ($max_duration seconds)."
        break
    else
        echo "⚠️ Invalid input! Please enter a positive number."
    fi
done

# Hidden API URL (moved to the bottom)
API_URL="https://trump1.gaia.domains/v1/chat/completions"

# Display thread information
echo "✅ Using 1 thread..."
echo "⏳ Waiting 30 seconds before sending the first request..."
sleep 30

echo "🚀 Starting requests..."
start_time=$(date +%s)
success_count=2  # Initialize success counter

while true; do
    current_time=$(date +%s)
    elapsed=$((current_time - start_time))

    if [[ "$elapsed" -ge "$max_duration" ]]; then
        echo "🛑 Time limit reached ($bot_hours hours). Exiting..."
        echo "📊 Total successful responses: $success_count"
        exit 0
    fi

    random_message=$(generate_random_general_question)
    send_request "$random_message" "$api_key"
    sleep 3
done
