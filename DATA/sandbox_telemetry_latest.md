# sandbox_telemetry_parse — 2026-10-13 16:33:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1157524 lines=2995
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2263 |
| `chrome_profile_sample` | 724 |
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
| `chromeBrowserPssKb` | {'int': 2263} |
| `chromeGpuPssKb` | {'int': 2263} |
| `chromeOtherPssKb` | {'int': 2263} |
| `chromeProcesses` | {'int': 2263} |
| `chromeProfiles` | {'int': 2263} |
| `chromeRendererMaxPssKb` | {'int': 2263} |
| `chromeRendererPssKb` | {'int': 2263} |
| `chromeRenderers` | {'int': 2263} |
| `chromeTabs` | {'int': 2263} |
| `chromeTabsProbedProfiles` | {'int': 2263} |
| `chromeUtilityPssKb` | {'int': 2263} |
| `desktopPssKb` | {'int': 2263} |
| `hostPssKb` | {'int': 2263} |
| `kind` | {'str': 2263} |
| `memAvailableKb` | {'int': 2263} |
| `memTotalKb` | {'int': 2263} |
| `otherPssKb` | {'int': 2263} |
| `processes` | {'int': 2263} |
| `pssFallbackProcesses` | {'int': 2263} |

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
| `cpuMillicores` | {'int': 723} |
| `display` | {'int': 724} |
| `kind` | {'str': 724} |
| `processes` | {'int': 724} |
| `pssKb` | {'int': 724} |
| `rendererMaxPssKb` | {'int': 724} |
| `renderers` | {'int': 724} |
| `tabs` | {'int': 724} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
