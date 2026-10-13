# sandbox_telemetry_parse — 2026-10-13 09:25:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=981490 lines=2443
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1987 |
| `chrome_profile_sample` | 448 |
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
| `chromeBrowserPssKb` | {'int': 1987} |
| `chromeGpuPssKb` | {'int': 1987} |
| `chromeOtherPssKb` | {'int': 1987} |
| `chromeProcesses` | {'int': 1987} |
| `chromeProfiles` | {'int': 1987} |
| `chromeRendererMaxPssKb` | {'int': 1987} |
| `chromeRendererPssKb` | {'int': 1987} |
| `chromeRenderers` | {'int': 1987} |
| `chromeTabs` | {'int': 1987} |
| `chromeTabsProbedProfiles` | {'int': 1987} |
| `chromeUtilityPssKb` | {'int': 1987} |
| `desktopPssKb` | {'int': 1987} |
| `hostPssKb` | {'int': 1987} |
| `kind` | {'str': 1987} |
| `memAvailableKb` | {'int': 1987} |
| `memTotalKb` | {'int': 1987} |
| `otherPssKb` | {'int': 1987} |
| `processes` | {'int': 1987} |
| `pssFallbackProcesses` | {'int': 1987} |

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
| `cpuMillicores` | {'int': 447} |
| `display` | {'int': 448} |
| `kind` | {'str': 448} |
| `processes` | {'int': 448} |
| `pssKb` | {'int': 448} |
| `rendererMaxPssKb` | {'int': 448} |
| `renderers` | {'int': 448} |
| `tabs` | {'int': 448} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
