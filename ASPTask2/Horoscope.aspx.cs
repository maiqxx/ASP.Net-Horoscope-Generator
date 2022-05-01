using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


public partial class Horoscope : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        contentPanel.Visible = false;
        zodiacTbl.Visible = false;
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {


        int day = Convert.ToInt32(dlDay.SelectedValue);

        if ((dlMonth.SelectedValue == "january") && (day >= 20 && day <= 31) || (dlMonth.SelectedValue == "february") && (day >= 1 && day <= 18)) 
        {
            //Aquarius
            var p = new HtmlGenericControl("p") { InnerText = "Hello, " + txtName.Text + "! Your zodiac sign is Aquarius!" + "\n" +
                "Despite the \"aqua\" in its name, Aquarius is actually the last air sign of the zodiac. " +
                "Innovative, progressive, and shamelessly revolutionary, Aquarius is represented by the water bearer, the mystical healer who bestows water, or life, upon the land. " +
                "Accordingly, Aquarius is the most humanitarian astrological sign. At the end of the day, Aquarius is dedicated to making the world a better place."
            };
            contentPanel.Controls.Add(p);

        } else if ((dlMonth.SelectedValue == "february") && (day >= 19 && day <= 29) || (dlMonth.SelectedValue == "march") && (day >= 1 && day <= 20))
        {
            //Pisces
            var p = new HtmlGenericControl("p") { InnerText = "Hey " + txtName.Text + "! Your zodiac sign is Pisces!" + "\n" +
                "If you looked up the word \"psychic\" in the dictionary, there would definitely be a picture of Pisces next to it. " +
                "Pisces is the most intuitive, sensitive, and empathetic sign of the entire zodiac — and that’s because it’s the last of the last. " +
                "Pisces has absorbed every lesson — the joys and the pain, the hopes and the fears — learned by all of the other signs. " +
                "It's symbolized by two fish swimming in opposite directions, representing the constant division of Pisces' attention between fantasy and reality."
            };
            contentPanel.Controls.Add(p);

        } else if((dlMonth.SelectedValue == "march") && (day >= 21 && day <= 31) || (dlMonth.SelectedValue == "april") && (day >= 1 && day <= 19))
        {
            //Aries
            var p = new HtmlGenericControl("p") { InnerText = "Hi there " + txtName.Text + "! Your zodiac sign is Aries. " + "\n" +
                "The first sign of the zodiac, Aries loves to be number one. Naturally, this dynamic fire sign is no stranger to competition. " +
                "Bold and ambitious, Aries dives headfirst into even the most challenging situations—and they'll make sure they always come out on top!"
            };
            contentPanel.Controls.Add(p);

        } else if((dlMonth.SelectedValue == "april")  && (day >= 20 && day <= 30) || (dlMonth.SelectedValue == "may") && (day >= 1 && day <= 20))
        {
            //Taurus
            var p = new HtmlGenericControl("p") { InnerText = "Hello " + txtName.Text + "! Your zodiac sign is Taurus! " + "\n" +
                "Taurus is an earth sign represented by the bull. " +
                "Like their celestial spirit animal, Taureans enjoy relaxing in serene, bucolic environments surrounded by soft sounds, soothing aromas, " +
                "and succulent flavors." };
            contentPanel.Controls.Add(p);

        } else if((dlMonth.SelectedValue == "may") && (day >= 21 && day <= 31) || (dlMonth.SelectedValue == "june") && (day >= 1 && day <= 20))
        {
            //Gemini
            var p = new HtmlGenericControl("p") { InnerText = "Oh hey, " + txtName.Text + "! Your zodiac sign is Gemini! " + "\n" +
                "Have you ever been so busy that you wished you could clone yourself just to get everything done? " +
                "That's the Gemini experience in a nutshell. Spontaneous, playful, and adorably erratic, Gemini is driven by its insatiable curiosity. " +
                "Appropriately symbolized by the celestial twins, this air sign was interested in so many pursuits that it had to double itself. "
            };
            contentPanel.Controls.Add(p);

        } else if((dlMonth.SelectedValue == "june") && (day >= 21 && day <= 30) || (dlMonth.SelectedValue == "july") && (day >= 1 && day <= 22))
        {
            //Cancer
            var p = new HtmlGenericControl("p") { InnerText = "Hi " + txtName.Text + "! Your zodiac sign is Cancer! " + "\n" +
                "Represented by the crab, Cancer seamlessly weaves between the sea and shore representing Cancer’s ability " +
                "to exist in both emotional and material realms. Cancers are highly intuitive and their psychic abilities manifest in tangible spaces. " +
                "But—just like the hard-shelled crustaceans—this water sign is willing to do whatever it takes to protect itself emotionally."
            };
            contentPanel.Controls.Add(p);

        } else if((dlMonth.SelectedValue == "july") && (day >= 23 && day <= 31) || (dlMonth.SelectedValue == "august") && (day >= 1 && day <= 22))
        {
            //Leo
            var p = new HtmlGenericControl("p") { InnerText = "Hello " + txtName.Text + "! Your zodiac sign is Leo! " + "\n" +
                "Roll out the red carpet because Leo has arrived. Passionate, loyal, and infamously dramatic, " +
                "Leo is represented by the lion and these spirited fire signs are the kings and queens of the celestial jungle. " +
                "They're delighted to embrace their royal status: Vivacious, theatrical, and fiery, Leos love to bask in the spotlight and celebrate…" +
                " well, themselves."
            };
            contentPanel.Controls.Add(p);
        
        } else if((dlMonth.SelectedValue == "august") && (day >= 23 && day <= 31) || (dlMonth.SelectedValue == "september") && (day >= 1 && day <= 22))
        {
            //Virgo
            var p = new HtmlGenericControl("p") { InnerText = "Oh hey, " + txtName.Text + "! Your zodiac sign is Virgo! " + "\n" +
                "You know the expression, \"if you want something done, give it to a busy person?\" " +
                "Well, that definitely is the Virgo anthem. Virgos are logical, practical, and systematic in their approach to life. " +
                "Virgo is an earth sign historically represented by the goddess of wheat and agriculture, " +
                "an association that speaks to Virgo's deep-rooted presence in the material world. " +
                "This earth sign is a perfectionist at heart and isn’t afraid to improve skills through diligent and consistent practice." };
            contentPanel.Controls.Add(p);

        } else if ((dlMonth.SelectedValue == "september") && (day >= 23 && day <= 30) || (dlMonth.SelectedValue == "october") && (day >= 1 && day <= 22))
        {
            //Libra
            var p = new HtmlGenericControl("p") { InnerText = "Hey there " + txtName.Text + "! Your zodiac sign is Libra! " + "\n" +
                "Balance, harmony, and justice define Libra energy. As a cardinal air sign, Libra is represented by the scales " +
                "(interestingly, the only inanimate object of the zodiac), an association that reflects Libra's fixation on establishing equilibrium. " +
                "Libra is obsessed with symmetry and strives to create equilibrium in all areas of life — especially when it comes to matters of the heart. "
            };
            contentPanel.Controls.Add(p);
        
        } else if((dlMonth.SelectedValue == "october") && (day >= 23 && day <= 31) || (dlMonth.SelectedValue == "november") && (day >= 1 && day <= 21))
        {
            //Scorpio
            var p = new HtmlGenericControl("p") { InnerText = "Hi " + txtName.Text + "! Your zodiac sign is Scorpio! " + "\n" +
                "Elusive and mysterious, Scorpio is one of the most misunderstood signs of the zodiac. " +
                "Scorpio is a water sign that uses emotional energy as fuel, cultivating powerful wisdom through both the physical and unseen realms. " +
                "In fact, Scorpio derives its extraordinary courage from its psychic abilities, which is what makes this sign one of the most complicated, " +
                "dynamic signs of the zodiac."
            };
            contentPanel.Controls.Add(p);

        } else if((dlMonth.SelectedValue == "november") && (day >= 22 && day <= 30) || (dlMonth.SelectedValue == "december") && (day >= 1 && day <= 21))
        {
            //Sagittarius
            var p = new HtmlGenericControl("p") { InnerText = "Hello " + txtName.Text + "! Your zodiac sign is Sagittarius! " + "\n" +
                "Oh, the places Sagittarius goes! But… actually. This fire sign knows no bounds. " +
                "Represented by the archer, Sagittarians are always on a quest for knowledge. " +
                "The last fire sign of the zodiac, Sagittarius launches its many pursuits like blazing arrows, " +
                "chasing after geographical, intellectual, and spiritual adventures. "
            };
            contentPanel.Controls.Add(p);

        } else if ((dlMonth.SelectedValue == "december") && (day >= 22 && day <= 31) || (dlMonth.SelectedValue == "january") && (day >= 1 && day <= 19))
        {
            //Capricorn 
            var p = new HtmlGenericControl("p") { InnerText = "Hey " + txtName.Text + "! Your zodiac sign is Capricorn! " + "\n" +
                "What is the most valuable resource? For Capricorn, the answer is clear: Time. " +
                "Capricorn is climbing the mountain straight to the top and knows that patience, perseverance, " +
                "and dedication is the only way to scale. The last earth sign of the zodiac, Capricorn, is represented by the sea-goat, " +
                "a mythological creature with the body of a goat and the tail of a fish. Accordingly, " +
                "Capricorns are skilled at navigating both the material and emotional realms."
            };
            contentPanel.Controls.Add(p);

        }
        else
        {
            Response.Write("<script>alert('Hmm, something doesn\'t seem right...')</script>");
        }

        contentPanel.Visible = true;
        zodiacTbl.Visible = true;


    }
}