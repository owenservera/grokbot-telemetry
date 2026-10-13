# sandbox_telemetry_parse — 2026-10-13 05:57:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=868860 lines=2089
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1810 |
| `chrome_profile_sample` | 271 |
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
| `chromeBrowserPssKb` | {'int': 1810} |
| `chromeGpuPssKb` | {'int': 1810} |
| `chromeOtherPssKb` | {'int': 1810} |
| `chromeProcesses` | {'int': 1810} |
| `chromeProfiles` | {'int': 1810} |
| `chromeRendererMaxPssKb` | {'int': 1810} |
| `chromeRendererPssKb` | {'int': 1810} |
| `chromeRenderers` | {'int': 1810} |
| `chromeTabs` | {'int': 1810} |
| `chromeTabsProbedProfiles` | {'int': 1810} |
| `chromeUtilityPssKb` | {'int': 1810} |
| `desktopPssKb` | {'int': 1810} |
| `hostPssKb` | {'int': 1810} |
| `kind` | {'str': 1810} |
| `memAvailableKb` | {'int': 1810} |
| `memTotalKb` | {'int': 1810} |
| `otherPssKb` | {'int': 1810} |
| `processes` | {'int': 1810} |
| `pssFallbackProcesses` | {'int': 1810} |

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
| `cpuMillicores` | {'int': 270} |
| `display` | {'int': 271} |
| `kind` | {'str': 271} |
| `processes` | {'int': 271} |
| `pssKb` | {'int': 271} |
| `rendererMaxPssKb` | {'int': 271} |
| `renderers` | {'int': 271} |
| `tabs` | {'int': 271} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
