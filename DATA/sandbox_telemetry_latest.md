# sandbox_telemetry_parse — 2026-10-13 08:59:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=966857 lines=2397
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1964 |
| `chrome_profile_sample` | 425 |
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
| `chromeBrowserPssKb` | {'int': 1964} |
| `chromeGpuPssKb` | {'int': 1964} |
| `chromeOtherPssKb` | {'int': 1964} |
| `chromeProcesses` | {'int': 1964} |
| `chromeProfiles` | {'int': 1964} |
| `chromeRendererMaxPssKb` | {'int': 1964} |
| `chromeRendererPssKb` | {'int': 1964} |
| `chromeRenderers` | {'int': 1964} |
| `chromeTabs` | {'int': 1964} |
| `chromeTabsProbedProfiles` | {'int': 1964} |
| `chromeUtilityPssKb` | {'int': 1964} |
| `desktopPssKb` | {'int': 1964} |
| `hostPssKb` | {'int': 1964} |
| `kind` | {'str': 1964} |
| `memAvailableKb` | {'int': 1964} |
| `memTotalKb` | {'int': 1964} |
| `otherPssKb` | {'int': 1964} |
| `processes` | {'int': 1964} |
| `pssFallbackProcesses` | {'int': 1964} |

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
| `cpuMillicores` | {'int': 424} |
| `display` | {'int': 425} |
| `kind` | {'str': 425} |
| `processes` | {'int': 425} |
| `pssKb` | {'int': 425} |
| `rendererMaxPssKb` | {'int': 425} |
| `renderers` | {'int': 425} |
| `tabs` | {'int': 425} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
