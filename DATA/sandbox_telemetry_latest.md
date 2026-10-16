# sandbox_telemetry_parse — 2026-10-16 18:14:27 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=707427 lines=2644
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1750 |
| `memory_sample` | 885 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 885} |
| `chromeGpuPssKb` | {'int': 885} |
| `chromeOtherPssKb` | {'int': 885} |
| `chromeProcesses` | {'int': 885} |
| `chromeProfiles` | {'int': 885} |
| `chromeRendererMaxPssKb` | {'int': 885} |
| `chromeRendererPssKb` | {'int': 885} |
| `chromeRenderers` | {'int': 885} |
| `chromeTabs` | {'int': 885} |
| `chromeTabsProbedProfiles` | {'int': 885} |
| `chromeUtilityPssKb` | {'int': 885} |
| `desktopPssKb` | {'int': 885} |
| `hostPssKb` | {'int': 885} |
| `kind` | {'str': 885} |
| `memAvailableKb` | {'int': 885} |
| `memTotalKb` | {'int': 885} |
| `otherPssKb` | {'int': 885} |
| `processes` | {'int': 885} |
| `pssFallbackProcesses` | {'int': 885} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1747} |
| `display` | {'int': 1750} |
| `kind` | {'str': 1750} |
| `processes` | {'int': 1750} |
| `pssKb` | {'int': 1750} |
| `rendererMaxPssKb` | {'int': 1750} |
| `renderers` | {'int': 1750} |
| `tabs` | {'int': 1749} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
