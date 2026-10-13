# sandbox_telemetry_parse — 2026-10-13 11:01:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1029225 lines=2593
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2062 |
| `chrome_profile_sample` | 523 |
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
| `chromeBrowserPssKb` | {'int': 2062} |
| `chromeGpuPssKb` | {'int': 2062} |
| `chromeOtherPssKb` | {'int': 2062} |
| `chromeProcesses` | {'int': 2062} |
| `chromeProfiles` | {'int': 2062} |
| `chromeRendererMaxPssKb` | {'int': 2062} |
| `chromeRendererPssKb` | {'int': 2062} |
| `chromeRenderers` | {'int': 2062} |
| `chromeTabs` | {'int': 2062} |
| `chromeTabsProbedProfiles` | {'int': 2062} |
| `chromeUtilityPssKb` | {'int': 2062} |
| `desktopPssKb` | {'int': 2062} |
| `hostPssKb` | {'int': 2062} |
| `kind` | {'str': 2062} |
| `memAvailableKb` | {'int': 2062} |
| `memTotalKb` | {'int': 2062} |
| `otherPssKb` | {'int': 2062} |
| `processes` | {'int': 2062} |
| `pssFallbackProcesses` | {'int': 2062} |

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
| `cpuMillicores` | {'int': 522} |
| `display` | {'int': 523} |
| `kind` | {'str': 523} |
| `processes` | {'int': 523} |
| `pssKb` | {'int': 523} |
| `rendererMaxPssKb` | {'int': 523} |
| `renderers` | {'int': 523} |
| `tabs` | {'int': 523} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
