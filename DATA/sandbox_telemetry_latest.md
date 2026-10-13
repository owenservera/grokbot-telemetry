# sandbox_telemetry_parse — 2026-10-13 10:21:55 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1009494 lines=2531
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2031 |
| `chrome_profile_sample` | 492 |
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
| `chromeBrowserPssKb` | {'int': 2031} |
| `chromeGpuPssKb` | {'int': 2031} |
| `chromeOtherPssKb` | {'int': 2031} |
| `chromeProcesses` | {'int': 2031} |
| `chromeProfiles` | {'int': 2031} |
| `chromeRendererMaxPssKb` | {'int': 2031} |
| `chromeRendererPssKb` | {'int': 2031} |
| `chromeRenderers` | {'int': 2031} |
| `chromeTabs` | {'int': 2031} |
| `chromeTabsProbedProfiles` | {'int': 2031} |
| `chromeUtilityPssKb` | {'int': 2031} |
| `desktopPssKb` | {'int': 2031} |
| `hostPssKb` | {'int': 2031} |
| `kind` | {'str': 2031} |
| `memAvailableKb` | {'int': 2031} |
| `memTotalKb` | {'int': 2031} |
| `otherPssKb` | {'int': 2031} |
| `processes` | {'int': 2031} |
| `pssFallbackProcesses` | {'int': 2031} |

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
| `cpuMillicores` | {'int': 491} |
| `display` | {'int': 492} |
| `kind` | {'str': 492} |
| `processes` | {'int': 492} |
| `pssKb` | {'int': 492} |
| `rendererMaxPssKb` | {'int': 492} |
| `renderers` | {'int': 492} |
| `tabs` | {'int': 492} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
