# sandbox_telemetry_parse — 2026-10-13 12:01:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1061109 lines=2693
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2112 |
| `chrome_profile_sample` | 573 |
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
| `chromeBrowserPssKb` | {'int': 2112} |
| `chromeGpuPssKb` | {'int': 2112} |
| `chromeOtherPssKb` | {'int': 2112} |
| `chromeProcesses` | {'int': 2112} |
| `chromeProfiles` | {'int': 2112} |
| `chromeRendererMaxPssKb` | {'int': 2112} |
| `chromeRendererPssKb` | {'int': 2112} |
| `chromeRenderers` | {'int': 2112} |
| `chromeTabs` | {'int': 2112} |
| `chromeTabsProbedProfiles` | {'int': 2112} |
| `chromeUtilityPssKb` | {'int': 2112} |
| `desktopPssKb` | {'int': 2112} |
| `hostPssKb` | {'int': 2112} |
| `kind` | {'str': 2112} |
| `memAvailableKb` | {'int': 2112} |
| `memTotalKb` | {'int': 2112} |
| `otherPssKb` | {'int': 2112} |
| `processes` | {'int': 2112} |
| `pssFallbackProcesses` | {'int': 2112} |

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
| `cpuMillicores` | {'int': 572} |
| `display` | {'int': 573} |
| `kind` | {'str': 573} |
| `processes` | {'int': 573} |
| `pssKb` | {'int': 573} |
| `rendererMaxPssKb` | {'int': 573} |
| `renderers` | {'int': 573} |
| `tabs` | {'int': 573} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
