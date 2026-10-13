# sandbox_telemetry_parse — 2026-10-13 10:51:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1025408 lines=2579
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2055 |
| `chrome_profile_sample` | 516 |
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
| `chromeBrowserPssKb` | {'int': 2055} |
| `chromeGpuPssKb` | {'int': 2055} |
| `chromeOtherPssKb` | {'int': 2055} |
| `chromeProcesses` | {'int': 2055} |
| `chromeProfiles` | {'int': 2055} |
| `chromeRendererMaxPssKb` | {'int': 2055} |
| `chromeRendererPssKb` | {'int': 2055} |
| `chromeRenderers` | {'int': 2055} |
| `chromeTabs` | {'int': 2055} |
| `chromeTabsProbedProfiles` | {'int': 2055} |
| `chromeUtilityPssKb` | {'int': 2055} |
| `desktopPssKb` | {'int': 2055} |
| `hostPssKb` | {'int': 2055} |
| `kind` | {'str': 2055} |
| `memAvailableKb` | {'int': 2055} |
| `memTotalKb` | {'int': 2055} |
| `otherPssKb` | {'int': 2055} |
| `processes` | {'int': 2055} |
| `pssFallbackProcesses` | {'int': 2055} |

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
| `cpuMillicores` | {'int': 515} |
| `display` | {'int': 516} |
| `kind` | {'str': 516} |
| `processes` | {'int': 516} |
| `pssKb` | {'int': 516} |
| `rendererMaxPssKb` | {'int': 516} |
| `renderers` | {'int': 516} |
| `tabs` | {'int': 516} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
