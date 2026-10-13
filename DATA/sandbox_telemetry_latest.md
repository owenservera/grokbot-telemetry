# sandbox_telemetry_parse — 2026-10-13 17:08:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1166464 lines=3023
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2277 |
| `chrome_profile_sample` | 738 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2277} |
| `chromeGpuPssKb` | {'int': 2277} |
| `chromeOtherPssKb` | {'int': 2277} |
| `chromeProcesses` | {'int': 2277} |
| `chromeProfiles` | {'int': 2277} |
| `chromeRendererMaxPssKb` | {'int': 2277} |
| `chromeRendererPssKb` | {'int': 2277} |
| `chromeRenderers` | {'int': 2277} |
| `chromeTabs` | {'int': 2277} |
| `chromeTabsProbedProfiles` | {'int': 2277} |
| `chromeUtilityPssKb` | {'int': 2277} |
| `desktopPssKb` | {'int': 2277} |
| `hostPssKb` | {'int': 2277} |
| `kind` | {'str': 2277} |
| `memAvailableKb` | {'int': 2277} |
| `memTotalKb` | {'int': 2277} |
| `otherPssKb` | {'int': 2277} |
| `processes` | {'int': 2277} |
| `pssFallbackProcesses` | {'int': 2277} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 737} |
| `display` | {'int': 738} |
| `kind` | {'str': 738} |
| `processes` | {'int': 738} |
| `pssKb` | {'int': 738} |
| `rendererMaxPssKb` | {'int': 738} |
| `renderers` | {'int': 738} |
| `tabs` | {'int': 738} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
